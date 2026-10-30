#!/usr/bin/env bash
set -euo pipefail

versions_json="${1:?usage: validate-inputs.sh <versions-json> <profiles-json>}"
profiles_json="${2:?usage: validate-inputs.sh <versions-json> <profiles-json>}"

jq -e 'type == "array" and length > 0 and all(.[]; type == "string" and test("^(6\\.(18|19|[2-9][0-9]+)|7\\.[0-9]+)$"))' <<<"$versions_json" >/dev/null
jq -e 'type == "array" and length > 0 and all(.[]; . == "v2-intel" or . == "v2-amd" or . == "v3-intel" or . == "v3-amd")' <<<"$profiles_json" >/dev/null

while IFS= read -r version; do
  major="${version%%.*}"
  [[ -f "config/${major}.x/config.sh" ]] || { echo "Missing config for ${major}.x" >&2; exit 1; }
done < <(jq -r '.[]' <<<"$versions_json")
