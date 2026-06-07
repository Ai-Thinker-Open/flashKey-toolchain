# FlashKey FK-01 工具链

## 工具链版本

| 工具 | 版本 |
|------|------|
| xPack RISC-V GCC | 12.5.0（`riscv-none-elf-gcc`） |

## 安装方式

### 方式一：克隆时自动拉取（推荐）

```bash
git clone --recurse-submodules git@github.com:Ai-Thinker-Open/FlashKey.git
```

### 方式二：已有克隆中初始化

```bash
git submodule update --init --recursive tools/toolchain
```

### 方式三：手动下载

如果子模块仓库不可用，可手动下载 xPack 官方发布版：

```bash
cd tools/toolchain/
wget https://github.com/xpack-dev-tools/riscv-none-elf-gcc-xpack/releases/download/v12.5.0-1/xpack-riscv-none-elf-gcc-12.5.0-1-linux-x64.tar.gz
tar xzf xpack-riscv-none-elf-gcc-12.5.0-1-linux-x64.tar.gz --strip-components=1
```

## 验证

```bash
tools/toolchain/bin/riscv-none-elf-gcc --version
```

