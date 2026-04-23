#!/usr/bin/env bash
set -e
# CPU 与体系结构
scripts/config --enable CONFIG_X86_64
scripts/config --set-val CONFIG_X86_64_VERSION 3
scripts/config --disable CONFIG_GENERIC_CPU
scripts/config --enable CONFIG_MNATIVE 

# 链接优化
scripts/config --disable CONFIG_LTO_CLANG_THIN
scripts/config --enable CONFIG_LTO_CLANG_FULL

# 时钟与调度
scripts/config --disable CONFIG_NO_HZ_FULL
scripts/config --disable CONFIG_NO_HZ_IDLE
scripts/config --disable CONFIG_HZ_250
scripts/config --enable CONFIG_HZ_1000
scripts/config --set-val CONFIG_HZ 1000

# 虚拟化相关
scripts/config --enable CONFIG_KVM
scripts/config --enable CONFIG_KVM_INTEL    # 如果是Intel CPU
scripts/config --enable CONFIG_KVM_AMD      # 如果是AMD CPU
scripts/config --enable CONFIG_VIRTUALIZATION
scripts/config --enable CONFIG_VIRTIO
scripts/config --enable CONFIG_VIRTIO_PCI
scripts/config --enable CONFIG_VIRTIO_BLK
scripts/config --enable CONFIG_VIRTIO_NET
scripts/config --enable CONFIG_VIRTIO_BALLOON
scripts/config --enable CONFIG_VIRTIO_CONSOLE

# 网络性能优化
scripts/config --enable CONFIG_NET_CORE
scripts/config --enable CONFIG_TCP_CONG_BBR
scripts/config --enable CONFIG_TCP_CONG_CUBIC

# 调试相关关闭（减小内核体积，提升性能）
scripts/config --disable CONFIG_DEBUG_INFO
scripts/config --disable CONFIG_DEBUG_KERNEL
scripts/config --disable CONFIG_KASAN
scripts/config --disable CONFIG_KCOV
# 这里可以继续写更多选项
