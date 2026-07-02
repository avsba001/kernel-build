# Actions-kernel

Actions-kernel 是一个使用 GitHub Actions 自动构建 linux 云内核的项目，目标是在 VPS/云服务器场景中提供精简、高性能的 Debian `.deb` 云内核包。

# 一键安装脚本
```
bash <(curl -sL https://raw.githubusercontent.com/avsba001/kernel-build/refs/heads/v3/install.sh)
```

## 项目目标

- **面向 VPS/云内核**：默认 localversion 为 `-cloud`，不以省电为目标。
- **网络性能优先**：内核配置启用 BBR、fq 默认队列、RPS/XPS、busy poll、XDP 等网络能力。
- **自动化构建**：通过 `.github/workflows/` 中的工作流拉取 XanMod 源码、应用 `config.sh`、生成最终 `.config` 并发布 `.deb` 包。

## 工作流

当前提供以下手动触发的构建工作流：

- `6.12-内核构建`：构建 XanMod `6.12` 分支。
- `6.18-内核构建`：构建 XanMod `6.18` 分支。
- `7.0-内核构建`：构建 XanMod `7.0` 分支。
- `7.1-内核构建`：构建 XanMod `7.1` 分支。


## 主要配置方向

`config-x.x.sh` 是核心内核配置脚本，主要调整包括：

- `CONFIG_HZ_250=y`，关闭 `1000Hz`，降低云服务器通用负载下的定时器开销。
- 关闭 CPU idle/部分省电路径，避免 VPS 场景下省电策略影响延迟与吞吐。
- 默认 TCP 拥塞控制使用 BBR，默认 qdisc 使用 `fq`。
- 保留 perf/tracing、BPF 等必要排障能力，但不把观测功能作为项目主要卖点。
- 保留常见容器、cgroup、namespace、KVM、netfilter、XDP、队列调度等云服务器常用功能，同时尽量裁剪不必要模块。

## 使用方法

1. Fork 或克隆本仓库。
2. 在 GitHub Actions 页面手动运行需要的内核版本工作流。
3. 构建完成后，从 Release 下载 `linux-image-*.deb` 与 `linux-headers-*.deb`。
4. 在目标 Debian/Ubuntu VPS 上安装

> 注意：该配置偏向云服务器/VPS 的精简与网络性能，不适合追求省电、桌面兼容性或极限安全加固的场景。上线前建议先在测试 VPS 验证启动、网卡、磁盘、iptables/nftables 与容器环境。

## 维护记录

- 2026/4/23：回退至非极限精简。
- 2026/4/26：因 Debian 11 兼容性问题，重做优化选项。
