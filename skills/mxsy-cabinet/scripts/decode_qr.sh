#!/bin/bash
# 解码电柜二维码图片，输出电柜编号
# 用法: bash decode_qr.sh /path/to/qr_image.jpg
# 依赖: zbar-tools (sudo apt-get install -y zbar-tools)

IMAGE_PATH="$1"
if [ -z "$IMAGE_PATH" ]; then
    echo "用法: $0 <二维码图片路径>"
    exit 1
fi

RESULT=$(zbarimg "$IMAGE_PATH" 2>/dev/null)
if [ $? -eq 0 ] && [ -n "$RESULT" ]; then
    echo "$RESULT"
    # 提取电柜编号（URL 中 code= 后面的部分）
    CODE=$(echo "$RESULT" | grep -oP 'code=\K[^&]+')
    if [ -n "$CODE" ]; then
        echo "电柜编号: $CODE"
    fi
else
    echo "解码失败，请检查图片是否为有效二维码"
    exit 1
fi