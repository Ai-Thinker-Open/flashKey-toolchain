#!/bin/bash
# FlashKey 工具链子模块初始化
# 用法: git clone --recurse-submodules git@github.com:Ai-Thinker-Open/FlashKey.git

set -e

TOOLCHAIN_DIR="$(cd "$(dirname "$0")" && pwd)"

# 检查子模块是否已初始化和拉取
if [ -f "$TOOLCHAIN_DIR/bin/riscv-none-elf-gcc" ]; then
    echo "✅ 工具链已就绪: $TOOLCHAIN_DIR"
    echo "   版本: $($TOOLCHAIN_DIR/bin/riscv-none-elf-gcc --version | head -1)"
    exit 0
fi

# 子模块未初始化，提示用户
echo ""
echo "❌ 工具链子模块未初始化。执行以下命令:"
echo ""
echo "   # 方式一：用 --recurse-submodules 重新克隆"
echo "   git clone --recurse-submodules git@github.com:Ai-Thinker-Open/FlashKey.git"
echo ""
echo "   # 方式二：在已有克隆中初始化子模块"
echo "   git submodule update --init --recursive tools/toolchain"
echo ""
