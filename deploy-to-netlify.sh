#!/bin/bash

# Netlify 自动部署脚本
# 此脚本将帮助您部署到 Netlify

echo "🚀 Netlify 部署助手"
echo ""

# 检查构建文件
if [ ! -d "dist" ]; then
    echo "📦 构建项目..."
    bun run build
fi

echo ""
echo "✅ 项目已构建"
echo ""
echo "📤 部署到 Netlify 的方法："
echo ""
echo "方法 1️⃣：使用 Netlify Web UI（最简单）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "1. 访问：https://app.netlify.com"
echo "2. 点击：Add new site → Import an existing project"
echo "3. 选择：GitHub"
echo "4. 授权并选择：brightfuture-replica"
echo "5. 确认构建设置（已预配置）"
echo "6. 点击：Deploy site"
echo ""
echo "方法 2️⃣：拖放部署"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "1. 访问：https://app.netlify.com"
echo "2. 将 dist/ 文件夹拖放到部署区域"
echo "3. 完成！"
echo ""
echo "方法 3️⃣：使用 curl 部署（需要 API 凭证）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "export NETLIFY_TOKEN=your_token_here"
echo "curl -H 'Content-Type: application/zip' \\"
echo "     -H 'Authorization: Bearer \$NETLIFY_TOKEN' \\"
echo "     --data-binary '@dist.zip' \\"
echo "     https://api.netlify.com/api/v1/sites/brightfuture-replica/deploys"

