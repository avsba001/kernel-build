# XanMod Cloud Kernel Builder

GitHub Actions builder for Debian/Ubuntu VPS kernels based on XanMod Linux. The build keeps the repository's existing kernel feature configuration, LLVM/Clang 23.1.0 toolchain, `-O3`, Clang Full LTO, section garbage collection, Debian package generation, and GitHub Release publishing.

## Supported kernel branches

The monthly workflow discovers XanMod branches matching `6.18` and `7.x`. Versions from a major line use `config/<major>.x/config.sh`. A new major line is rejected until its configuration directory is added and reviewed; no older configuration is silently reused.

The manual workflow can build explicit XanMod branch names and CPU profiles. Each build produces separate image, headers, and final `.config` artifacts.

## CPU profiles

| Profile | Minimum ISA baseline | Compiler target | Kernel CPU config |
| --- | --- | --- | --- |
| `v2-intel` | x86-64-v2 | `-march=x86-64-v2 -mtune=generic` | Generic kernel CPU |
| `v2-amd` | x86-64-v2 | `-march=x86-64-v2 -mtune=generic` | Generic kernel CPU |
| `v3-intel` | x86-64-v3 | `-march=x86-64-v3 -mtune=generic` | Generic kernel CPU |
| `v3-amd` | x86-64-v3 | `-march=x86-64-v3 -mtune=generic` | Generic kernel CPU |

`CONFIG_GENERIC_CPU=y` remains enabled and `CONFIG_X86_64_VERSION` is explicitly set to the selected baseline. Clang's X86 target does not provide generic `intel` or `amd` values for `-mtune`; the profile names are retained for package identification, while compiler tuning stays `generic`. `-march` limits generated ISA to the selected compatibility baseline. No build uses the GitHub runner's host-specific CPU target. Verify a VPS CPU supports the selected baseline before installation.

## Workflows

- `build.yml` runs monthly on day 1 and offers manual dispatch inputs for branch versions and profiles.
- `reusable-build.yml` contains the common source, configuration, build, packaging, and release steps.
- The scheduled matrix discovers all supported 6.18 and 7.x branches and builds all four CPU profiles. Parallelism is capped at four jobs to control runner pressure without dropping combinations.

## Install

```bash
bash <(curl -sL https://raw.githubusercontent.com/avsba001/kernel-build/refs/heads/v3/install.sh)
```

The installer selects a kernel branch and one of the four CPU profiles, then downloads the matching image and headers packages from Releases.

Test boot, network, storage, firewall, and container workloads on a non-production VPS before deployment. CPU mitigation settings inherited from the kernel configuration are a separate security/performance decision and should be reviewed for the target environment.
