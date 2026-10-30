# XanMod 云内核

一键编译所需的 XanMod 内核，一键检测并安装适合当前 CPU 的内核。面向 Debian/Ubuntu VPS 和云服务器。

## 一键编译

进入仓库 **Actions → XanMod 内核矩阵构建 → Run workflow**，选择需要的内核版本和 CPU 配置组合。构建完成后，从 **Releases** 下载 `.deb` 内核镜像和 headers 软件包。

| 输入 | 用法 |
| --- | --- |
| 内核版本 | `[]` 自动发现所有支持的分支；`["7.2"]` 编译指定版本；`["6.18","7.2"]` 编译多个版本 |
| CPU 配置组合 | 支持 `v2-intel`、`v2-amd`、`v3-intel`、`v3-amd`，默认全部构建；也可填写 `["v3-amd"]` 等指定组合 |

- 支持 XanMod **6.18 及以上 6.x、7.x** 分支，每月 1 日自动构建。
- **6.x、7.x 独立配置**，新增内核大版本需补充对应配置。
- **v2/v3 指令集基线 + Intel/AMD 厂商配置**，不绑定具体 CPU 型号。
- 面向无 GPU 的 VPS 虚拟机，保留常见 VGA、QXL、VMware SVGA、Cirrus 虚拟显示与 framebuffer 控制台，禁用 virtio-gpu 和物理 GPU 驱动。
- 使用 **LLVM/Clang 23、O3、Full LTO**，默认 **BBR + fq**。

## 一键检测安装

在目标服务器运行：

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/avsba001/kernel-build/refs/heads/main/install.sh)
```

脚本自动检测 CPU 的 **v2/v3 指令集与 Intel/AMD 厂商**，匹配对应内核。选择内核系列后，确认才会下载并安装，完成后重启生效。

需要 x86-64 Debian/Ubuntu、`python3`、`curl`，以及 root 或 sudo 权限。CPU 不满足 v2 或没有匹配的完整发布包时停止安装。
