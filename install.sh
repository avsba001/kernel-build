#!/usr/bin/env bash
set -euo pipefail

REPO="avsba001/kernel-build"
API_BASE="https://api.github.com/repos/${REPO}/releases"
MAX_PAGES=20

CPU_INFO="${CPU_INFO:-/proc/cpuinfo}"

cpu_profile() {
  python3 - "$CPU_INFO" <<'PY'
import re
import sys

path = sys.argv[1]
try:
    text = open(path, encoding="utf-8").read()
except OSError as exc:
    print(f"无法读取 CPU 信息 {path}: {exc}", file=sys.stderr)
    sys.exit(1)

processors = re.split(r"\n\s*\n", text.strip())
vendors = set()
flags_per_cpu = []
for processor in processors:
    vendor = re.search(r"^vendor_id\s*:\s*(\S+)", processor, re.M)
    flags = re.search(r"^(?:flags|Features)\s*:\s*(.+)$", processor, re.M)
    if not re.search(r"^processor\s*:", processor, re.M):
        continue
    if not vendor or not flags:
        print("部分 CPU 核心缺少厂商或指令集信息，停止检测。", file=sys.stderr)
        sys.exit(2)
    vendors.add(vendor.group(1))
    cpu_flags = set(flags.group(1).lower().split())
    if "lzcnt" in cpu_flags:
        cpu_flags.add("abm")
    flags_per_cpu.append(cpu_flags)

if len(vendors) != 1:
    print(f"无法确定唯一 CPU 厂商（检测到：{', '.join(sorted(vendors)) or '未知'}）。", file=sys.stderr)
    sys.exit(2)
vendor_id = next(iter(vendors))
if vendor_id == "GenuineIntel":
    vendor = "intel"
elif vendor_id == "AuthenticAMD":
    vendor = "amd"
else:
    print(f"暂不支持的 CPU 厂商：{vendor_id}", file=sys.stderr)
    sys.exit(2)

if not flags_per_cpu:
    print("未能读取 CPU 指令集 flags。", file=sys.stderr)
    sys.exit(2)
common_flags = set.intersection(*flags_per_cpu)
required_v2 = {"lm", "fpu", "cx8", "cmov", "mmx", "fxsr", "sse", "sse2",
               "cx16", "lahf_lm", "popcnt", "pni", "ssse3", "sse4_1", "sse4_2"}
required_v3 = required_v2 | {
    "avx", "avx2", "bmi1", "bmi2", "f16c", "fma", "movbe", "xsave"
}
missing_v2 = sorted(required_v2 - common_flags)
if missing_v2:
    print("CPU 不满足 x86-64-v2，缺少：" + ", ".join(missing_v2), file=sys.stderr)
    sys.exit(3)
has_lzcnt = "lzcnt" in common_flags or "abm" in common_flags
level = "v3" if required_v3 <= common_flags and has_lzcnt else "v2"
print(f"{level}-{vendor}")
PY
}

resolve_release_assets() {
  local series="$1"
  local profile="$2"

  python3 - "$series" "$profile" "$API_BASE" "$MAX_PAGES" <<'PY'
import json
import os
import re
import sys
import urllib.request

series, profile, api_base, max_pages = sys.argv[1], sys.argv[2], sys.argv[3], int(sys.argv[4])
if series != "latest" and not re.fullmatch(r"\d+\.\d+", series):
    sys.exit(2)

headers = {"Accept": "application/vnd.github+json", "User-Agent": "xanmod-installer"}
releases = []
for page in range(1, max_pages + 1):
    req = urllib.request.Request(f"{api_base}?per_page=100&page={page}", headers=headers)
    with urllib.request.urlopen(req, timeout=20) as resp:
        page_data = json.load(resp)
    if not page_data:
        break
    releases.extend(page_data)
    if len(page_data) < 100:
        break

asset_pattern = re.compile(
    r"^linux-(?P<kind>headers|image)-(?P<kver>\d+\.\d+\.\d+)"
    r"(?P<suffix>[^_]*)_.*_amd64\.deb$"
)
matches = []
for release in releases:
    release_id = release.get("id")
    tag = release.get("tag_name", "")
    if release.get("draft") or release.get("prerelease") or f"-{profile}-" not in tag:
        continue
    publish_time = release.get("published_at") or release.get("created_at") or ""
    for asset in release.get("assets", []):
        url = asset.get("browser_download_url", "")
        fname = asset.get("name") or os.path.basename(url)
        match = asset_pattern.match(fname)
        if not match or not url.endswith(".deb"):
            continue
        suffix = match.group("suffix")
        if not re.search(r"-cloud-" + re.escape(profile) + r"(?:-|$)", suffix):
            continue
        isa = re.search(r"-x64v([23])(?:-|$)", suffix)
        if isa and f"v{isa.group(1)}" != profile.split("-")[0]:
            continue
        kver = match.group("kver")
        major, minor = map(int, kver.split(".")[:2])
        if series == "latest":
            if major < 6 or (major == 6 and minor < 12):
                continue
        elif not kver.startswith(series + "."):
            continue
        matches.append((tuple(map(int, kver.split("."))), kver, publish_time, release_id, fname, url))

if not matches:
    sys.exit(2)
groups = {}
for item in matches:
    groups.setdefault(item[:4], []).append(item)
complete = []
for key, items in groups.items():
    images = {item[4][len("linux-image-"):] for item in items if item[4].startswith("linux-image-")}
    headers = {item[4][len("linux-headers-"):] for item in items if item[4].startswith("linux-headers-")}
    paired = images & headers
    if paired:
        complete.append((key, [item for item in items if re.sub(r"^linux-(?:image|headers)-", "", item[4]) in paired]))
if not complete:
    print("没有同时包含匹配 image 和 headers 的完整发布。", file=sys.stderr)
    sys.exit(2)
key, items = max(complete, key=lambda group: (group[0][0], group[0][2]))
best = items[0]
assets = sorted({(item[4], item[5]) for item in items})
print(best[1])
for name, url in assets:
    print(f"{name}\t{url}")
PY
}

main() {
  local profile series resolved status answer latest_kernel tmpdir

  for command in python3 curl dpkg uname; do
    command -v "$command" >/dev/null 2>&1 || { echo "缺少依赖：$command" >&2; return 1; }
  done
  if [[ "$(uname -s)" != Linux || "$(uname -m)" != x86_64 || "$(dpkg --print-architecture)" != amd64 ]]; then
    echo "仅支持 x86-64 Linux 上的 amd64 Debian/Ubuntu 系统。" >&2
    return 1
  fi
  echo "正在检测 CPU 指令集与厂商..."
  set +e
  profile="$(cpu_profile)"
  status=$?
  set -e
  if (( status != 0 )); then
    echo "CPU 检测失败，停止安装。" >&2
    exit "$status"
  fi
  echo "检测结果：${profile}"
  echo "v3 优先；若 CPU 不满足 v3，将使用 v2。"
  echo

  read -r -p "选择内核系列 [latest/6.12/6.18/7.2 等，默认 latest]: " series || { echo "未收到输入，已取消。"; return 0; }
  series="${series:-latest}"
  if [[ "$series" != latest && ! "$series" =~ ^(6\.(12|18|19|[2-9][0-9]+)|7\.[0-9]+)$ ]]; then
    echo "不支持的内核系列：$series" >&2
    exit 2
  fi

  echo "正在查找 ${series} 的最新 ${profile} 内核..."
  set +e
  resolved="$(resolve_release_assets "$series" "$profile")"
  status=$?
  set -e
  if (( status != 0 )); then
    echo "未找到 ${series} 系列对应 ${profile} 的内核软件包。" >&2
    exit 1
  fi

  mapfile -t lines <<<"$resolved"
  latest_kernel="${lines[0]}"
  local deb_assets=()
  for line in "${lines[@]:1}"; do
    deb_assets+=("${line%%$'\t'*}")
  done

  echo
  echo "匹配的内核：XanMod ${latest_kernel} (${profile})"
  printf '将下载的软件包：\n'
  printf '  %s\n' "${deb_assets[@]}"
  echo
  read -r -p "确认下载并安装此内核？[y/N] " answer || { echo "未收到确认，已取消。"; return 0; }
  case "$answer" in
    y|Y|yes|YES|Yes) ;;
    *) echo "已取消，未下载或安装任何文件。"; exit 0 ;;
  esac

  if (( EUID != 0 )); then
    command -v sudo >/dev/null 2>&1 || { echo "安装需要 root 权限或 sudo。" >&2; return 1; }
    sudo -v || return 1
  fi
  tmpdir="$(mktemp -d)"
  trap "rm -rf -- $(printf '%q' "$tmpdir")" EXIT
  cd "$tmpdir"
  for line in "${lines[@]:1}"; do
    local name="${line%%$'\t'*}"
    local url="${line#*$'\t'}"
    echo "下载：$name"
    curl -fL --retry 5 --retry-delay 2 --retry-all-errors -o "$name" "$url"
  done

  echo "安装内核软件包..."
  if (( EUID == 0 )); then
    dpkg -i ./*.deb
  else
    sudo dpkg -i ./*.deb
  fi
  echo "安装完成。建议重启系统以加载新内核。"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
