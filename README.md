# XanMod 云内核构建

本项目基于 XanMod Linux，通过 GitHub Actions 为 Debian/Ubuntu VPS 构建内核安装包。构建保留现有内核功能配置、LLVM/Clang 23.1.0 工具链、`-O3`、Clang Full LTO、section 垃圾回收、Debian 软件包生成和 GitHub Release 发布流程。

## 支持的内核分支

每月工作流会发现 XanMod 中符合 `6.18` 及以上 6.x、`7.x` 格式的分支。各大版本使用独立配置：`config/<大版本>.x/config.sh`。新增大版本时，必须先新增并审核对应配置目录；未配置的大版本不会套用旧配置，而会拒绝构建。

手动触发工作流时，可以指定 XanMod 分支版本和 CPU profile。每次构建分别生成内核镜像、headers 和最终 `.config` 配置文件。

## CPU 配置组合

| Profile | 最低 ISA 基线 | 编译器参数 | 内核 CPU 配置 |
| --- | --- | --- | --- |
| `v2-intel` | x86-64-v2 | `-march=x86-64-v2 -mtune=generic` | Intel CPU support/tunings/quirks、KVM Intel、Intel IOMMU/SVM |
| `v2-amd` | x86-64-v2 | `-march=x86-64-v2 -mtune=generic` | AMD CPU support/tunings/quirks、AMD NUMA、KVM AMD、AMD IOMMU |
| `v3-intel` | x86-64-v3 | `-march=x86-64-v3 -mtune=generic` | Intel CPU support/tunings/quirks、KVM Intel、Intel IOMMU/SVM |
| `v3-amd` | x86-64-v3 | `-march=x86-64-v3 -mtune=generic` | AMD CPU support/tunings/quirks、AMD NUMA、KVM AMD、AMD IOMMU |

四种组合都保持 `CONFIG_GENERIC_CPU=y`，并按所选 profile 设置 `CONFIG_X86_64_VERSION` 与对应的 `-march`，不选择具体 Intel/AMD 代际，因此兼容性仍由 v2/v3 基线决定。profile 的厂商差异通过 `CONFIG_CPU_SUP_INTEL` 或 `CONFIG_CPU_SUP_AMD` 实现；这些 Kconfig 选项负责相应 CPU 的 detection、tunings 和 quirks，并同时选择匹配的 KVM/IOMMU 支持。Clang X86 后端不提供通用的 `-mtune=intel/amd`，因此编译器使用 `-mtune=generic`，不会绑定 GitHub Runner 宿主机 CPU。安装前请确认 VPS CPU 支持所选基线。

## 工作流

- `build.yml`：每月 1 日运行，也支持手动触发并指定版本、profile。
- `reusable-build.yml`：复用构建流程，包含源码获取、配置、编译、打包和 Release 发布。
- 定时任务会发现所有受支持的 6.18+ 和 7.x 分支，并构建全部四种 CPU profile。并行任务数限制为 4，以控制 Runner 资源占用，不会因此跳过任何组合。

## 安装

```bash
bash <(curl -sL https://raw.githubusercontent.com/avsba001/kernel-build/refs/heads/v3/install.sh)
```

安装脚本会让你选择内核分支和 CPU profile，然后从 Releases 下载相匹配的内核镜像与 headers 软件包。

建议先在非生产 VPS 上测试启动、网络、存储、防火墙和容器环境，再部署到生产系统。配置继承的 CPU mitigation 选项涉及安全与性能权衡，应结合目标环境单独检查。
