---
layout: default
title: "Horizon Summary: 2026-11-15 (ZH)"
date: 2026-11-15
lang: zh
---

> 从 36 条内容中筛选出 9 条重要资讯。

---

**科技新闻**
1. [SpaceX 星舰第 15 次试飞成功回收助推器](#item-tech-news-1) ⭐️ 9.0/10
2. [Lovable 生成应用因 RLS 不足泄露护照信息与逾 20 万条私信](#item-tech-news-2) ⭐️ 8.0/10
3. [星舰第 15 次试飞：飞船轨道返回后首次被机械臂捕获](#item-tech-news-3) ⭐️ 8.0/10
4. [美团开源 LongCat-2.5，称训练全程未用英伟达 GPU](#item-tech-news-4) ⭐️ 8.0/10
5. [EFF 请求上诉法院要求车牌识别搜索须获搜查令](#item-tech-news-5) ⭐️ 7.0/10
6. [约 200 行纯 JAX 实现 DeepSeek V3 引关注](#item-tech-news-6) ⭐️ 7.0/10
7. [LongMemEval-S 达 96.0%：官方评审与检索深度取舍](#item-tech-news-7) ⭐️ 7.0/10
8. [意大利以违规读取相册为由对 Meta 罚款 8.05 亿欧元](#item-tech-news-8) ⭐️ 7.0/10
9. [特斯拉 Cybercab 订阅协议：月租 299 美元，不订阅无法运行](#item-tech-news-9) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [SpaceX 星舰第 15 次试飞成功回收助推器](https://www.spacex.com/launches/starship-flight-15) ⭐️ 9.0/10

SpaceX 在星舰第 15 次试飞结束时成功用发射塔机械臂捕获了超重型助推器。公司通过官方 X 账号和发射直播公布了这一结果，但未在现有材料中披露具体飞行参数、热防护表现或复飞时间表。此次捕获属于飞行试验中的回收动作，尚不等于助推器或飞船已实现重复使用。

hackernews · ls612 · 11月14日 21:22 · [社区讨论](https://news.ycombinator.com/item?id=50500963)

**「背景」** Starship 的第 15 次综合飞行测试（IFT-15）紧接在此前一次任务之后：据维基百科条目记载，第 14 次飞行中助推器完成了上升段、热分离、返航点火并在墨西哥湾受控溅落，飞船则进入轨道并部署了 26 颗 Starlink V3 卫星。本次飞行前，SpaceX 将助推器返回发射塔并被“捕获”列为主要目标之一。

**「影响」** 对关注发射成本的用户和开发者而言，关键待验证项是热防护系统能否在再入后保持可用，以及同一枚助推器和飞船能否再次飞行；在这些数据公布前，尚不能据此推算单位载荷成本。

**「社区讨论」** 有评论者认为，若热防护过关，下一步应是双捕获并复飞同一批飞船，从而显著降低入轨成本；也有人指出最终入轨质量分数仍不明朗，但完全可复用优于部分复用。另有评论推测，若助推器多携带少量推进剂和氧化剂，或许能同时捕获两级，这属于社区猜测而非官方说法。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Starship_flight_15">Starship flight 15 - Wikipedia</a></li>
<li><a href="https://www.spacex.com/launches/starship-flight-15">Starship Flight 15 - SpaceX</a></li>

</ul>
</details>

**标签**: `#spacex`, `#starship`, `#reusable-rockets`, `#spaceflight`, `#hardware`

---

<a id="item-tech-news-2"></a>
### [Lovable 生成应用因 RLS 不足泄露护照信息与逾 20 万条私信](https://www.crissyfield.de/research/lovable-en/) ⭐️ 8.0/10

安全研究者在 Crissy Field 发布的报告指出，一批由 AI 应用生成平台 Lovable 构建的应用因行级安全（Row-Level Security）配置不足，暴露了护照信息以及超过 20 万条私人消息。Lovable 安全负责人 Igor 在评论中确认，根本原因是这些应用的行级安全不足，并称平台会在发布前自动扫描每个应用、另提供更深入的 SAST 扫描，两者对所有用户免费，用户可点击“Fix”修复或开启后台自动修复。报告作者表示该文两周前曾提交至 Hacker News 但未获关注，此次为重新提交。上述泄露规模来自研究者报告，Lovable 的回应属于厂商说明，尚未见独立验证。

hackernews · armcat · 11月14日 17:43 · [社区讨论](https://news.ycombinator.com/item?id=50499017)

**「背景」** 这些应用普遍基于 Supabase 构建，而 Supabase 依赖 Postgres 的行级安全（Row-Level Security，RLS）策略来控制数据访问。Supabase 文档说明，RLS 用于保护数据，但第三方安全资料指出，Supabase 默认允许公开访问，需要开发者自行正确配置 RLS 策略。评论中有人引用 Supabase 的讨论帖称，相关默认设置据称已于 10 月 30 日修复，但现有项目可能仍沿用旧默认值；这一说法来自社区评论，尚未得到独立确认。

**「影响与应对」** 对使用 Lovable 构建并依赖 Supabase 后端的开发者而言，需要自行核查数据库的行级安全策略是否真正生效，而不能仅依赖平台默认配置；评论中有人指出 Supabase 相关默认设置虽宣称已于 10 月 30 日修复，但现有项目可能仍沿用旧默认值。Lovable 方面建议用户使用发布前扫描与 SAST 扫描，并对发现的问题执行修复或启用自动修复。

**「社区讨论」** 评论者 SOLAR\_FIELDS 认为 Supabase 也负有责任，称其多年前为降低上手门槛而选择了较弱的默认安全配置，并援引讨论帖称修复对既有项目可能未生效。评论者 Oras 指出，此类 AI 生成应用无需复杂黑客技术即可被利用，且数量庞大、普通用户难以判断风险；liquid\_thyme 则主张平台应采用默认拒绝的数据库、最小权限 API 和自动化鉴权测试等更安全的默认设置。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://supabase.com/docs/guides/database/postgres/row-level-security">Row Level Security - Supabase Docs</a></li>
<li><a href="https://security.lucas-futures.com/en/docs/baas/supabase/">Supabase Security Configuration | BaaS Database Security ...</a></li>

</ul>
</details>

**标签**: `#security`, `#AI-generated apps`, `#Supabase`, `#data breach`, `#row-level security`

---

<a id="item-tech-news-3"></a>
### [星舰第 15 次试飞：飞船轨道返回后首次被机械臂捕获](https://www.spacex.com/launches/starship-flight-15) ⭐️ 8.0/10

SpaceX 宣布星舰第 15 次试飞中，飞船在约 22.5 小时、绕地球约 14 圈的飞行后返回得克萨斯州发射基地，并首次由发射塔机械臂直接捕获，实现轨道返回后的回收。任务还部署了 26 颗新一代星链 V3 卫星。不过超重型助推器未按计划返回发射塔，最终溅落在墨西哥湾，因此两级同时回收尚未实现。上述内容来自单一 Telegram 渠道转述的公司声明，尚无独立验证。

telegram · zaihuapd · 11月14日 23:49

**「背景」** 此次试飞是星舰第 15 次飞行测试，此前第 14 次任务中，超重型助推器已完成上升段、热分离、返航点火并在墨西哥湾受控溅落，飞船虽有一台猛禽真空发动机提前关机仍进入轨道，并部署了全部 26 颗星链 V3 卫星。本次任务在此基础上首次尝试让飞船上级返回发射场并由发射塔机械臂捕获，SpaceX 表示只有在飞控团队确认再入、着陆点火和塔架接近所需的关键系统正常后才会执行返回发射场。

**「对回收流程的影响」** 此次结果说明轨道级飞船的塔臂捕获已进入实际验证阶段，但助推器仍以海上溅落收场，意味着 SpaceX 尚未跑通两级都回到发射塔的完整复用流程；后续试飞需继续验证助推器返塔，才能兑现快速复用的设计目标。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Starship_flight_15">Starship flight 15 - Wikipedia</a></li>
<li><a href="https://www.spacex.com/launches/starship-flight-15">Starship Flight 15 - SpaceX</a></li>

</ul>
</details>

**标签**: `#spacex`, `#starship`, `#reusable-launch`, `#starlink`, `#aerospace-engineering`

---

<a id="item-tech-news-4"></a>
### [美团开源 LongCat-2.5，称训练全程未用英伟达 GPU](https://the-decoder.com/meituan-releases-a-1-6-trillion-parameter-agent-model-that-never-touched-an-nvidia-gpu/) ⭐️ 8.0/10

美团 LongCat 团队在模型正式发布一周后公开了 LongCat-2.5 的权重，该模型面向可自主完成冗长多步骤任务（尤其是编程任务）的智能体。官方称训练全程使用华为升腾加速卡、未使用英伟达 GPU；模型每个 token 激活约 480 亿参数，支持文本、图像和视频输入，权重以 MIT 许可证发布并可商用。官方给出的 Terminal Bench v2.1 得分为 88.4，略低于 Claude Opus 5 的 89.1。上述训练硬件与基准成绩均为厂商自述，尚未见到独立验证。

telegram · zaihuapd · 11月15日 11:08

**「背景」** LongCat-2.5 是美团 LongCat 系列的新一代模型。据 explainx 的一篇博客文章，其前代 LongCat 2.0 是一个 1.6 万亿参数的混合专家模型，同样以在非英伟达的 AI ASIC 超算集群上训练而闻名，并主打编程智能体基准。此次发布的 LongCat-2.5 延续了该系列在国产硬件上训练的思路，官方称训练全程使用华为升腾加速卡。

**「影响」** MIT 许可证允许直接商用和二次修改，因此关注智能体编程能力的团队可以自行部署或微调该模型，而不必依赖闭源 API。不过，若要在自有环境中复现其表现，需要先独立核验 88.4 的基准成绩，并评估华为升腾软件栈与现有英伟达工具链之间的迁移成本。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.explainx.ai/blog/longcat-2-5-1-6-trillion-agent-model-2026">LongCat 2.5: Meituan 1.6T Model Targets AI Agents | explainx ...</a></li>

</ul>
</details>

**标签**: `#open-source-models`, `#agentic-coding`, `#AI-hardware`, `#Huawei-Ascend`, `#LLM-release`

---

<a id="item-tech-news-5"></a>
### [EFF 请求上诉法院要求车牌识别搜索须获搜查令](https://www.eff.org/deeplinks/2026/11/were-asking-appeals-court-require-warrant-alpr-searches) ⭐️ 7.0/10

电子前哨基金会（EFF）已向上诉法院提交意见书，请求裁定警方对自动车牌识别（ALPR）系统的搜索必须取得搜查令。EFF 的论点是，覆盖全国、相互连接的 ALPR 摄像头网络持续追踪驾驶员行踪，这种追踪在第四修正案意义上构成“搜索”。目前这是 EFF 的诉讼主张与请求，法院尚未作出裁决，因此是否最终需要搜查令仍不确定。

hackernews · nobody9999 · 11月15日 02:00 · [社区讨论](https://news.ycombinator.com/item?id=50503255)

**「背景」** EFF 此前已在弗吉尼亚州上诉法院就同一类问题提出主张，要求访问 ALPR 数据库须取得搜查令，并主张维持下级法院以违反第四修正案为由排除相关证据的裁定（tool-2-1）。2026 年 10 月，俄克拉何马州一名法官也裁定，警方检索 ALPR 历史位置数据构成第四修正案意义上的搜查（tool-2-2）。此次 EFF 将同类论点提交至联邦上诉法院，争点在于全国性 ALPR 网络对驾驶轨迹的持续记录是否本身即构成搜查。

**「影响」** 若上诉法院采纳 EFF 的主张，执法机构访问 ALPR 历史数据将需先取得搜查令，依赖这些数据的调查流程和与商业 ALPR 供应商的合作方式可能随之调整；在裁决出台前，现有做法不受影响。

**「社区讨论」** 评论者普遍支持 EFF 的立场，但有人认为应更进一步：仅保留与有效搜查令相关的车牌“命中”记录，而非存储所有扫描数据。一位评论者以新罕布什尔州法律为例，指出该州禁止为日后分析而收集所有车牌、要求删除非命中图像并禁止将非命中影像上传至设备外，认为这可作为各州立法范本。另有评论者提出，即便数据被保留，也应加强受害者权利保护，使这些数据能真正用于案件侦破。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.eff.org/deeplinks/2025/09/eff-urges-virgina-court-appeals-require-search-warrants-access-alpr-databases">EFF Urges Virginia Court of Appeals to Require Search Warrants to...</a></li>
<li><a href="https://nondoc.com/2026/10/05/indiscriminate-mass-surveillance-judge-says-alpr-search-violated-fourth-amendment-in-meth-case/">&#x27;Indiscriminate mass surveillance&#x27;: Judge says ALPR search violated...</a></li>

</ul>
</details>

**标签**: `#surveillance`, `#privacy`, `#ALPR`, `#civil-liberties`, `#law`

---

<a id="item-tech-news-6"></a>
### [约 200 行纯 JAX 实现 DeepSeek V3 引关注](https://github.com/Vaibhaav-Tiwari/deepseek-v3-jax) ⭐️ 7.0/10

开发者 VaibhaavTiwari 在 Hacker News 上发布了 deepseek-v3-jax 项目，用约 200 行纯 JAX 代码从零实现 DeepSeek V3，定位是便于理解推理过程的教学性参考实现。项目并非官方发布或性能优化版本，作者也未给出基准测试数据。一位评论者称该实现已在其 16GB 显存的 AMD RX 7600 XT 上通过 ROCm 端到端跑通，但这是个人报告，尚未得到独立验证。

hackernews · VaibhaavTiwari · 11月14日 15:04 · [社区讨论](https://news.ycombinator.com/item?id=50497589)

**「背景」** DeepSeek V3 是 DeepSeek 发布的大规模混合专家（MoE）模型，官方仓库提供了模型权重与推理支持，例如 TensorRT-LLM 已支持该模型并给出 BF16 及 INT4/INT8 权重量化选项。此次项目并非官方发布，而是社区作者用约 200 行纯 JAX 代码从零复现该模型的推理流程，因此其价值在于教学与参考，而非替代官方实现。

**「实际影响」** 对没有 CUDA 环境的用户，这一实现提供了一条可尝试的路径：评论者 joebarbere 报告在 RX 7600 XT 上需要设置 HSA\_OVERRIDE\_GFX\_VERSION=11.0.0，因为 JAX 插件会拒绝 gfx1102 架构标识。是否支持纯 CPU 硬件（如 Intel Core Ultra 7）在讨论中有人提问，但未获答复。

**「社区讨论」** 讨论整体偏向学习价值：armcat 认为从第一性原理重建模型很有意义，并因此想重新拾起 JAX；mattfrommars 和 d\_tr 则询问或分享从零实现 LLM 的学习路线，后者提到正在读 Raschka 的书、用 C++ 和 AVX-512 手写 LLM。也有评论者对“200 行”的简洁程度表示惊讶，但没有人给出性能或正确性方面的对比结论。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/deepseek-ai/DeepSeek-V3">GitHub - deepseek -ai/ DeepSeek - V 3 · GitHub</a></li>

</ul>
</details>

**标签**: `#jax`, `#deepseek`, `#llm-inference`, `#open-source`, `#rocm`

---

<a id="item-tech-news-7"></a>
### [LongMemEval-S 达 96.0%：官方评审与检索深度取舍](https://www.reddit.com/r/MachineLearning/comments/1xwnloh/longmemevals_960_with_the_official_judge_and_what/) ⭐️ 7.0/10

Reddit r/MachineLearning 用户报告，其记忆检索系统 Papr 在 LongMemEval-S 全部 500 道题上取得 96.0% 成绩，使用官方答题提示词和未经修改的 gpt-4o-2024-08-06 评审模型，逐题答案与评审标签已公开，可用官方指标脚本复现。作者称检索召回接近饱和：470 道可答题中有 460 道（97.9%）的证据会话进入前 5，剩余错误多来自阅读模型而非检索。将检索深度从前 5 扩到前 20 并非免费收益：11 题变好、8 题变差，净增 3 题，时间推理从 133 题中的 123 题提升到 130 题，拒答保持 27/30 不变。作者同时披露局限：结果自报，使用 Papr-Embed 0.6B 嵌入模型、gemini flash 2.5 重排器和单轮答题模型，运行间波动约 ±3 题，因此 96.0% 与 Chronos 报告的 95.6% 应视为持平，且前 20 是在查看前 5 漏题后选定的，96.0% 属于在该数据集上调优的结果。

reddit · r/MachineLearning · /u/remoteinspace · 11月15日 05:40

**「背景」** LongMemEval 是评估聊天助手长期记忆能力的公开基准，包含 500 道需要跨多轮会话回忆、整合与时间推理的问题。据检索结果，LongMemEval-S 是其中用于横向比较系统的标准设置，另有历史更长的 M 版本作为压力测试，以及检索完全正确时的 oracle 版本作为上限参照。

**「对评测实践的影响」** 作者指出，同一检索下 gpt-5-mini 也能达到 94.4%，说明较小阅读模型可承担大部分工作；同时提醒 ±3 题的波动意味着与 95.6%、94.6% 等不同评审设置下的结果不宜直接分高下。复现者需注意前 20 的深度是在该题集上调过的，换数据集时应重新评估检索深度。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.emergentmind.com/topics/longmemeval-s-benchmark">LongMemEval-S Memory Benchmark - emergentmind.com GitHub - xiaowu0162/LongMemEval: Benchmarking Chat Assistants ... LongMemEval - xiaowu0162.github.io AI Agent Memory Benchmarks Explained (LongMemEval) LongMemEval — Public Benchmark | garrytan/gbrain-evals | DeepWiki LongMemEval: Scores, Settings and How to Run It (2026) LongMemEval benchmark results | RetainDB</a></li>
<li><a href="https://github.com/xiaowu0162/LongMemEval">GitHub - xiaowu0162/LongMemEval: Benchmarking Chat Assistants ...</a></li>
<li><a href="https://xiaowu0162.github.io/long-mem-eval/">LongMemEval - xiaowu0162.github.io</a></li>

</ul>
</details>

**标签**: `#long-context memory`, `#benchmarking`, `#retrieval-augmented generation`, `#LLM evaluation`, `#open source models`

---

<a id="item-tech-news-8"></a>
### [意大利以违规读取相册为由对 Meta 罚款 8.05 亿欧元](https://www.garanteprivacy.it/home/docweb/-/docweb-display/docweb/10321080) ⭐️ 7.0/10

意大利隐私监管机构 Garante Privacy 对 Meta 处以 8.05 亿欧元罚款，原因是 Facebook 的 Android 应用在未取得具体同意的情况下读取了约 2000 万意大利用户的相册照片、视频及元数据。涉事功能为 2023 年上线的相册推荐功能，默认开启且授权提示笼统。监管机构要求 Meta 在 60 天内将该功能改为默认关闭并单独征得用户同意，否则不得对未有效授权的用户启用该功能。

telegram · zaihuapd · 11月14日 14:37

**「背景」** 意大利数据保护局（Garante Privacy）此次处罚针对的是 Meta Platforms Ireland Limited 通过 Facebook Android 应用访问用户手机本地相册的行为。该机构认定，Meta 在未取得具体同意、也未充分告知的情况下读取了用户存储的照片、视频及相关元数据。

**「影响与整改要求」** 对意大利的 Facebook Android 用户而言，相册推荐功能须在 60 天内改为默认关闭，并需单独取得同意后才能启用；Meta 若未按期整改，该功能将无法对未有效授权的用户开放。这一处罚也表明，移动应用将相册读取等敏感权限与笼统授权提示捆绑、默认开启的做法，正面临更严格的合规审查。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.garanteprivacy.it/home/docweb/-/docweb-display/docweb/10321080">Facebook: il Garante Privacy sanziona Meta per 805 milioni di ...</a></li>
<li><a href="https://www.theguardian.com/technology/2026/nov/15/italy-fines-meta-887m-for-accessing-android-users-photos-and-videos">Italy fines Meta $887m for accessing Android users’ photos ...</a></li>

</ul>
</details>

**标签**: `#privacy`, `#regulation`, `#Meta`, `#mobile-apps`, `#consent`

---

<a id="item-tech-news-9"></a>
### [特斯拉 Cybercab 订阅协议：月租 299 美元，不订阅无法运行](https://www.tesla.com/configurator/api/v4/terms?category=autonomy_subs&amp;amp;locale=en_US&amp;amp;model=cc&amp;amp;saleType=Sale) ⭐️ 7.0/10

特斯拉公布的 Cybercab 自主驾驶订阅协议显示，车辆售价为 29,990 美元，车主须每月支付 299 美元订阅费，否则车辆无法运行。协议还规定特斯拉可提前一个月通知调价；欠费或违规使用可能导致订阅暂停或取消，累计三次警告将停用自动驾驶一周。车辆仅在指定区域运行，未经授权不得接入网约车、配送或租赁平台。上述条款来自 Telegram 频道对特斯拉配置器条款页面的转述，并援引 Electrek 与路透社的报道，尚未见特斯拉官方独立说明。

telegram · zaihuapd · 11月15日 01:10

**「背景」** 特斯拉此前已推出面向普通车主的 FSD 订阅服务，但该功能仍要求驾驶员全程监督，与用于 Robotaxi 的无人驾驶软件并不等同。此次 Cybercab 协议把订阅费与车辆能否运行直接绑定，并加入区域限制和平台接入限制，是特斯拉在软件定义汽车商业模式上的一次更严格尝试。

**「影响」** 对购车者而言，Cybercab 的实际使用成本由一次性车价变为“车价加持续订阅”，且订阅中断会直接导致车辆不可用，购车决策需把长期月费纳入考量。Electrek 指出，Cybercab 与用于 Robotaxi 的 Model Y 采用相同的 AI4 硬件并运行相同自动驾驶软件，但面向普通车主的 FSD 仍需人类监督，这意味着硬件相同并不等于使用权限相同。

**标签**: `#tesla`, `#autonomous-vehicles`, `#subscription-model`, `#software-defined-vehicle`, `#tech-industry`

---