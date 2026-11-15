#!/bin/zsh
# 双击即可运行一次 Horizon 日报（约 2-5 分钟）
cd "$(dirname "$0")" || exit 1
export PATH="$HOME/.local/bin:$PATH"

if [ ! -f .env ]; then
  echo "❌ 没找到 .env 文件"
  exit 1
fi
if ! grep -qE '^(DEEPSEEK_API_KEY|DOUBAO_API_KEY|DASHSCOPE_API_KEY|OPENAI_API_KEY)=..+' .env; then
  echo "❌ .env 里还没有填 API Key。"
  echo "   打开 .env，把 DEEPSEEK_API_KEY= 后面补上你的 key，再双击本脚本。"
  exit 1
fi

echo "⏳ 开始抓取 + AI 打分 + 生成中英日报……"
uv run horizon --hours 24
code=$?
if [ $code -ne 0 ]; then
  echo ""
  echo "❌ 运行失败（退出码 $code），把上面的报错发给我就行。"
  read -r "?按回车关闭窗口"
  exit $code
fi

echo ""
echo "✅ 已完成，日报在 data/summaries/ 目录"
open data/summaries 2>/dev/null
