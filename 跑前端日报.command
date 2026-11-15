#!/bin/zsh
# 双击：只跑「前端」领域日报（React / Next.js / TypeScript / CSS / 掘金 / InfoQ）
cd "$(dirname "$0")" || exit 1
export PATH="$HOME/.local/bin:$PATH"

if ! grep -qE '^(DEEPSEEK_API_KEY|DOUBAO_API_KEY|DASHSCOPE_API_KEY|OPENAI_API_KEY)=..+' .env 2>/dev/null; then
  echo "❌ .env 里还没填 API Key，先打开 .env 补上 DEEPSEEK_API_KEY。"
  exit 1
fi

echo "⏳ 生成【前端】日报（官方博客更新慢，按 7 天窗口抓）……"
# 独立的输出目录，避免和通用日报互相覆盖
uv run horizon -c data/config-frontend.json -d data/frontend --hours 168
code=$?
if [ $code -ne 0 ]; then
  echo ""
  echo "❌ 运行失败（退出码 $code）"
  read -r "?按回车关闭窗口"
  exit $code
fi
echo ""
echo "✅ 前端日报：data/frontend/summaries/"
open data/frontend/summaries 2>/dev/null
