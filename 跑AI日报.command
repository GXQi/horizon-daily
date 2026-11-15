#!/bin/zsh
# 双击：只跑「AI」领域日报（量子位 / Simon Willison / Hacker News / 36氪 / InfoQ）
cd "$(dirname "$0")" || exit 1
export PATH="$HOME/.local/bin:$PATH"

if ! grep -qE '^(DEEPSEEK_API_KEY|DOUBAO_API_KEY|DASHSCOPE_API_KEY|OPENAI_API_KEY)=..+' .env 2>/dev/null; then
  echo "❌ .env 里还没填 API Key，先打开 .env 补上 DEEPSEEK_API_KEY。"
  exit 1
fi

echo "⏳ 生成【AI】领域日报……"
uv run horizon -c data/config-ai.json -d data/ai --hours 48
code=$?
if [ $code -ne 0 ]; then
  echo ""
  echo "❌ 运行失败（退出码 $code）"
  read -r "?按回车关闭窗口"
  exit $code
fi
echo ""
echo "✅ AI 日报：data/ai/summaries/"
open data/ai/summaries 2>/dev/null
