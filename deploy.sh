#!/bin/bash

echo "🚀 代理商追踪系统 - 部署脚本"
echo "================================"
echo ""

# 检查是否安装了 gh CLI
if ! command -v gh &> /dev/null; then
    echo "⚠️  GitHub CLI 未安装"
    echo ""
    echo "请选择部署方式："
    echo "1. 安装 GitHub CLI (brew install gh)"
    echo "2. 使用网页手动上传"
    echo ""
    echo "按任意键退出..."
    read
    exit 1
fi

echo "✅ GitHub CLI 已安装"
echo ""

# 提示用户登录 GitHub（如果还没登录）
echo "📝 请确保已登录 GitHub..."
gh auth status || gh auth login

echo ""
echo "🔄 创建/更新 GitHub 仓库..."

# 创建仓库（如果不存在）
gh repo create qrcode-tracker --public --source=. --push

echo ""
echo "✅ 仓库创建完成！"
echo ""
echo "⏳ 等待 GitHub Pages 部署（需要 2-5 分钟）..."
echo ""
echo "📋 下一步操作："
echo "1. 访问 https://github.com/MartinGuo/qrcode-tracker/settings/pages"
echo "2. 确认 Source 设置为 'Deploy from a branch' → 'main' → '/ (root)'"
echo "3. 等待部署完成"
echo ""
echo "🌐 部署完成后访问：https://MartinGuo.github.io/qrcode-tracker"
