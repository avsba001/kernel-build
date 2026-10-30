#!/usr/bin/env bash
set -euo pipefail

level="${1:?usage: apply.sh <v2|v3> <intel|amd>}"
vendor="${2:?usage: apply.sh <v2|v3> <intel|amd>}"

case "$level" in
  v2) version=2; march=x86-64-v2 ;;
  v3) version=3; march=x86-64-v3 ;;
  *) echo "Unsupported ISA level: $level" >&2; exit 2 ;;
esac

case "$vendor" in
  intel|amd) tune=generic ;;
  *) echo "Unsupported CPU vendor: $vendor" >&2; exit 2 ;;
esac

for option in \
  CONFIG_MK8 CONFIG_MK8SSE3 CONFIG_MK10 CONFIG_MBARCELONA CONFIG_MBOBCAT \
  CONFIG_MJAGUAR CONFIG_MBULLDOZER CONFIG_MPILEDRIVER CONFIG_MSTEAMROLLER \
  CONFIG_MEXCAVATOR CONFIG_MZEN CONFIG_MZEN2 CONFIG_MZEN3 CONFIG_MZEN4 \
  CONFIG_MZEN5 CONFIG_MPSC CONFIG_MATOM CONFIG_MCORE2 CONFIG_MNEHALEM \
  CONFIG_MWESTMERE CONFIG_MSILVERMONT CONFIG_MGOLDMONT CONFIG_MGOLDMONTPLUS \
  CONFIG_MSANDYBRIDGE CONFIG_MIVYBRIDGE CONFIG_MHASWELL CONFIG_MBROADWELL \
  CONFIG_MSKYLAKE CONFIG_MSKYLAKEX CONFIG_MCANNONLAKE CONFIG_MICELAKE \
  CONFIG_MCASCADELAKE CONFIG_MCOOPERLAKE CONFIG_MTIGERLAKE CONFIG_MSAPPHIRERAPIDS \
  CONFIG_MROCKETLAKE CONFIG_MALDERLAKE CONFIG_MRAPTORLAKE CONFIG_MMETEORLAKE \
  CONFIG_MEMERALDRAPIDS CONFIG_MNATIVE_INTEL CONFIG_MNATIVE_AMD; do
  scripts/config --disable "$option"
done
scripts/config --enable CONFIG_GENERIC_CPU
scripts/config --set-val CONFIG_X86_64_VERSION "$version"

printf 'CPU_PROFILE=%s-%s\n' "$level" "$vendor" >> "$GITHUB_ENV"
printf 'KCFLAGS_ARCH=-march=%s -mtune=%s\n' "$march" "$tune" >> "$GITHUB_ENV"
