# TripYoYo 技能商店介绍文案

> 用于 TripYoYo 技能商店 / LobeHub Market / 掘金 / 微信推文 等分发渠道的**中文介绍文案**。
> 3 个位置：标题 / 一句话简介 / 详情页说明。

---

## 📝 标题（Title）

```
1人就是一个团队 · product-crew
```

---

## 📝 一句话简介（Short Description）

**主推**（36 字）：
```
一句话想法 → 可交付代码。10 人 AI 产研团队，5 阶段流水线，一条命令装完。
```

**备选**（60 字，字数限制更松时用）：
```
把一句话想法变成可交付代码。装完就有 PM、架构师、前端、后端、QA、DevOps 等 10 人团队，按 5 阶段流水线接力交付，不掉链子。
```

---

## 📝 详情页说明（Long Description）

## 🎯 这是什么

一套面向**内部工具 / 快速原型**的 10 人 AI 产研 skill，一键装到你的 TripYoYo 工作区。装完你就有：

- **10 个精调过的 agent**（5 核心 + 2 扩展 + 3 可选）
- **5 阶段编排流水线**（PM → 架构师 → 前端 + 后端 → QA → DevOps）
- **一条命令部署**（`bash install.sh`）
- **真实案例参考**（RSS 推荐系统，端到端 ~3 小时）

## 📦 团队编制

### 📦 core-5（必装）产研核心
- 🎯 **PM** — 需求澄清、PRD、验收标准
- 🏗️ **架构师 / Prompt 工程师** — 技术方案 + LLM prompt
- 🎨 **前端** — React / TypeScript
- ⚙️ **后端** — Node/TS 或 Python，脚本 / bot
- 🧪 **QA + 安全 + 性能** — 测试、安全审计、性能剖析（3 合 1）

### 📦 extra-2（推荐）高频专家
- 📊 **数据分析师** — 数据科学 + ML + 报表（3 合 1）
- 🚀 **DevOps** — CI/CD、launchd、监控告警

### 📦 optional-3（按需）稀有场景
- 🔬 **UX 研究员** — 用户访谈、旅程地图
- 🎯 **品牌守护者** — 视觉/文案一致性
- 📈 **增长黑客** — AARRR、漏斗、传播

## 🚀 怎么用

装完后，在主对话里按 5 阶段编排：

1. **@🎯 PM** 抛你的一句话想法 → 得 PRD
2. **@🏗️ 架构师** → 得技术方案 + API 契约
3. **@🎨 前端** + **@⚙️ 后端** 并行开工
4. **@🧪 QA** → 得测试报告 + ✅ / ⚠️ / 🚫 放行决策
5. **@🚀 DevOps** → 得部署脚本（如需）

## 💡 为什么是 10 人？

**不是 agent 越多越好** —— 分工清楚才能避免：

- ❌ PM 越权定技术栈
- ❌ 前端猜 API 形状
- ❌ 边界 case 事后想起来
- ❌ 安全 / 性能被合并糊过去

**三层分包**让你按需装 —— 大多数项目只调用 4-5 个 agent。

## 🎯 适合谁

- 独立开发者 / 内部工具作者 / 设计师转产研
- 需要**快速把想法变成可跑代码**，又不想每次从零对齐流程
- 用 TripYoYo / LobeHub，日常做脚本、bot、Dashboard、Figma 插件、Agent Skill

## 🚫 不适合谁

- 大团队严格 Scrum 流程（本 skill 假设你是编排者 + agent 团队）
- 面向消费者的旗舰产品（PRD 模板走的是内部工具风格）
- 追求 100% 自动化流水线（本 skill 是 human-in-the-loop，你是项目经理）

## 📖 真实案例

RSS 推荐系统 —— 一句话 *"加个 RSS 订阅推荐系统"* 到可上线代码，端到端 ~3 小时：

- 🎯 PM 出 PRD：15 分钟
- 🏗️ 架构师技术方案：20 分钟
- ⚙️ 后端代码：90 分钟
- 🧪 QA 验收 + 迭代：30 分钟
- 🚀 DevOps launchd 部署：15 分钟

详见 GitHub `examples/rss-recommendation-system.md`。

## 🔗 GitHub 源码

https://github.com/Snakey-R/product-crew

- 10 份 agent prompt 是纯 Markdown，可以手抄到 Claude Desktop / Cursor / Cline 等任何客户端
- MIT License，欢迎 fork / 改造 / 提 issue

## 📝 版本

v1.0.1 — 中英双语 + 中文 title 字段
