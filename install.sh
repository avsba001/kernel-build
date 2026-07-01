#!/usr/bin/env bash
set -euo pipefail

REPO="avsba001/kernel-build"
API_BASE="https://api.github.com/repos/${REPO}/releases"
MAX_PAGES=20

resolve_release_assets() {
  local series="$1"

  python3 - "$series" "$API_BASE" "$MAX_PAGES" <<'PY'
import json
import os
import re
import sys
import urllib.request

series = sys.argv[1]
api_base = sys.argv[2]
max_pages = int(sys.argv[3])

headers = {
    "Accept": "application/vnd.github+json",
    "User-Agent": "xanmod-installer",
}

releases = []
for page in range(1, max_pages + 1):
    url = f"{api_base}?per_page=100&page={page}"
    req = urllib.request.Request(url, headers=headers)
    with urllib.request.urlopen(req, timeout=20) as resp:
        page_data = json.load(resp)

    if not page_data:
        break

    releases.extend(page_data)

    if len(page_data) < 100:
        break

asset_pattern = re.compile(
    r"^linux-(?:headers|image|modules|libc-dev)-(?P<kver>\d+\.\d+\.\d+)-.*\.deb$"
)

matches = []

for release in releases:
    release_id = release.get("id")
    tag = release.get("tag_name", "")
    publish_time = release.get("published_at") or release.get("created_at") or ""

    for asset in release.get("assets", []):
        url = asset.get("browser_download_url", "")
        if not url.endswith(".deb"):
            continue

        fname = asset.get("name") or os.path.basename(url)

        m = asset_pattern.match(fname)
        if not m:
            continue

        kver = m.group("kver")

        if not kver.startswith(series + "."):
            continue

        kver_key = tuple(int(x) for x in kver.split("."))

        matches.append(
            (kver_key, kver, publish_time, release_id, tag, url)
        )

if not matches:
    sys.exit(2)

best_key, best_kver, _, best_release_id, _, _ = sorted(
    matches,
    key=lambda x: (x[0], x[2])
)[-1]

deb_urls = sorted({
    u
    for key, kver, _, release_id, _, u in matches
    if key == best_key
    and kver == best_kver
    and release_id == best_release_id
})

if not deb_urls:
    sys.exit(3)

print(best_kver)
for u in deb_urls:
    print(u)
PY
}

main() {
  echo "请选择要安装的 XanMod 内核系列："

  PS3="输入序号 (1-4): "

  select series in \
      "6.12" \
      "6.18" \
      "7.0" \
      "7.1"
  do
    case "${series:-}" in
      6.12|6.18|7.0|7.1)
        break
        ;;
      *)
        echo "无效选择，请重试。"
        ;;
    esac
  done

  echo
  echo "正在获取 ${REPO} Releases（分页查询）..."

  set +e
  resolved="$(resolve_release_assets "$series")"
  status=$?
  set -e

  case "$status" in
    0)
      ;;
    2)
      echo "未找到 ${series} 系列可用的内核 .deb 资产，请检查 Releases 页面。" >&2
      exit 1
      ;;
    3)
      echo "找到 ${series} 最新版本，但未包含 .deb 安装包。" >&2
      exit 1
      ;;
    *)
      echo "解析 Releases 数据失败。" >&2
      exit 1
      ;;
  esac

  mapfile -t lines <<<"$resolved"

  latest_kernel="${lines[0]}"
  deb_urls=("${lines[@]:1}")

  echo
  echo "已选择系列: ${series}"
  echo "将安装最新内核版本: ${latest_kernel}"
  echo

  tmpdir="$(mktemp -d)"
  trap 'rm -rf "$tmpdir"' EXIT

  cd "$tmpdir"

  for url in "${deb_urls[@]}"; do
    echo "下载: $url"
    curl -fL \
      --retry 5 \
      --retry-delay 2 \
      --retry-all-errors \
      -O "$url"
  done

  echo
  echo "安装内核包..."
  sudo dpkg -i ./*.deb

  echo
  echo "安装完成。"
  echo "建议重启系统以加载新内核。"
}

main "$@"