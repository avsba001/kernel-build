#!/usr/bin/env bash
set -euo pipefail

repo="${XANMOD_REPO:-https://gitlab.com/xanmod/linux.git}"
# Monthly builds intentionally use this fixed list. Do not auto-discover every
# new XanMod branch; add a version here only after its config is reviewed.
supported_versions=(6.12 6.18 7.0 7.1 7.2)

branches=()
for version in "${supported_versions[@]}"; do
  if ! git ls-remote --exit-code --heads "$repo" "refs/heads/$version" >/dev/null 2>&1; then
    echo "Required XanMod branch is unavailable: ${version}" >&2
    exit 1
  fi

  major="${version%%.*}"
  if [[ ! -f "config/${major}.x/config.sh" ]]; then
    echo "Missing config/${major}.x/config.sh for XanMod ${version}" >&2
    exit 1
  fi

  branches+=("$version")
done

printf '%s\n' "${branches[@]}" | jq -Rsc 'split("\n") | map(select(length > 0))'
