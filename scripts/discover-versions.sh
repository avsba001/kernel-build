#!/usr/bin/env bash
set -euo pipefail

repo="${XANMOD_REPO:-https://gitlab.com/xanmod/linux.git}"
branches="$(git ls-remote --heads "$repo" | awk '{sub("refs/heads/", "", $2); print $2}' | grep -E '^(6\.(18|19|[2-9][0-9]+)|7\.[0-9]+)$' | sort -Vu)"

if [[ -z "$branches" ]]; then
  echo "No supported XanMod branches found" >&2
  exit 1
fi

for version in $branches; do
  major="${version%%.*}"
  if [[ ! -f "config/${major}.x/config.sh" ]]; then
    echo "Missing config/${major}.x/config.sh for XanMod ${version}" >&2
    exit 1
  fi
done

printf '%s\n' "$branches" | jq -Rsc 'split("\n") | map(select(length > 0))'
