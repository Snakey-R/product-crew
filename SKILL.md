---
name: product-crew
title: 1人就是一个团队-product-crew
description: 面向 LobeHub / TripYoYo 的 10 人 AI 产研团队 skill，让"一句话想法"经 PM→架构师→前端/后端→QA→DevOps 的 5 阶段流水线变成可交付代码。含 10 份精调 agent prompt、编排手册、一键部署脚本。
tags: [product, engineering, agent-team, pipeline, prompts, 产研, 团队]
license: MIT
version: 1.0.1
author: Snakey-R
repository: https://github.com/Snakey-R/product-crew
---

# product-crew

> **一句话想法 → 可交付代码**。10 人 AI 产研团队，5 阶段编排流水线，一条命令装完。

**English version → [`SKILL.en.md`](./SKILL.en.md)**

---

## 🎯 这是什么

一套面向 **内部工具 / 快速原型** 的 10 人 AI 产研 skill，可以一键装到你自己的 LobeHub / TripYoYo 工作区。装完你就有：

- **10 个精调过的 agent prompt**（5 核心 + 2 扩展 + 3 可选）
- **5 阶段编排手册**（PM → 架构师 → 前端 + 后端 → QA → DevOps）
- **一条命令安装**（`bash install.sh`）
- **真实案例参考**（RSS 推荐系统，端到端 ~3 小时）

## 📦 团队编制

```
📦 core-5（必装）              产研核心
├── 🎯 PM                     需求澄清、PRD、验收标准
├── 🏗️ 架构师 / Prompt 工程师   技术方案 + LLM prompt
├── 🎨 前端                    React/TypeScript
├── ⚙️ 后端                    Node/TS 或 Python、脚本
└── 🧪 QA + 安全 + 性能         测试、安全审计、性能剖析（3 合 1）

📦 extra-2（推荐）              高频专家
├── 📊 数据分析师               数据科学 + ML + 报表（3 合 1）
└── 🚀 DevOps                 CI/CD、launchd、监控告警

📦 optional-3（按需）           稀有场景
├── 🔬 UX 研究员                用户访谈、旅程地图
├── 🎯 品牌守护者                视觉/文案一致性
└── 📈 增长黑客                 AARRR、漏斗、传播
```

## 🚀 快速开始

### 安装

```bash
git clone https://github.com/Snakey-R/product-crew
cd product-crew

# 3 档任选：
bash install.sh --tier core     # 只装 5 人核心
bash install.sh --tier extra    # 核心 + 扩展（7 人）
bash install.sh --tier full     # 全部 10 人（默认）
```

安装脚本用 `lh` CLI（LobeHub / TripYoYo）把 agent 建到你的工作区。如果没装 `lh`，先装它。

### 使用

在主对话里按 5 阶段编排：

```
1. @🎯 PM       — 抛你的一句话想法，得 PRD
2. @🏗️ 架构师   — 得技术方案 + API 契约
3. @🎨 前端  ┬── 并行开工
   @⚙️ 后端  ┘
4. @🧪 QA       — 得测试报告 + ✅/⚠️/🚫 放行决策
5. @🚀 DevOps   — 得部署脚本（launchd/CI）
```

完整编排手册见 [`workflows/standard-5-stage.md`](./workflows/standard-5-stage.md)，真实案例见 [`examples/rss-recommendation-system.md`](./examples/rss-recommendation-system.md)。

## 💡 为什么是 5 阶段 + 10 人？

**不是 agent 越多越好** —— 是"谁做什么"必须分开，才能避免：

- ❌ PM 越权定技术栈（应该是架构师的事）
- ❌ 前端猜 API 形状（应该是后端/架构师定的契约）
- ❌ 边界 case 被漏掉（QA 应该有自己的清单，不是事后想起来）
- ❌ 安全 / 性能 review 被合并糊过去（QA 有明确的**模式切换**）

**三层分包**（核心 / 扩展 / 可选）让你**只装用得到的**。大多数项目只调用其中 4-5 个 agent。

## 📖 每份 agent 都做了什么调优

每个 agent 都针对以下场景调过：
- **内部工具场景**（脚本、bot、Dashboard、插件）—— 不是面向消费者的旗舰产品
- **小团队**（你是编排者 + 所有 agent；没有 50 人的流程包袱）
- **LobeHub / TripYoYo 运行时**（内建了具体的 plugin ID、model ID）

举例：PM 不会问"目标用户是谁？"或"北极星指标是什么？"—— 对一个 bot 脚本来说这些是仪式性噪音。

## 🛠️ 自定义

每份 agent 的 `.md` 都有 YAML frontmatter，装之前可以改：

```yaml
---
id: pm
emoji: 🎯
title: 产品经理
model: claude-opus-4-7      # 或 claude-sonnet-4-6、gpt-5 等
provider: ada               # 或 tripflow、openai、anthropic 等
plugins:
  - lobe-artifacts
  - mattpocock-skills-to-spec
---
```

## 🔗 相关

- **Matt Pocock 的工程 skills**（PM/架构师/前端/后端/QA 都装了 3 个作为方法论底座）—— 用 LobeHub Skill Store 时会自动可用

## ❓ FAQ

**Q：为什么不做 15 人甚至 20 人？**
A：本来就是 15 人。跑完 RSS 项目复盘发现 10 个"专家"被调用 0 次，稻草人。3 个数据类合成 1 个「📊 数据分析师」；安全 / 性能 / Prompt 分别并入 QA 和架构师。删了 5 个之后**能力没缺，噪音大幅降低**。

**Q：一定要用 LobeHub / TripYoYo 平台吗？**
A：`install.sh` 依赖 `lh` CLI，只在这两个平台跑。**但 10 份 agent prompt (`.md`) 是纯 Markdown**，可以手动复制到任何支持 system prompt 的客户端（Claude Desktop、ChatGPT、Cursor、Cline 等）。

**Q：我能改哪些？**
A：`agents/*.md` 的 YAML frontmatter（model / provider / plugins）随便改。`install.sh` 也是 bash 脚本，改成对接你自己的 CLI 也行。

**Q：为什么 QA agent 里有"安全审计"和"性能剖析"？**
A：因为原来是 3 个独立 agent，跑真实项目发现**从来不同时用**，浪费 slot。合并成一个 QA agent + 3 个模式（🧪 常规 / 🔐 安全 / ⚡ 性能）后，你说"帮我看下性能"就自动切模式，不用再选人。

## 📄 License

MIT — 拿去改，别再造轮子。
