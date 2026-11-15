---
layout: default
title: "Horizon Summary: 2026-11-15 (ZH)"
date: 2026-11-15
lang: zh
---

> 从 52 条内容中筛选出 11 条重要资讯。

---

**科技新闻**
1. [Lovable 生成应用暴露护照信息与逾 20 万条私信](#item-tech-news-1) ⭐️ 8.0/10
2. [SpaceX 第 15 次试飞成功回收星舰助推器](#item-tech-news-2) ⭐️ 8.0/10
3. [星舰第 15 次试飞：飞船首次轨道返回后被机械臂捕获](#item-tech-news-3) ⭐️ 8.0/10
4. [美团开源 LongCat-2.5，称训练全程未用英伟达 GPU](#item-tech-news-4) ⭐️ 8.0/10
5. [法院驳回三星、SK 海力士、美光 DRAM 价格操纵案撤诉动议](#item-tech-news-5) ⭐️ 7.0/10
6. [Show HN：约 200 行纯 JAX 实现 DeepSeek V3 推理](#item-tech-news-6) ⭐️ 7.0/10
7. [特斯拉 Cybercab 订阅协议：月租 299 美元才能运行](#item-tech-news-7) ⭐️ 7.0/10

**AI 教育**
1. [昆山市教育局为全市 2.7 万名教师配备 WorkBuddy](#item-ai-education-1) ⭐️ 7.0/10
2. [全国首家青少年人工智能学院首届学员结业](#item-ai-education-2) ⭐️ 5.0/10
3. [快手公益启动“启智星计划”，三年拟覆盖 2000 所乡村学校](#item-ai-education-3) ⭐️ 5.0/10
4. [韩国国会教育委员会 16 日紧急讨论高考 AI 眼镜作弊对策](#item-ai-education-4) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Lovable 生成应用暴露护照信息与逾 20 万条私信](https://www.crissyfield.de/research/lovable-en/) ⭐️ 8.0/10

安全研究指出，使用 Lovable AI 应用构建器生成的应用因行级安全（Row-Level Security）配置不足及平台默认设置不安全，暴露了包括护照信息在内的敏感用户数据，以及超过 20 万条私人消息。Lovable 安全负责人 Igor 在讨论中回应称，根本原因是这些应用的行级安全不足，而 Lovable 的扫描正是为捕捉此类问题而设计：每次发布前自动扫描，并提供更深入的 SAST 扫描，两者对所有用户免费，用户可点击“Fix”修复或启用后台自动修复。该报告由作者 neathack 发布，其两周前首次提交未获关注，此次重新提交后引发大量讨论。

hackernews · armcat · 11月14日 17:43 · [社区讨论](https://news.ycombinator.com/item?id=50499017)

**「背景」** Supabase 允许客户端用公开的 anon key 直接访问数据库，其安全性依赖 Postgres 的行级安全（Row-Level Security，RLS）：若未正确配置策略，任何持有该 key 的客户端都能读写任意数据行。评论中有人指出，Supabase 多年前为降低接入门槛而选择了较宽松的默认设置，相关讨论称该问题在 10 月 30 日被修复，但已有项目可能仍沿用旧默认值。

**「影响与应对」** 对使用 Lovable 构建并依赖 Supabase 的应用开发者而言，这意味着默认配置可能让数据库在未正确设置行级安全时对外暴露数据，且攻击者只需检查浏览器网络请求即可发现，无需复杂黑客技术。开发者应主动核查自己应用的行级安全策略，并利用 Lovable 提供的发布前扫描、SAST 扫描和自动修复功能来降低风险。

**「社区讨论」** 评论者 SOLAR\_FIELDS 认为 Supabase 也负有责任，指出其多年前为降低入门门槛而做出的安全取舍，并称相关默认设置据报对现有项目仍然生效。评论者 Oras 则指出，数据泄露早于 AI 存在，但 AI 生成应用数量庞大、易于被利用，且普通用户不了解其风险。另有评论者 liquid\_thyme 呼吁平台采用默认拒绝的数据库、最小权限 API 和自动化认证测试等更安全的默认设置。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://supabase.com/docs/guides/database/postgres/row-level-security">Row Level Security - Supabase Docs</a></li>
<li><a href="https://www.agilesoftlabs.com/blog/2026/06/supabase-row-level-security-guide-2026">Supabase Row Level Security Guide 2026: Real Examples</a></li>
<li><a href="https://scanmyapp.dev/blog/supabase-row-level-security-explained">Supabase Row Level Security Explained (RLS Policies)</a></li>

</ul>
</details>

**标签**: `#security`, `#AI-generated code`, `#Supabase`, `#vulnerability disclosure`, `#app builders`

---

<a id="item-tech-news-2"></a>
### [SpaceX 第 15 次试飞成功回收星舰助推器](https://www.spacex.com/launches/starship-flight-15) ⭐️ 8.0/10

SpaceX 在星舰第 15 次飞行测试结束时成功用发射塔机械臂捕获了超重型助推器。公司通过官方社交账号和直播视频公布了这一结果，但未披露捕获高度、助推器状态或复用检查等具体技术参数。此次捕获是迈向完全可复用运载火箭的一步，但热防护罩耐久性和重复飞行经济性仍未得到验证。

hackernews · ls612 · 11月14日 21:22 · [社区讨论](https://news.ycombinator.com/item?id=50500963)

**「背景」** Flight 15 之前，SpaceX 已在 Flight 14 中验证了超重型助推器完成上升段、热分离、返航点火并受控溅落墨西哥湾，同时飞船在部分发动机提前关机的情况下仍进入轨道并部署了 26 颗 Starlink V3 卫星。据第三方回顾报道，本次 Flight 15 于 2026 年 11 月 13 日从得州 Starbase 的 2 号发射台升空，助推器 Booster 22 并未被捕获，而是改道溅落墨西哥湾；飞船 Ship 42 进入轨道、部署全部 26 颗 Starlink V3 卫星后于次日下午返回并被发射塔捕获。

**「影响与待验证问题」** 对关注发射成本的一方而言，关键仍在于热防护罩能否经受再入、同一艘飞船能否复飞并再次被捕获；在这些得到验证之前，单位载荷入轨成本的下降幅度无法确定。评论者 ChuckMcM 还指出，本次只捕获了助推器，若多加注少量推进剂或许能同时捕获两级，并称最终入轨质量分数仍不清楚。

**「社区讨论」** 有评论者认为，若热防护罩经受住考验，下一步应是双捕获和同一飞船复飞，从而显著降低入轨成本；也有人追问此次捕获与以往捕获有何不同。ChuckMcM 祝贺工程团队，并称按成本估算猎鹰 9 号仅约 60%可复用，因此完全可复用更具价值。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Starship_flight_15">Starship flight 15 - Wikipedia</a></li>
<li><a href="https://thespaceroad.com/articles/starship-flight-15-recap/">Starship Flight 15 recap: did SpaceX catch the booster and ...</a></li>

</ul>
</details>

**标签**: `#spacex`, `#starship`, `#reusable-rockets`, `#aerospace-engineering`, `#spaceflight`

---

<a id="item-tech-news-3"></a>
### [星舰第 15 次试飞：飞船首次轨道返回后被机械臂捕获](https://www.spacex.com/launches/starship-flight-15) ⭐️ 8.0/10

SpaceX 宣布星舰第 15 次试飞中，飞船在约 22.5 小时飞行、绕地球约 14 圈后返回得克萨斯州发射基地，并首次由发射塔机械臂直接捕获，实现轨道返回后的回收。任务还部署了 26 颗新一代星链 V3 卫星。不过超重型助推器未按计划返回发射塔，最终溅落在墨西哥湾，因此两级同时回收尚未实现。上述信息来自 SpaceX 的宣布及二手摘要，尚无独立技术细节核实。

telegram · zaihuapd · 11月14日 23:49

**「背景」** 星舰此前多次试飞已逐步验证再入与回收流程，但飞船在轨道返回后由发射塔机械臂直接捕获尚属首次。此次第 15 次试飞原计划同时回收超重型助推器，但助推器未能返回发射塔，最终溅落墨西哥湾。

**「影响」** 若该结果得到确认，机械臂捕获轨道返回飞船意味着 SpaceX 可将回收环节从海上溅落转为塔上直接接住，为后续飞船快速复用减少打捞与运输步骤；但本次助推器仍溅落海面，两级同时回收的目标尚未达成，复用节奏仍受助推器回收方式制约。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://english.news.cn/20261114/216818cc74184b938ed1904d233369aa/c.html">SpaceX launches 15 th Starship flight test, Super Heavy booster ...</a></li>
<li><a href="https://www.nytimes.com/live/2026/11/14/science/spacex-starship-launch">SpaceX Makes History With Successful Rocket Landing in Texas</a></li>

</ul>
</details>

**标签**: `#spacex`, `#starship`, `#reusable-spacecraft`, `#starlink`, `#aerospace-engineering`

---

<a id="item-tech-news-4"></a>
### [美团开源 LongCat-2.5，称训练全程未用英伟达 GPU](https://the-decoder.com/meituan-releases-a-1-6-trillion-parameter-agent-model-that-never-touched-an-nvidia-gpu/) ⭐️ 8.0/10

美团 LongCat 团队在模型正式发布一周后公开了 LongCat-2.5 的权重，采用 MIT 许可证，允许商用。该模型面向可自主完成冗长多步骤任务的智能体，尤其针对编程场景，每个 token 激活约 480 亿参数，支持文本、图像和视频输入。官方称其训练全程使用华为升腾加速卡、未使用英伟达 GPU，这一说法目前仅为厂商自述，尚未获得独立验证。在 Terminal Bench v2.1 上，LongCat-2.5 得分 88.4，略低于 Claude Opus 5 的 89.1。

telegram · zaihuapd · 11月15日 11:08

**「背景」** 美团 LongCat 团队此前已发布 LongCat-2.0，并声称它是首个在 5 万张国产加速卡集群上完成全流程训练与推理的万亿参数模型，随后以 MIT 许可证开源。据外部报道，升腾、沐曦等国产芯片厂商在 LongCat-2.0 开源后迅速宣布推理兼容。此次 LongCat-2.5 延续了国产芯片训练路线，参数量提升至 1.6T，并转向面向长程任务的智能体与多模态能力。

**「影响与注意」** 对希望商用或二次开发的团队而言，MIT 许可证降低了使用门槛，但“全程未用英伟达 GPU”的训练声明仍需第三方复现或审计才能确认，评估硬件供应链独立性时应将其视为待验证的厂商说法。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://promptyze.com/meituans-longcat-2-0-breaks-nvidia/">Meituan ’s LongCat - 2 .0 Breaks the Nvidia Barrier — 1 . 6 T Parameters ...</a></li>
<li><a href="https://www.longcatai.org/">LongCat AI - LongCat - 2 . 5 Native Multimodal Agent Model ( 1 . 6 T)</a></li>
<li><a href="https://www.ainchina.com/blog/meituan-longcat-2-trillion-domestic-chips-china-ai-independence-2026/">How Meituan Built a Trillion - Parameter AI Model on 50,000 Domestic...</a></li>

</ul>
</details>

**标签**: `#open-source models`, `#LLM agents`, `#AI hardware`, `#Huawei Ascend`, `#model release`

---

<a id="item-tech-news-5"></a>
### [法院驳回三星、SK 海力士、美光 DRAM 价格操纵案撤诉动议](https://litnews.ai/articles/garciaguirre-samsung-sk-hynix-micron-dram-conspiracy-suit-survives-dismissal) ⭐️ 7.0/10

美国一家法院驳回了针对三星、SK 海力士和美光的 DRAM 价格操纵共谋诉讼的撤诉动议，案件将继续审理。这意味着原告关于三家内存厂商合谋抬高 DRAM 价格的指控尚未被法院否定，相关主张将进入后续程序。目前公开信息仅确认了这一程序性进展，尚未披露法院的具体理由、案件编号或审理时间表。

hackernews · ybathaee · 11月15日 01:18 · [社区讨论](https://news.ycombinator.com/item?id=50502988)

**「背景」** 这起诉讼的核心指控是三星、SK 海力士与美光合谋削减 DDR5 等传统 DRAM 的供应，并将产能转向 HBM。据搜索结果，法官 Noël Wise 全面驳回了三方的联合撤诉动议，并认定本案并非 2022 年第九巡回法院维持驳回的早期 DRAM 反垄断案（DRAM II）的重演。

**「影响」** 对需要采购大容量内存的开发者和小型机构而言，这一诉讼进展本身不会立即改变现货价格，但案件继续推进意味着三家主要 DRAM 供应商的定价行为将受到更持续的司法审视。有评论者提到，256GB 内存与 32GB 显存级别的 GPU 各自报价已达四五千美元，正在挤压科研工作站的预算。

**「社区讨论」** 评论者对市场结构看法分歧：PeterStuer 认为这是三家寡头的“囚徒困境”，且这些厂商此前已有明确合谋记录，新进入者难以立足；sysguest 则质疑“垄断破坏市场”的说法，认为 DDR4 到 DDR5 属于真实升级，且中国厂商能供应大量 DDR4 芯片。ketzu 表示自己对该市场了解不足，但指出在 AI 泡沫疑虑下，厂商不愿大举投资扩产也可能是不合谋的合理解释，同时承认鉴于以往合谋历史，不能排除再次合谋。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://litnews.ai/articles/garciaguirre-samsung-sk-hynix-micron-dram-conspiracy-suit-survives-dismissal">Judge Refuses to Dismiss DRAM Supply Conspiracy Suit Against ...</a></li>

</ul>
</details>

**标签**: `#DRAM`, `#hardware pricing`, `#antitrust`, `#semiconductors`, `#memory market`

---

<a id="item-tech-news-6"></a>
### [Show HN：约 200 行纯 JAX 实现 DeepSeek V3 推理](https://github.com/Vaibhaav-Tiwari/deepseek-v3-jax) ⭐️ 7.0/10

开发者 VaibhaavTiwari 在 Hacker News 发布了一个 Show HN 项目，用约 200 行纯 JAX 代码从零重写 DeepSeek V3 的推理流程。项目定位是教学与参考实现，强调以第一性原理理解这个大型 MoE 模型的推理内部结构，而非追求性能或生产可用性。帖子本身未提供更多技术细节，实际运行情况主要来自评论者反馈。

hackernews · VaibhaavTiwari · 11月14日 15:04 · [社区讨论](https://news.ycombinator.com/item?id=50497589)

**「背景」** DeepSeek V3 是一个混合专家（MoE）语言模型，总参数量 671B，但每个 token 仅激活约 37B 参数，这一架构特点使其推理实现比同等规模的稠密模型更复杂。该项目用约 200 行纯 JAX 代码从零复现其推理流程，属于面向学习与参考的实现，而非官方发布或性能优化版本。

**「影响」** 对想弄清 DeepSeek V3 推理细节的开发者来说，这个项目提供了一个可通读的参考实现。一位使用 RX 7600 XT 16GB 的评论者称，这是首个在其 AMD ROCm 环境上端到端跑通的项目，但需要设置 HSA\_OVERRIDE\_GFX\_VERSION=11.0.0，因为 JAX 插件不接受 gfx1102；这说明在非 CUDA 硬件上运行仍可能需要手动调整环境变量。另有评论者询问该实现能否在纯 CPU（Intel Core Ultra 7）上运行，目前没有明确答复。

**「社区讨论」** 评论普遍肯定“从第一性原理重建模型”的学习价值，有人表示因此想重新拾起 JAX。实际体验方面，上述 ROCm 用户报告了在消费级 AMD 显卡上的成功运行及所需的环境变量变通；也有读者希望获得理解推理实现的学习路线图，或询问纯 CPU 支持情况。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/deepseek-ai/DeepSeek-V3-Base">deepseek -ai/ DeepSeek - V 3 -Base · Hugging Face</a></li>
<li><a href="https://disruptive-concepts.com/article/deepseek-v3-moe-efficiency-frontier">DeepSeek - V 3 : A 671B- parameter Mixture - of - Experts model that</a></li>

</ul>
</details>

**标签**: `#jax`, `#deepseek`, `#llm-inference`, `#rocm`, `#open-source`

---

<a id="item-tech-news-7"></a>
### [特斯拉 Cybercab 订阅协议：月租 299 美元才能运行](https://www.tesla.com/configurator/api/v4/terms?category=autonomy_subs&amp;amp;locale=en_US&amp;amp;model=cc&amp;amp;saleType=Sale) ⭐️ 7.0/10

特斯拉公布的 Cybercab 订阅协议显示，车辆售价为 29,990 美元，车主还须每月支付 299 美元订阅费，否则车辆无法运行。特斯拉可提前一个月通知调价；欠费或违规使用可能导致订阅暂停或取消，累计三次警告则停用自动驾驶一周。车辆仅在指定区域运行，未经授权不得接入网约车、配送或租赁平台。上述条款来自一份订阅协议页面，目前尚属公布条款而非独立验证的实测结果。

telegram · zaihuapd · 11月15日 01:10

**「背景」** 特斯拉此前主要将 Cybercab 定位为 Robotaxi 专用车型，而路透社报道称，特斯拉于 2026 年 11 月 14 日宣布邀请部分客户以个人用途购买 Cybercab，这是其向普通消费者交付全自主设计车辆的一步。此次披露的订阅协议正是这一销售安排所附带的条款，Electrek 将其描述为：没有每月 299 美元的订阅，这辆 29,990 美元的双座车就无法使用。

**「对车主的影响」** 对购车者而言，Cybercab 的实际使用成本包含持续订阅费，且使用范围与商业运营受到合同限制；一旦欠费或多次违规，自动驾驶功能会被暂停，车辆可能无法按预期使用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://electrek.co/2026/11/14/tesla-cybercab-autonomy-subscription-agreement-terms/">Tesla Cybercab&#x27;s autonomy agreement is insane: $299/mo or it ...</a></li>
<li><a href="https://www.reuters.com/business/autos-transportation/tesla-invites-select-customers-buy-cybercab-personal-use-2026-11-14/">Tesla invites select customers to buy Cybercab for personal ...</a></li>

</ul>
</details>

**标签**: `#autonomous vehicles`, `#Tesla`, `#subscription model`, `#AI hardware`, `#tech industry`

---

## AI 教育

<a id="item-ai-education-1"></a>
### [昆山市教育局为全市 2.7 万名教师配备 WorkBuddy](https://www.jiemodui.com/N/139659.html) ⭐️ 7.0/10

据芥末堆报道，昆山市教育局正在为全市约 2.7 万名教师配备 WorkBuddy 人工智能工具。目前公开信息仅有标题和一句“WorkBuddy 正在进入越来越多的学校”，尚未披露采购金额、部署时间表、合同条款或使用效果评估。该消息属于地方教育部门推动的规模化配备举措，而非已公布结果的试点或强制规定。

rss · 芥末堆 · 11月15日 09:05

**「背景」** WorkBuddy 由腾讯云代码助手推出，定位为可自主规划并交付多模态任务的 AI Agent 办公工具；其教育公益版由腾讯 SSV 数字教育实验室联合 WorkBuddy 及北京大学专家团队出品，面向中小学教师提供教学辅助。昆山市教育局此次为全市 2.7 万名教师配备该工具，是在这一教育公益版产品基础上推进的区域性部署。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.workbuddy.cn/education/">WorkBuddy 教育公益版 | 为中小学教师配备教学好助理</a></li>
<li><a href="https://www.workbuddy.cn/">WorkBuddy - AI Agent 办公新范式</a></li>

</ul>
</details>

**标签**: `#AI deployment`, `#teacher tools`, `#China edtech`, `#K-12`, `#procurement`

---

<a id="item-ai-education-2"></a>
### [全国首家青少年人工智能学院首届学员结业](https://news.google.com/rss/articles/CBMiYEFVX3lxTE90c2wwTnJOdFAwTlAwXzhVR3lwRVVKTHB0TDI1b1BwZUFSaktLME93NzUwZUtReGhBMWVEa2w4djV1SjlhOUxRQ0l3LTIyNWsyeUNlLTVPZkpRNHkwNWQwTQ?oc=5) ⭐️ 5.0/10

澎湃新闻（ThePaper.cn）报道称，全国首家青少年人工智能学院首届学员已结业，并由此提出 AI 教育应关注哪些问题。由于目前仅有标题和链接、没有正文内容，该学院的名称、所在地、首届学员人数、课程设置、结业时间及结业标准等具体信息均无法核实。报道属于一所机构的首届结业动态，而非全国性政策规定或经测量的教学成效。

rss · Google News · AI 教育\(ZH\) · 11月14日 12:48

**「背景」** 上海青少年人工智能学院由中国福利会与上海交通大学于 2024 年 8 月携手共建，定位为全国首家青少年人工智能学院，旨在整合产学研资源、探索青少年人工智能拔尖创新人才的前置培养模式。经过两年多场景化实践，首届 50 名学员完成培养并于 2026 年 11 月 14 日结业，其中两人已被中国科学技术大学少年班提前录取；同日，中福会、上海交大还分别与上海创智学院、上海人工智能实验室签署合作共育协议。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.163.com/dy/article/LBPB1PE4055040N3.html">上海青少年人工智能学院首届学员结业，课程体系升级2.0版|教育|上海交...</a></li>
<li><a href="https://k.sina.cn/article_5044281310_12ca99fde02002lx80.html">全国首家青少年人工智能学院首届学员结业，AI教育需要关注什么？|上海...</a></li>
<li><a href="https://www.toutiao.com/article/7708008712853684745/">全国首家青少年人工智能学院首届学员结业，AI教育需要关注什么？ - 今...</a></li>

</ul>
</details>

**标签**: `#AI literacy`, `#youth AI education`, `#China`, `#program graduation`, `#curriculum`

---

<a id="item-ai-education-3"></a>
### [快手公益启动“启智星计划”，三年拟覆盖 2000 所乡村学校](https://news.google.com/rss/articles/CBMiiAFBVV95cUxNTlh4Y1Y2bmx3T2xyMHIwYlNOWFJzcGVrY2RwXzd5SUlCTkdIQ29VQkVTVkxSLXRKbGxtaXZ4NUVibmRveWRaMmdRSlNETUt4NFZGaDJSZnZ2Q1JnbFZfYkxnVmx6cDlFT2Uwd0YybGlmbzRDQWRjRVg1dmRQRk85VGE4S1o1THFV?oc=5) ⭐️ 5.0/10

快手公益宣布启动“启智星计划”，称将利用 AI 创新教育，并计划在未来三年覆盖 2000 所乡村学校。该消息由搜狐报道，发布于 2026 年 11 月 15 日。目前公开信息仅包含项目名称、AI 教育方向和三年 2000 所学校的目标，属于企业公益项目的启动公告，尚未披露具体课程内容、部署方式、实施时间表或已取得的效果数据。

rss · Google News · AI 教育\(ZH\) · 11月15日 08:39

**「背景」** 快手公益此前已发布“启智星”计划，提出未来三年投入千万级资金，结合快手可灵 AI 技术改善乡村学校硬件设施、丰富科技活动、提升教师 AI 素养并拓展学生科技视野（tool-2-1）。此次启动是该计划的正式落地，覆盖 2000 所乡村学校的目标与前述规划一致。

**「影响与待观察事项」** 若目标落实，相关乡村学校将获得由快手公益提供的 AI 教育相关资源，但现阶段无法判断教师需要承担哪些具体工作、项目如何进入课堂，以及是否涉及学生数据采集与隐私合规安排。2000 所学校是前瞻性承诺而非已实现结果，后续需关注项目是否公布分年度实施计划、学校遴选标准和效果评估方式。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.pai.com.cn/news/01ke962tetxahwrshwmrmah2kj">快 手 公 益 发布“ 启 智 星 ” 计 划 将覆盖超过 2000 所 乡 村 学 校 - 电商派</a></li>

</ul>
</details>

**标签**: `#AI literacy`, `#rural education`, `#corporate philanthropy`, `#China`, `#education access`

---

<a id="item-ai-education-4"></a>
### [韩国国会教育委员会 16 日紧急讨论高考 AI 眼镜作弊对策](https://news.google.com/rss/articles/CBMiW0FVX3lxTFBkeXdxdkg0TlRLZ1FidFl5RldjOGplaWlBWG0tSkFod3FsUVQzU29jcnRxSU5QMVo5NkxPeTd4bmxIZEJIMTRSLW0zX3lucTlNZGtHWGRrZl91TTA?oc=5) ⭐️ 5.0/10

据亚洲日报报道，韩国国会教育委员会将于 16 日召开紧急会议，讨论针对高考中使用 AI 眼镜作弊的应对措施。目前可获得的报道内容仅有标题及来源信息，会议的具体提案、适用规则、生效时间与会议结果均未披露，因此这仍属政策讨论阶段，尚不能视为已确定的规则变更。

rss · Google News · AI 教育\(ZH\) · 11月15日 07:24

**「背景」** 据亚洲日报报道，韩国国会教育委员会将于 16 日召开紧急会议，讨论针对高考中 AI 眼镜作弊的应对措施。所提供的内容仅包含标题和来源信息，未说明拟议规则、生效日期或会议结果，因此这仍是一场政策讨论，而非已确定的规则变更。

**标签**: `#AI cheating`, `#exam integrity`, `#assessment policy`, `#AI glasses`, `#South Korea`

---