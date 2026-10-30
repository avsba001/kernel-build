#!/usr/bin/env bash
set -euo pipefail

REPO="avsba001/kernel-build"
API_BASE="https://api.github.com/repos/${REPO}/releases"
MAX_PAGES=20

resolve_release_assets() {
  local selection="$1"

  python3 - "$selection" "$API_BASE" "$MAX_PAGES" <<'PY'
import json
import os
import re
import sys
import urllib.request

selection, api_base, max_pages = sys.argv[1], sys.argv[2], int(sys.argv[3])
match = re.fullmatch(r"(?P<series>latest|\d+\.\d+)-(?P<profile>v[23]-(?:intel|amd))", selection)
if not match:
    sys.exit(2)
series = match.group("series")
profile = match.group("profile")
is_latest = series == "latest"
if is_latest:
    series = ""

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
    r"^linux-(?:headers|image|modules|libc-dev)-(?P<kver>\d+\.\d+\.\d+)-cloud-(?P<profile>v[23]-(?:intel|amd)).*\.deb$"
)
matches = []
for release in releases:
    release_id = release.get("id")
    publish_time = release.get("published_at") or release.get("created_at") or ""
    for asset in release.get("assets", []):
        url = asset.get("browser_download_url", "")
        fname = asset.get("name") or os.path.basename(url)
        m = asset_pattern.match(fname)
        if not m or m.group("profile") != profile or not url.endswith(".deb"):
            continue
        kver = m.group("kver")
        if is_latest:
            major, minor = map(int, kver.split(".")[:2])
            if major < 6 or (major == 6 and minor < 18):
                continue
        elif not kver.startswith(series + "."):
            continue
        matches.append((tuple(map(int, kver.split("."))), kver, publish_time, release_id, url))

if not matches:
    sys.exit(2)
best = sorted(matches, key=lambda item: (item[0], item[2]))[-1]
urls = sorted({item[4] for item in matches if item[:4] == best[:4]})
print(best[1])
print("\n".join(urls))
PY
}

main() {
  echo "请选择要安装的 XanMod 内核配置："
  PS3="输入序号: "
  select selection in \
    "6.18-v2-intel" "6.18-v2-amd" "6.18-v3-intel" "6.18-v3-amd" \
    "7.0-v2-intel" "7.0-v2-amd" "7.0-v3-intel" "7.0-v3-amd" \
    "7.1-v2-intel" "7.1-v2-amd" "7.1-v3-intel" "7.1-v3-amd" \
    "7.2-v2-intel" "7.2-v2-amd" "7.2-v3-intel" "7.2-v3-amd" \
    "latest-v2-intel" "latest-v2-amd" "latest-v3-intel" "latest-v3-amd"
  do
    case "${selection:-}" in
      latest-v[23]-intel|latest-v[23]-amd|[67].*-v[23]-intel|[67].*-v[23]-amd) break ;;
      *) echo "无效选择，请重试。" ;;
    esac
  done

  echo "正在查询 ${selection} 对应的 Releases..."
  local resolved status
  set +e
  resolved="$(resolve_release_assets "$selection")"
  status=$?
  set -e
  if (( status != 0 )); then
    echo "未找到 ${selection} 对应的内核 .deb 资产。" >&2
    exit 1
  fi

  mapfile -t lines <<<"$resolved"
  echo "将安装内核版本: ${lines[0]} (${selection})"
  local tmpdir
  tmpdir="$(mktemp -d)"
  trap 'rm -rf "$tmpdir"' EXIT
  cd "$tmpdir"
  for url in "${lines[@]:1}"; do
    echo "下载: $url"
    curl -fL --retry 5 --retry-delay 2 --retry-all-errors -O "$url"
  done
  sudo dpkg -i ./*.deb
  echo "安装完成。建议重启系统以加载新内核。"
}

main "$@"
