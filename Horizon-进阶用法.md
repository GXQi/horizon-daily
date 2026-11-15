# Horizon 进阶用法：命令清单 / 领域日报 / 自动发布到 GitHub Pages

---

## 一、不是只有“跑一次日报”这一条命令

`跑一次日报.command` 只是最省事的一个壳。底层能用的入口有这些：

| 命令 | 作用 |
|---|---|
| `uv run horizon` | 主命令，抓最近 24 小时 → 打分 → 出日报 |
| `uv run horizon --hours 48` | 指定时间窗口（小时） |
| `uv run horizon -c data/config-xxx.json` | 用指定配置文件跑 |
| `uv run horizon -d data/xxx` | 换输出目录（日报存到 `data/xxx/summaries/`） |
| `uv run horizon -l INFO` | 打详细日志，排查抓取失败时用 |
| `uv run horizon-wizard` | 交互式向导：问你兴趣，自动生成一份配置 |
| `uv run horizon-mcp` | 起一个 MCP Server，让 Claude / Cursor 之类直接调 Horizon 抓取+打分 |
| `uv run horizon-webhook` | 单独把最新日报推到飞书/钉钉（不重新抓） |
| `uv run horizon-wechat` | 推送到微信（iLink） |

已经开始提供的三个双击脚本：

| 脚本 | 内容 | 输出目录 |
|---|---|---|
| `跑一次日报.command` | 通用科技日报（10 个源，24h） | `data/summaries/` |
| `跑前端日报.command` | React / Next.js / TS / MDN / Smashing / Tailwind / ESLint / Node / CSS-Tricks / 掘金 / InfoQ（13 个源，7 天窗口） | `data/frontend/summaries/` |
| `跑AI日报.command` | 量子位 / Simon Willison / Hacker News / 36氪 / InfoQ（48h） | `data/ai/summaries/` |

---

## 二、怎么看“特定领域”的新闻

Horizon 本身没有“领域频道”这种开关，领域由三样东西决定：**订哪些源**、**用哪套评分标准（profile）**、**分数线**。所以我给你做了两条现成的：

### 现成方案（已配好、已实测能抓）

```bash
cd "/Users/gxqi/DoubaoWork/chats/2026-11-15/new-chat/horizon"

# 前端领域（官方博客更新慢，用 7 天窗口才抓得到东西）
uv run horizon -c data/config-frontend.json -d data/frontend --hours 168

# AI 领域
uv run horizon -c data/config-ai.json -d data/ai --hours 48
```

或直接双击 `跑前端日报.command` / `跑AI日报.command`。

**为什么用 `-d` 分开目录**：日报文件名固定是 `horizon-日期-zh.md`，用同一个目录连跑两个领域会互相覆盖，所以各自独立目录。

> 实测提醒：React/Next.js/MDN/Smashing/Tailwind 这类官方博客更新很慢，7 天窗口里大概率一条都没有，所以前端日报的实际内容会偏向掘金、InfoQ、JetBrains、ESLint、Node.js 这几家“发布频繁”的源。想让日报更偏前端，就把 `threshold` 降到 5.0，并把 InfoQ、掘金以外的通用源删掉。

### 换成你自己的领域（3 步，不用改代码）

1. 复制 `data/config.json` 成 `data/config-我的领域.json`
2. 把 `sources.rss` 换成该领域的订阅源：
   ```json
   { "name": "XX 博客", "url": "https://xx.com/feed.xml", "enabled": true, "category": "xx", "profile": "tech-news" }
   ```
   `content_extractor: "trafilatura"` 表示顺便抓正文，更准但慢一点（可选）。
3. 调分数线：`processing.profile_settings.tech-news.threshold`（0–10，越高越挑），`digest.max_items` 控条数。

跑：`uv run horizon -c data/config-我的领域.json -d data/我的领域`

> 加源之前先测一下通不通：`curl -I https://xx.com/feed.xml`，返回 200 就行。国内网络下 Reddit、Telegram、Twitter、Hacker News 官方接口、大多数海外博客都连不上，这就是默认配置里只用 RSS 的原因。

### 另一种玩法：一份日报里分板块

不想拆成多份配置，也可以让不同源走不同 profile（`tech-news` 快讯 / `tech-blog` 深度长文 / `finance-news` 财经 / `ai-creator` 自媒体角度），然后在 `digest.profile_order` 里排序，日报会自动按板块分组：

```json
"digest": { "profile_order": ["tech-news", "tech-blog", "finance-news"] }
```

源的 `profile` 也可以写成数组（如 `["tech-news","finance-news"]`），让 AI 在这几个里自己挑最合适的。

---

## 三、自动发布到 GitHub Pages

原理：Horizon 每次跑完，除了写 `data/summaries/`，还会把带 Jekyll 头的版本写到 `docs/_posts/YYYY-MM-DD-summary-zh.md`。仓库里 `docs/` 就是一个现成的 Jekyll 站点（theme: cayman），把它发布成 Pages 就有在线日报站了。

两种做法，选一种。

### 方案 A：云端自动跑（推荐，电脑关机也照跑）

需要你有 GitHub 账号，仓库是**你自己的**（clone 的是别人的仓库，直接开 Pages 没有权限）。步骤：

1. **建自己的仓库**：GitHub 上 New repository，名字比如 `horizon-daily`（不要选 "Add README"）。
2. **把本地代码推上去**：
   ```bash
   cd "/Users/gxqi/DoubaoWork/chats/2026-11-15/new-chat/horizon"
   git remote add mine https://github.com/<你的用户名>/horizon-daily.git
   git push -u mine main
   ```
   （想直接用 `origin` 也行：`git remote set-url origin <你的仓库地址>`）
3. **加密钥**：仓库 → Settings → Secrets and variables → Actions → New repository secret
   - Name: `DEEPSEEK_API_KEY`，Secret: 你的 key
   - 可选再加 `GITHUB_TOKEN` 不需要（Actions 自带）
4. **改站点地址**：编辑 `docs/_config.yml`
   ```yaml
   baseurl: "/horizon-daily"          # 仓库名；若仓库叫 <用户名>.github.io 则留空 ""
   url: "https://<你的用户名>.github.io"
   ```
   不改的话页面 CSS 和链接会 404。
5. **决定用哪份配置**：`daily-summary.yml` 里是 `cp data/config.github.json data/config.json`。
   - 想沿用官方那套（HN/Reddit/双语）：直接改 `data/config.github.json` 里的模型和源
   - 想用我给你配的国内可用源：把你满意的配置复制成 `data/config.github.json`（注意 `data/config.json` 被 gitignore，不会进仓库，所以必须提交一份非 config.json 的文件）
6. **启用定时**：把 `.github/workflows/daily-summary.yml.disabled` 改名为 `daily-summary.yml`（GitHub 网页上点开文件也能直接 Rename），提交。
7. **开 Pages**：仓库 → Settings → Pages → Build and deployment
   - Source 选 **Deploy from a branch**
   - Branch 选 **gh-pages**，目录 **/ (root)**，Save
   - 此刻还没有 gh-pages 分支，属正常；下一步跑一次就自动建出来
8. **跑一次**：Actions → 左侧 "Daily Horizon Summary" → Run workflow。第一次会失败在 Pages 上也没关系，重跑一次再等 1–2 分钟。
9. **访问**：`https://<你的用户名>.github.io/horizon-daily/`

**几个必须知道的坑**

- **fork 来的仓库定时任务是关的**：Actions 页面里出现 "Workflow disabled"，点 **Enable workflow**，否则永远不会自动跑。
- **定时用 UTC**：仓库里写的是 `cron: '0 23 * * *'` = 北京时间早上 7:00。想改时间就换算成 UTC。
- **双语费用翻倍**：`config.github.json` 默认 `languages: ["zh","en"]`，每种语言都跑一遍 AI。只想要中文就改成 `["zh"]`。
- **模型名**：`config.github.json` 里是 `deepseek-v4-flash`，如果 workflow 报 model 不存在，改成 `deepseek-chat`。
- **免费额度**：public 仓库 Actions 不要钱；private 仓库每月 2000 分钟免费，这个任务一次几分钟，够用。

### 方案 B：本地跑 + 自动推到 gh-pages（电脑得开着）

仓库里已经有现成脚本 `scripts/daily-run.sh`：它会 `git pull`、`uv sync`、跑一次 horizon，然后把 `docs/` 复制到 `gh-pages` 分支并 push。

用之前需要：`origin` 指向你自己的仓库、仓库里已有 `gh-pages` 分支（没有就按方案 A 第 7-8 步先跑出一次）。

然后定时（三选一）：

```bash
# 1) 直接手动
./scripts/daily-run.sh

# 2) crontab 每天 8:00
crontab -e
0 8 * * * cd "/Users/gxqi/DoubaoWork/chats/2026-11-15/new-chat/horizon" && ./scripts/daily-run.sh >> /tmp/horizon.log 2>&1

# 3) launchd（macOS 原生，睡醒后也会补跑）—— 要的话我帮你生成 plist
```

> 只想发一次、不折腾自动化：跑完 `git add docs && git commit -m "daily" && git push`，推到 main 就够——`deploy-docs.yml` 看到 `docs/**` 变化会自动发布到 gh-pages。

### 关于多个领域同时上站点

`docs/_posts/` 的文件名是固定格式，**一份站点只适合挂一个领域**。前端/AI 分开跑适合本地看；要都上网站，就得给每个领域各建一个仓库（或各建一个站点分支），别在同一天用两份配置往同一个仓库推。
