#!/usr/bin/env bash
set -e
# CPU 与体系结构
scripts/config --set-val CONFIG_X86_64_VERSION 3
scripts/config --enable CONFIG_GENERIC_CPU

# 链接优化
scripts/config --disable CONFIG_LTO_CLANG_THIN
scripts/config --enable CONFIG_LTO_CLANG_FULL

# 时钟与调度
scripts/config --disable CONFIG_NO_HZ_FULL
scripts/config --disable CONFIG_NO_HZ_IDLE
scripts/config --disable CONFIG_HZ_250
scripts/config --enable CONFIG_HZ_1000

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

#蓝牙
scripts/config --disable CONFIG_BT
scripts/config --disable CONFIG_BT_BREDR
scripts/config --disable CONFIG_BT_RFCOMM
scripts/config --disable CONFIG_BT_RFCOMM_TTY
scripts/config --disable CONFIG_BT_BNEP
scripts/config --disable CONFIG_BT_BNEP_MC_FILTER
scripts/config --disable CONFIG_BT_BNEP_PROTO_FILTER
scripts/config --disable CONFIG_BT_HIDP
scripts/config --disable CONFIG_BT_LE
scripts/config --disable CONFIG_BT_LE_L2CAP_ECRED
scripts/config --disable CONFIG_BT_6LOWPAN
scripts/config --disable CONFIG_BT_LEDS
scripts/config --disable CONFIG_BT_MSFTEXT
scripts/config --disable CONFIG_BT_AOSPEXT
scripts/config --disable CONFIG_BT_DEBUGFS
scripts/config --disable CONFIG_BT_INTEL
scripts/config --disable CONFIG_BT_BCM
scripts/config --disable CONFIG_BT_RTL
scripts/config --disable CONFIG_BT_QCA
scripts/config --disable CONFIG_BT_MTK
scripts/config --disable CONFIG_BT_HCIBTUSB
scripts/config --disable CONFIG_BT_HCIBTSDIO
scripts/config --disable CONFIG_BT_HCIUART
scripts/config --disable CONFIG_BT_HCIBCM203X
scripts/config --disable CONFIG_BT_HCIBCM4377
scripts/config --disable CONFIG_BT_HCIBPA10X
scripts/config --disable CONFIG_BT_HCIBFUSB
scripts/config --disable CONFIG_BT_HCIDTL1
scripts/config --disable CONFIG_BT_HCIBT3C
scripts/config --disable CONFIG_BT_HCIBLUECARD
scripts/config --disable CONFIG_BT_MRVL
scripts/config --disable CONFIG_BT_MRVL_SDIO
scripts/config --disable CONFIG_BT_ATH3K
scripts/config --disable CONFIG_BT_MTKSDIO
scripts/config --disable CONFIG_BT_MTKUART
scripts/config --disable CONFIG_BT_HCIRSI
scripts/config --disable CONFIG_BT_VIRTIO
scripts/config --disable CONFIG_BT_NXPUART
# 这里可以继续写更多选项
