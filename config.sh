#!/usr/bin/env bash
set -e
# 批量修改
scripts/config --enable CONFIG_GENERIC_CPU
scripts/config --set-val CONFIG_X86_64_VERSION 3
scripts/config --disable CONFIG_NO_HZ_FULL
scripts/config --enable CONFIG_NO_HZ_IDLE
scripts/config --disable CONFIG_HZ_1000
scripts/config --set-val CONFIG_HZ 250
scripts/config --disable CONFIG_LTO_CLANG_THIN
scripts/config --enable CONFIG_LTO_CLANG_FULL

# 这里可以继续写更多选项
