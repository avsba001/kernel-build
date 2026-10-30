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
  intel|amd) ;;
  *) echo "Unsupported CPU vendor: $vendor" >&2; exit 2 ;;
esac

# Processor family is a Kconfig choice. Retain the ISA baseline instead of
# selecting a model-specific -march (MZEN, MHASWELL, or a native target).
while IFS= read -r option; do
  scripts/config --disable "CONFIG_$option"
done < <(sed -nE 's/^config (M[A-Z0-9_]+)$/\1/p' arch/x86/Kconfig.cpu)
scripts/config --enable CONFIG_GENERIC_CPU
scripts/config --set-val CONFIG_X86_64_VERSION "$version"

# CPU vendor support is distinct from PCI device vendor support: keep network,
# storage and other peripheral drivers from the major-version baseline.
scripts/config --enable CONFIG_EXPERT
scripts/config --enable CONFIG_PROCESSOR_SELECT
scripts/config --disable CONFIG_CPU_SUP_HYGON
scripts/config --disable CONFIG_CPU_SUP_CENTAUR
scripts/config --disable CONFIG_CPU_SUP_ZHAOXIN
if [[ "$vendor" == intel ]]; then
  scripts/config --enable CONFIG_CPU_SUP_INTEL
  scripts/config --disable CONFIG_CPU_SUP_AMD
  scripts/config --disable CONFIG_AMD_NUMA
  scripts/config --disable CONFIG_KVM_AMD
  scripts/config --disable CONFIG_KVM_AMD_SEV
  scripts/config --module CONFIG_KVM_INTEL
  scripts/config --enable CONFIG_INTEL_IOMMU
  scripts/config --enable CONFIG_INTEL_IOMMU_SVM
else
  scripts/config --enable CONFIG_CPU_SUP_AMD
  scripts/config --disable CONFIG_CPU_SUP_INTEL
  scripts/config --enable CONFIG_AMD_NUMA
  scripts/config --disable CONFIG_KVM_INTEL
  scripts/config --module CONFIG_KVM_AMD
  scripts/config --enable CONFIG_AMD_IOMMU
  # Keep SEV opt-in: it requires memory-encryption support and firmware setup.
fi

if [[ -n "${GITHUB_ENV:-}" ]]; then
  printf 'CPU_PROFILE=%s-%s\n' "$level" "$vendor" >> "$GITHUB_ENV"
  printf 'KCFLAGS_ARCH=-march=%s -mtune=generic\n' "$march" >> "$GITHUB_ENV"
fi
