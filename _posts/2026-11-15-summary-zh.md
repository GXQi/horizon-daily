---
layout: default
title: "Horizon Summary: 2026-11-15 (ZH)"
date: 2026-11-15
lang: zh
---

> 从 88 条内容中筛选出 16 条重要资讯。

---

**科技新闻**
1. [SpaceX 星舰第 15 次试飞后首次由发射塔机械臂捕获飞船](#item-tech-news-1) ⭐️ 8.0/10
2. [Lovable 生成应用因 RLS 不足泄露护照信息与逾 20 万条私信](#item-tech-news-2) ⭐️ 8.0/10
3. [美团开源 LongCat-2.5，称全程用华为升腾训练](#item-tech-news-3) ⭐️ 8.0/10
4. [纯 JAX 约 200 行实现 DeepSeek V3 推理](#item-tech-news-4) ⭐️ 7.0/10
5. [特斯拉 Cybercab 订阅协议：月租 299 美元才能运行](#item-tech-news-5) ⭐️ 7.0/10

**AI 教育**
1. [昆山市教育局为全市 2.7 万名教师配备 WorkBuddy](#item-ai-education-1) ⭐️ 7.0/10
2. [喀拉拉邦数字广场：百日内为全部低年级小学配电脑](#item-ai-education-2) ⭐️ 7.0/10
3. [台北市长蒋万安提出 92 亿元新台币 AI 教育计划](#item-ai-education-3) ⭐️ 6.0/10
4. [韩国国会教育委员会将听取高考 AI 眼镜作弊对策报告](#item-ai-education-4) ⭐️ 6.0/10
5. [韩国总统办公室将调查全国考试中的 AI 作弊](#item-ai-education-5) ⭐️ 6.0/10
6. [加州教育部门建议学校负责任地在课堂引入 AI](#item-ai-education-6) ⭐️ 5.0/10
7. [英国学生办公室：高校领导缺乏 AI 战略](#item-ai-education-7) ⭐️ 5.0/10
8. [CWU 调查：AI 培训与明确政策关联教师信心，未缓解作弊担忧](#item-ai-education-8) ⭐️ 5.0/10
9. [专家称 AI 错误频出，呼吁废除苏格兰课程改革](#item-ai-education-9) ⭐️ 5.0/10
10. [全国首家青少年人工智能学院首届学员结业](#item-ai-education-10) ⭐️ 5.0/10
11. [快手公益启动“启智星计划”，三年拟覆盖 2000 所乡村学校](#item-ai-education-11) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [SpaceX 星舰第 15 次试飞后首次由发射塔机械臂捕获飞船](https://www.spacex.com/launches/starship-flight-15) ⭐️ 8.0/10

SpaceX 宣布，星舰在第 15 次试飞中完成约 22.5 小时飞行、绕地球约 14 圈后返回得克萨斯州发射基地，并首次由发射塔机械臂直接捕获飞船。此次任务还部署了 26 颗新一代星链 V3 卫星。不过超重型助推器未按计划返回发射塔，最终溅落在墨西哥湾，因此两级同时回收尚未实现。上述信息来自 SpaceX 的发布及转述，具体技术细节尚未在现有材料中展开。

hackernews · ls612 · 11月14日 21:22 · [社区讨论](https://news.ycombinator.com/item?id=50500963)

**「背景」** 星舰此前已多次试飞，但本次第 15 次飞行是首次尝试用发射塔机械臂捕获飞船上级，此前捕获对象是超重型助推器。据直播报道，本次飞行还完成了级间分离、飞船入轨并部署全部 26 颗星链 V3 卫星。

**「影响与待验证问题」** 若飞船热防护在返回后保持完好并可再次飞行，回收并复用整艘飞船将直接关系到单位载荷入轨成本；目前仍需通过“双捕获”和同一艘飞船复飞来验证。对关注发射经济性的用户和开发者而言，关键观察点是飞船复用前的检查与翻修周期，以及助推器下次能否同步返回发射塔。

**「社区讨论」** 有评论认为，热防护能否经受住返回是决定成败的关键，下一步应看双捕获和同一飞船复飞。也有评论指出，助推器若多携带一些推进剂和氧化剂或许能同时被捕获，并称最终入轨质量分数仍不清楚，但完全可复用优于部分可复用。另有用户追问此次捕获与以往捕获操作有何不同，现有评论未给出明确回答。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.youtube.com/watch?v=Kus39IK-ZvQ">SPACE X STARSHIP FLIGHT 15 LIVE | First-Ever Orbital... - YouTube</a></li>
<li><a href="https://www.zerohedge.com/technology/watch-live-spacex-targets-historic-starship-booster-double-chopsticks-catch">Elon Musk&#x27;s &#x27;Mechazilla&#x27; Catches Starship Rocket In... | ZeroHedg...</a></li>

</ul>
</details>

**标签**: `#spacex`, `#starship`, `#reusable-rockets`, `#spaceflight`, `#engineering`

---

<a id="item-tech-news-2"></a>
### [Lovable 生成应用因 RLS 不足泄露护照信息与逾 20 万条私信](https://www.crissyfield.de/research/lovable-en/) ⭐️ 8.0/10

安全研究指出，使用 Lovable AI 应用构建器生成的部分应用因行级安全（Row-Level Security）配置不足，暴露了护照信息和超过 20 万条私人消息。Lovable 安全负责人 Igor 在评论中确认，这些应用的根因是 RLS 不足，并称平台会在发布前自动扫描每个应用、提供免费的深度 SAST 扫描，用户可手动选择“修复”或开启后台自动修复。该结论来自第三方研究者的报告和厂商回应，尚无独立机构复现或量化受影响应用的数量。

hackernews · armcat · 11月14日 17:43 · [社区讨论](https://news.ycombinator.com/item?id=50499017)

**「背景」** 行级安全（Row-Level Security，RLS）是 Supabase 等基于 Postgres 的后端用来限制每行数据可被哪些用户读写的机制，Supabase 官方文档将其列为保护 Data API 的核心手段之一。此次事件中，Lovable 生成的应用正是因 RLS 配置不足而暴露数据；Lovable 安全负责人也在评论中确认这一根因，并称平台会在发布前自动扫描应用。

**「影响与应对」** 对使用 Lovable 构建并接入 Supabase 等后端的开发者而言，发布前应自行核查数据库的 RLS 策略是否真正启用，而不能仅依赖平台扫描结果；评论者指出，已有项目可能仍沿用旧的默认配置。对终端用户来说，这类应用的数据可能仅通过浏览器网络请求检查即可读取，无需复杂攻击手段。

**「社区讨论」** 评论者 SOLAR\_FIELDS 认为 Supabase 也负有责任，称其多年前为降低上手门槛而选择了较宽松的默认配置，并提到相关讨论称问题在 10 月 30 日修复，但有报告称既有项目仍沿用旧默认值。另有评论者 liquid\_thyme 和 Oras 主张平台应采用默认拒绝的数据库、最小权限 API 和自动化鉴权测试，并指出 AI 生成应用数量多、易被探测，普通用户难以判断其风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://supabase.com/docs/guides/api/securing-your-api">Securing your API | Supabase Docs</a></li>

</ul>
</details>

**标签**: `#security`, `#vibe-coding`, `#row-level-security`, `#supabase`, `#ai-code-generation`

---

<a id="item-tech-news-3"></a>
### [美团开源 LongCat-2.5，称全程用华为升腾训练](https://the-decoder.com/meituan-releases-a-1-6-trillion-parameter-agent-model-that-never-touched-an-nvidia-gpu/) ⭐️ 8.0/10

美团 LongCat 团队在模型正式发布一周后公开了 LongCat-2.5 的权重，采用 MIT 许可证，允许商用。该模型面向可自主完成冗长多步骤任务（尤其是编程）的智能体，每个 token 激活约 480 亿参数，支持文本、图像和视频输入。官方称训练全程使用华为升腾加速卡、未使用英伟达 GPU，这一硬件说法目前仅为厂商声明，尚无独立验证。在 Terminal Bench v2.1 上得分为 88.4，略低于 Claude Opus 5 的 89.1。

telegram · zaihuapd · 11月15日 11:08

**「背景」** LongCat 是美团旗下的大模型团队，此前已发布过 LongCat-2.0，并以 MIT 许可证在 GitHub、Hugging Face 和 ModelScope 上开放权重；据外部报道，该版本发布后华为升腾、摩尔线程等国产芯片厂商随即宣布推理兼容。此次 LongCat-2.5 延续了开源路线，但规模提升至 1.6 万亿参数，并主打长程智能体任务与多模态输入。

**「影响」** MIT 许可证和可商用条款意味着企业可以直接将权重用于自有智能体产品，而无需就授权与美团另行协商。若升腾训练的说法得到独立验证，则表明大规模智能体模型可以在非英伟达硬件栈上完成训练；在此之前，计划复现或微调该模型的团队仍需自行评估其训练基础设施的兼容性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.longcatai.org/">LongCat AI - LongCat - 2 . 5 Native Multimodal Agent Model (1.6T)</a></li>
<li><a href="https://www.ainchina.com/blog/meituan-longcat-2-trillion-domestic-chips-china-ai-independence-2026/">How Meituan Built a Trillion-Parameter AI Model on 50,000 Domestic...</a></li>

</ul>
</details>

**标签**: `#open-source models`, `#agent models`, `#Huawei Ascend`, `#AI hardware`, `#LLM benchmarks`

---

<a id="item-tech-news-4"></a>
### [纯 JAX 约 200 行实现 DeepSeek V3 推理](https://github.com/Vaibhaav-Tiwari/deepseek-v3-jax) ⭐️ 7.0/10

开发者 VaibhaavTiwari 在 Hacker News 上发布了 deepseek-v3-jax 项目，用约 200 行纯 JAX 代码从零实现 DeepSeek V3 推理，定位为便于理解原理的最小参考实现。项目本身未附带性能数据或与官方实现的对比结果，其价值主要来自代码的简洁性和可读性。评论区有用户报告称，该实现已在其消费级 AMD 显卡上端到端跑通。

hackernews · VaibhaavTiwari · 11月14日 15:04 · [社区讨论](https://news.ycombinator.com/item?id=50497589)

**「背景」** DeepSeek V3 是 DeepSeek 发布的大规模混合专家（MoE）模型，官方仓库提供了模型权重与推理支持，例如 TensorRT-LLM 对 BF16 和 INT4/INT8 权重量化的支持，FP8 支持当时仍在推进中。此次项目并非官方发布，而是社区作者用约 200 行纯 JAX 代码从零重写 V3 推理流程，作为理解模型结构的最小参考实现。

**「实际影响」** 对没有 CUDA 环境的用户来说，这个项目提供了一条可操作的入门路径：评论者 joebarbere 表示，这是首个在其 RX 7600 XT 16GB 上端到端运行的项目，并指出需要设置 HSA\_OVERRIDE\_GFX\_VERSION=11.0.0，因为 JAX 插件会拒绝 gfx1102。不过这些只是单个用户的硬件经验，项目是否支持纯 CPU 等其他环境，目前尚无答复。

**「社区讨论」** 多位评论者认可“从第一性原理重建模型”的教学价值，armcat 称这类项目让他想重新拾起 JAX。也有初学者（mattfrommars）询问是否有理解推理实现的学习路线，另有用户（madduci）追问能否在纯 CPU 的 Intel Core Ultra 7 上运行，但未获明确答复。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/deepseek-ai/DeepSeek-V3">GitHub - deepseek -ai/ DeepSeek - V 3 · GitHub</a></li>

</ul>
</details>

**标签**: `#jax`, `#deepseek`, `#llm-inference`, `#open-source`, `#rocm`

---

<a id="item-tech-news-5"></a>
### [特斯拉 Cybercab 订阅协议：月租 299 美元才能运行](https://www.tesla.com/configurator/api/v4/terms?category=autonomy_subs&amp;amp;locale=en_US&amp;amp;model=cc&amp;amp;saleType=Sale) ⭐️ 7.0/10

特斯拉公布的 Cybercab 自主驾驶订阅协议显示，车辆售价为 29,990 美元，车主须每月支付 299 美元订阅费，否则车辆无法运行。协议还规定特斯拉可提前一个月通知调价，欠费或违规使用可能导致订阅暂停或取消，累计三次警告将停用自动驾驶一周。车辆仅在指定区域运行，未经授权不得接入网约车、配送或租赁平台。上述条款来自特斯拉配置器接口的协议文本，经 Telegram 频道转述并援引 Electrek 和路透社，尚待特斯拉官方进一步确认。

telegram · zaihuapd · 11月15日 01:10

**「背景」** Cybercab 是特斯拉为 Robotaxi 网约车服务设计的双座纯电自动驾驶车型，本身没有方向盘和踏板。此前该车主要面向特斯拉自营车队，此次订阅协议则首次把个人购买与按月付费的自动驾驶服务绑定在一起。

**「对车主的影响」** 按协议条款，Cybercab 的购车支出并不等于获得完整使用权，车主需持续付费才能保持车辆可运行，且调价权掌握在特斯拉手中。有意将车辆投入网约车、配送或租赁用途的车主，还需先获得授权，否则可能触发订阅限制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Tesla_Cybercab">Tesla Cybercab - Wikipedia</a></li>
<li><a href="https://www.zerohedge.com/technology/tesla-opens-cybercab-orders-select-customers-personal-use">Tesla Opens Cybercab Orders To &quot;Select Customers...&quot; | ZeroHedge</a></li>

</ul>
</details>

**标签**: `#autonomous-vehicles`, `#tesla`, `#subscription-model`, `#software-defined-vehicle`, `#tech-industry`

---

## AI 教育

<a id="item-ai-education-1"></a>
### [昆山市教育局为全市 2.7 万名教师配备 WorkBuddy](https://www.jiemodui.com/N/139659.html) ⭐️ 7.0/10

据芥末堆报道，昆山市教育局正在为全市约 2.7 万名教师配备 WorkBuddy 人工智能工具。报道仅以一句话提及 WorkBuddy 正在进入越来越多的学校，未说明该部署的启动时间、采购方式、费用承担方，也未提供使用范围或效果数据。因此，目前只能确认这是一项面向全市教师的配备安排，尚不能判断其是否已全面落地或产生实际影响。

rss · 芥末堆 · 11月15日 09:05

**「背景」** 腾讯 WorkBuddy 教育公益版于 10 月 19 日上线，据腾讯公司公关总监张军 10 月 22 日披露，已有超过 10 万名教师完成申领，覆盖全国 1467 个城市、4.5 万所学校。昆山市教育局此次为全市 2.7 万名教师配备 WorkBuddy，是在该公益版已向全国教师开放申领的背景下，以一个城市教育行政部门为单位推进的整建制部署。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.100ec.cn/detail--6665128.html">超10万名 教 师 申领腾讯 WorkBuddy 教 育 公益版 AI ...</a></li>

</ul>
</details>

**标签**: `#AI in education`, `#teacher tools`, `#citywide deployment`, `#China edtech`, `#procurement`

---

<a id="item-ai-education-2"></a>
### [喀拉拉邦数字广场：百日内为全部低年级小学配电脑](https://news.google.com/rss/articles/CBMilAJBVV95cUxQSlJ2U01haTB3UzlnOHlyeTNNN29oRndza1N0bTVJU1ljaGhYUDFZY2lJRjdiQjdjOTZpN1ROaTVPRkcxZ29PLUlkVXdKeWVXaU1zRDlOc3M4ckZUbHhTZ3VDcjBQd3k5Z013aUxFdDNRM1lOQmJ1QWFYNHFsWU41VXlnbUM3eFk2TEFwMGJRa2NJZTdkbGNzRVQxcUVKRHdLWnlaUFM5XzVxVlVSVFBKNTFWUlo0V3hqNVJuT21HN1lScjlJV1NFT0plcUJ3c2lhbmxWWk91WDdNVWRWWVFhMFJrc0xfUExLZWNyLVk5Y0pqX2Z6WjdROHR3TVNIMC00UGdEbE9vaHBzZDVtS0xnMzZyc3U?oc=5) ⭐️ 7.0/10

印度喀拉拉邦的“数字广场”（Digital Square）项目计划在 100 天内为邦内所有低年级小学配备电脑，并为高中学生引入 AI 学习内容。该消息由《Education Times》报道，属于邦级政府部署计划，报道未给出覆盖学生或教师人数、预算规模，也未提供学习成效证据。

rss · Google News · AI 教育\(EN\) · 11月15日 05:50

**「背景」** 喀拉拉邦的“数字广场”（Digital Square）项目覆盖小学阶段学校，而人工智能与机器人培训面向高中学生；据外部报道，该项目计划覆盖约 6000 所学校。当前来源未说明该项目此前是否已有阶段或版本，也未提供学生人数、预算或学习成效证据。

**「影响」** 若计划按期推进，喀拉拉邦低年级小学需在 100 天内完成电脑到位，高中阶段则需开设或接入 AI 学习内容；由于报道未说明设备维护、师资培训与经费安排，这些环节的落实情况仍不明确。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://urbanacres.in/kerala-digital-square-project-to-reach-6000-schools/">Digital Square Project to Cover 6,000 Kerala Schools</a></li>

</ul>
</details>

**标签**: `#Kerala`, `#AI literacy`, `#school infrastructure`, `#government policy`, `#edtech deployment`

---

<a id="item-ai-education-3"></a>
### [台北市长蒋万安提出 92 亿元新台币 AI 教育计划](https://news.google.com/rss/articles/CBMitAFBVV95cUxNTUVmeG52NWxxbjNqUkFINjZQRGtQU1BWQWJFakhNUWptZW45V0Y0eWxCS2V6cjZaNFNfN0g4QnhxWTcwV3FtdEwzOVdBZTJMQmpYc3JXWElEQjhWNEFqYllWMkcxekRlZFZyNTFfRUVGTWZQUzFfQ2ZtbXlldXcxeWp5TUZGMTMyN3k1YWNTOUdGUzdseWtKeTEzMEJ3dzRMTlhQRDVfa0FIQWxjOGhyaEp4bDc?oc=5) ⭐️ 6.0/10

据《台北时报》报道，台北市长蒋万安提出一项总额 92 亿元新台币的 AI 教育计划。该报道未说明计划覆盖的学生或教师人数、具体实施时间表，也未说明市议会或相关主管部门是否已批准。因此，这目前只是一项提案，尚不构成已生效的政策或已启动的部署。

rss · Google News · AI 教育\(EN\) · 11月14日 22:37

**「背景」** 台北市长蒋万安自 2022 年起任职。据外部报道，他公布的这项 AI 教育计划为期四年、总额新台币 92 亿元（约 2.88 亿美元），内容包括为全市每间教室安装智能屏幕，并建设一座 AI 教育中心。该计划目前仍属市长提出的方案，来源未说明市议会审议、批准时间或具体实施安排。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Chiang_Wan-an">Chiang Wan - an - Wikipedia</a></li>
<li><a href="https://completeaitraining.com/news/chiang-wan-an-unveils-nt92-billion-ai-education-plan-for/">Chiang Wan - an unveils NT $ 9 . 2 billion AI education plan for Taipei</a></li>
<li><a href="https://www.taipeitimes.com/News/taiwan/archives/2026/07/04/2003860214">Chiang Wan - an unveils plans for Taipei AI education - Taipei Times</a></li>

</ul>
</details>

**标签**: `#AI education policy`, `#Taipei`, `#education funding`, `#AI literacy`

---

<a id="item-ai-education-4"></a>
### [韩国国会教育委员会将听取高考 AI 眼镜作弊对策报告](https://news.google.com/rss/articles/CBMiZkFVX3lxTE9KdWRJS3ItMWVVRGljVDdIWFRFaGtjTWt3RDg1bVVxWTRXRzVxOXNFNndYNHEzT0xCRVktTUoyS0FWbkhwU3FMdW9kRmxSRng4VWsyNlBQVHJKcEVZcnR1SkJoekhOQQ?oc=5) ⭐️ 6.0/10

韩国国会教育委员会定于 16 日召开紧急会议，听取有关“高考 AI 眼镜作弊对策”的报告，重点讨论针对韩国高考（CSAT）的防作弊措施。该消息由多家韩媒报道，但目前披露的内容仅为会议安排与议题方向，尚未公布具体措施、适用范围、生效日期或涉及的学生与考点数量。这属于立法委员会层面的政策讨论与报告听取，尚不构成已确定的规则或已实施的措施。

rss · Google News · AI 教育\(EN\) · 11月15日 07:26

**「背景」** 此次报告是韩国围绕高考（CSAT）考场中 AI 智能眼镜作弊问题采取应对措施的后续环节。据外部报道，韩国教育部门此前已表示将寻求对使用 AI 智能眼镜作弊的学生追究刑事责任，并处以三年禁考 CSAT 的处罚，同时计划在全部 1,312 个考点各配备一台智能眼镜筛查设备。本次国会教育委员会听取的报告，正是在这一既有政策方向下，就高考防作弊具体方案进行说明。

**「潜在影响」** 若后续形成具体方案，考生在 CSAT 考场携带或使用 AI 智能眼镜的规则、监考人员的检查流程以及考点执行方式都可能随之调整；但在报告内容公开前，尚无法确认任何新的合规要求或处罚标准。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.aichatdaily.com/ai-news/south-korea-seek-criminal-charges-ai-smart-glasses-cheating">South Korea to seek criminal charges for AI smart- glasses cheating ...</a></li>
<li><a href="https://nlap.news/en/articles/n76/">South Korean test-takers swap thick-rimmed glasses for metal frames...</a></li>

</ul>
</details>

**标签**: `#assessment security`, `#CSAT`, `#AI glasses`, `#exam policy`, `#South Korea`

---

<a id="item-ai-education-5"></a>
### [韩国总统办公室将调查全国考试中的 AI 作弊](https://news.google.com/rss/articles/CBMif0FVX3lxTE9DZUVaUWY0b3dPYnFINjdfWlJqeDVWdmVnaWRINVFobmdxRGs1VWxvN2pDbEVOc2NrR0JfUWg0X1pyN2FQN1VTcXJhUlFXSVNDWUE1SXVZRmktMFZBdXVHSTFYUlg4aUhlNE9hdFd1Vzg2TjE2UFhSajNHOWN4YXPSAZMBQVVfeXFMUEUySVpWc0ZKZGV6QVdsYUM4am80OEQ5U1ZNTk5tSElDUjdBRG9tN2tGXzBJZWh5SHVZcG1qbWxzS19rbnBOUzBMZm9yREx5ck1HanJFenVsc1ZmaVBQZ2NVTU1hOWVpeEFGWjA4N2FDR092SmdLU1dERzBIVml3dHp6ZDVDZksxXzVqVkR4SjNEdTZR?oc=5) ⭐️ 6.0/10

据 Chosunbiz 报道，韩国总统办公室（青瓦台）将针对全国性考试中借助人工智能作弊的情况展开调查。报道仅给出标题，未说明调查范围、涉及哪些考试、启动时间、调查方式或可能出台的处置规则。因此，目前这只是一项已宣布的调查动向，尚不构成已生效的考试规则或已测得的作弊规模。

rss · Google News · AI 教育\(EN\) · 11月15日 07:50

**「背景」** 该报道仅提供标题，未说明调查的启动时间、范围或此前是否已有相关规定。同一来源列表中另有一条亚洲经济（아시아경제）的报道，标题为“教育部门在 CSAT 前高度戒备防范 AI 作弊”，表明此次调查与韩国高考（CSAT）前的防作弊警戒处于同一背景，但现有材料未确认两者之间的直接因果关系。

**标签**: `#AI cheating`, `#national exams`, `#assessment policy`, `#South Korea`, `#academic integrity`

---

<a id="item-ai-education-6"></a>
### [加州教育部门建议学校负责任地在课堂引入 AI](https://news.google.com/rss/articles/CBMiygFBVV95cUxOZEJ1Qk8zMk9pdlFvTUw2VC0zcVNDYWc1WVFablFXY3FTTHFiTmRzVjBBeWxDYTFnbExCbE1TWXpsYkxnNExaVkVqdWlsVFRjbnhyci1fQjloNFVJOWZCNjZ6ZE1NYmVhTGxJN01KeVJlVERnSUtkYUEyUm1uMTVXRVFVUDJMdFRFcVZIUGxVZUQ4VkFnV2d2Rjl5LXRGQ2xBMkwwNWVhZ01lNGdnNmZva1o3V2Y0Nkp6Y1gyX1RMUDlVWHRqTU9HUEtn?oc=5) ⭐️ 5.0/10

据《门多西诺之声》报道，加利福尼亚州教育部门建议学校在课堂中负责任地引入人工智能。该报道仅提供标题层面的信息，未说明这份指导文件的具体内容、适用范围、生效日期或是否具有强制性。因此，目前只能确认这是一项州级教育部门的指导性表态，而非已生效的强制规定或经评估的教学成效。

rss · Google News · AI 教育\(EN\) · 11月14日 23:00

**「背景」** 该报道仅提供标题，未说明加州教育部门这份指导意见的具体内容、适用范围、生效时间或是否具有强制性。因此，目前无法确认它是否取代或延续了此前任何具体的加州 AI 教育政策。

**标签**: `#AI policy`, `#AI literacy`, `#K-12 education`, `#California`, `#classroom guidance`

---

<a id="item-ai-education-7"></a>
### [英国学生办公室：高校领导缺乏 AI 战略](https://news.google.com/rss/articles/CBMid0FVX3lxTFA5VWctRXp4a0xtOXRweEZFcXdKb2RBUmdPMUcycFVPUWxRcENhTWxmTzltbnlrQ3QyMjBfVWEzOXdWRGNvakgxZmFaUDliaFJBVFNjNi1xUElaV3hUOWFSYWs3U2NVN2hlQzZBZ3NQWS1jV3pTTlhv?oc=5) ⭐️ 5.0/10

据 University World News 报道，英国学生办公室（OfS）指出，大学领导层在人工智能使用上缺乏战略性的方法。该报道未提供报告的具体发现、涉及院校数量、时间表或由此产生的监管要求，因此目前只能视为监管机构的一项公开表态，而非已生效的规则或可量化的评估结果。

rss · Google News · AI 教育\(EN\) · 11月15日 07:00

**「背景」** 英国学生办公室（OfS）此次指出高校领导层缺乏 AI 使用的战略方法，但所给来源仅为标题与链接，未提供该结论所依据的报告名称、调查范围、数据或发布时间等细节。工具检索结果中也没有 OfS 此前就同一议题发布过的文件或规定可供对照，因此目前无法确认这一表态是延续既有监管立场，还是首次提出。

**标签**: `#AI policy`, `#higher education`, `#university governance`, `#UK regulation`

---

<a id="item-ai-education-8"></a>
### [CWU 调查：AI 培训与明确政策关联教师信心，未缓解作弊担忧](https://news.google.com/rss/articles/CBMi8wFBVV95cUxNRjV6NEdDYmdWWXFnRk1jbFVYOEgwTTNseTZXcmNOaEpnTncya01UU1QtMG9RU0lZNzFhY2FSYkxhd3RDcDFHWVNuRnlKVGhWWDNNb2tUM1pIRWRLZy1td0thaE1uYl90SlZvaVdHNUhXd2pIQTlET0UtU1BzV1JKZmpKaVk2UVJMc0M0SlFhRG9keG1kaGQzcUV4cTNrZDBsVEJlN1loZ3FkTUV3MEt2SWtQTVR6Z0NpQTV4eVNKZ3Q3LTVtbmFwTFVKZmV4cVplVXA5NkhDY1ROTUduZVJsVDAzU2gtMnIwTnI1VUFmdEg0RWM?oc=5) ⭐️ 5.0/10

据 MarketScale 报道，中央华盛顿大学（Central Washington University）的一项调查发现，教师接受 AI 培训以及学校有明确的 AI 政策，与教师对 AI 的信心相关，但并未与作弊担忧的减少相关。该结果来自教师调查中的感知数据，所提供内容未说明调查的样本规模、实施时间或具体政策变化。

rss · Google News · AI 教育\(EN\) · 11月14日 19:36

**「背景」** 该调查关注高等教育中教师对 AI 的准备程度与学术诚信问题，将 AI 培训和政策清晰度作为两个变量，分别考察其与教师信心和作弊担忧的关系。所提供内容未交代此前是否有同类调查或该校既有的 AI 政策。

**「影响」** 对高校而言，这一结果提示仅靠提供 AI 培训和明确政策，可能提升教师使用 AI 的信心，却不足以消除教师对学生作弊的担忧；若机构希望同时处理学术诚信问题，可能需要另行设计针对性措施。由于来源未公布样本量和统计细节，上述关联应视为调查中的感知性发现，而非因果结论。

**标签**: `#teacher survey`, `#AI training`, `#academic integrity`, `#AI policy`, `#higher education`

---

<a id="item-ai-education-9"></a>
### [专家称 AI 错误频出，呼吁废除苏格兰课程改革](https://news.google.com/rss/articles/CBMirgFBVV95cUxNb0RpaUJoaXlOanlDeVFONUdUeTFaYUg2ZjNKcGJ1aGNTVzBIc21WYThqTktJUHh5MVhBeHp0RlMtdjliX3BNTExSQWp6cDJrU0VfTnJuaXRuWkphMGhNdFAxc2RQM2JaWEoyMTViLVdBd3RNMzgwRzJZbGFFWHFkcHp4Wkg0RVBOZW51eWJfLWNXal9kNkJWSDBIS2RYY1BkSjNqZmJFZVZ2azlpd0E?oc=5) ⭐️ 5.0/10

据《先驱报》（The Herald）报道，一位专家呼吁废除苏格兰的课程改革，理由是与人工智能相关的错误。该报道目前仅提供标题和链接，未说明这位专家的身份、所指“AI 错误”的具体内容，也未说明改革涉及的范围、受影响的学生或教师人数，以及任何官方回应或决定。因此，这目前只是一项政策辩论中的主张，尚不构成已出台的规则或已确认的变更。

rss · Google News · AI 教育\(EN\) · 11月15日 06:03

**「背景」** 苏格兰的课程改革以“卓越课程”（Curriculum for Excellence）为框架，该框架旨在帮助儿童和青少年获得知识、技能与素养，以应对 21 世纪的生活。据苏格兰教育机构介绍，这一课程体系由教育苏格兰（Education Scotland）与利益相关方、学习者、从业者及社区合作推进。目前，该报道仅提供标题和链接，未说明所指的“AI 错误”具体是什么，也未交代这位专家的身份或改革被要求废止的具体范围。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://education.gov.scot/curriculum-for-excellence/">Curriculum for Excellence | Education Scotland</a></li>
<li><a href="https://scotlandscurriculum.scot/">Scotland &#x27;s Curriculum for Excellence</a></li>

</ul>
</details>

**标签**: `#AI policy`, `#curriculum reform`, `#Scotland`, `#AI errors`, `#education governance`

---

<a id="item-ai-education-10"></a>
### [全国首家青少年人工智能学院首届学员结业](https://news.google.com/rss/articles/CBMiYEFVX3lxTE90c2wwTnJOdFAwTlAwXzhVR3lwRVVKTHB0TDI1b1BwZUFSaktLME93NzUwZUtReGhBMWVEa2w4djV1SjlhOUxRQ0l3LTIyNWsyeUNlLTVPZkpRNHkwNWQwTQ?oc=5) ⭐️ 5.0/10

澎湃新闻（ThePaper.cn）报道，全国首家青少年人工智能学院首届学员已结业，报道同时提出 AI 教育应关注什么的问题。由于目前仅有标题和链接，来源未提供学院名称、所在地、结业学员人数、课程内容、结业时间及评价方式等具体信息，也未见主管部门或合作机构的说明。该消息属于机构层面的阶段性节点，尚不能据此判断其教学成效或政策影响。

rss · Google News · AI 教育\(ZH\) · 11月14日 12:48

**「背景」** 该报道仅提供标题与链接，未说明这所“全国首家青少年人工智能学院”的设立时间、主办单位、课程设置或首届结业学员人数，也未交代此前是否有相关试点或政策铺垫。因此，在现有材料下无法确认其与此前任何具体项目或政策的直接承接关系。

**标签**: `#AI education`, `#China`, `#youth AI academy`, `#AI literacy`, `#graduation milestone`

---

<a id="item-ai-education-11"></a>
### [快手公益启动“启智星计划”，三年拟覆盖 2000 所乡村学校](https://news.google.com/rss/articles/CBMiiAFBVV95cUxNTlh4Y1Y2bmx3T2xyMHIwYlNOWFJzcGVrY2RwXzd5SUlCTkdIQ29VQkVTVkxSLXRKbGxtaXZ4NUVibmRveWRaMmdRSlNETUt4NFZGaDJSZnZ2Q1JnbFZfYkxnVmx6cDlFT2Uwd0YybGlmbzRDQWRjRVg1dmRQRk85VGE4S1o1THFV?oc=5) ⭐️ 5.0/10

快手公益于 2026 年 11 月 15 日前后宣布启动“启智星计划”，称将利用 AI 创新教育，并在未来三年覆盖 2000 所乡村学校。该消息由搜狐报道，属于企业公益项目的启动公告，目前没有披露课程内容、部署方式、师资培训安排或已实现的效果数据。覆盖 2000 所学校是项目设定的目标，而非已经完成或经独立评估的结果。

rss · Google News · AI 教育\(ZH\) · 11月15日 08:39

**「背景」** 该计划是快手公益在乡村教育领域的新项目，报道未说明其是否延续或替代此前的具体项目，也未给出与既有乡村教育公益项目的衔接关系。由于缺乏项目细节，目前无法判断其与同类企业 AI 教育公益项目的差异。

**「影响」** 若目标落实，相关乡村学校将获得 AI 教育相关资源，但报道未说明学校需承担的设备、网络或教师培训成本，也未提及学生数据隐私与合规安排。在课程形式、实施主体和评估方式公布前，外界尚无法核验该计划的实际教学效果。

**标签**: `#AI literacy`, `#rural education`, `#corporate philanthropy`, `#China`, `#edtech deployment`

---