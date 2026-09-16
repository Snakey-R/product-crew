# product-crew

> 🎯 10-agent product engineering team for LobeHub / TripYoYo — turn a one-line idea into shippable code via a 5-stage pipeline.

**[中文说明](./SKILL.md#) · [English](#english) · [Live case study](./examples/rss-recommendation-system.md)**

---

## English

A ready-to-install **agent team** for LobeHub / TripYoYo, tuned for **internal tooling and rapid prototyping**.

### What you get

- 🎯 **10 pre-tuned agent prompts** (5 core + 2 extra + 3 optional)
- 📋 **5-stage orchestration workflow** (PM → Architect → Frontend + Backend → QA → DevOps)
- 🚀 **One-command install** via `lh` CLI
- 📖 **Real-world case study** (RSS recommendation system, ~3 hours end-to-end)

### Quick start

```bash
git clone https://github.com/Snakey-R/product-crew
cd product-crew
bash install.sh --tier full     # or --tier core / --tier extra
```

See [`SKILL.md`](./SKILL.md) for full documentation.

---

## 中文

一套面向 **内部工具 / 快速原型** 的 10 人 AI 产研团队。

```
🎯 PM → 🏗️ 架构师 → 🎨 前端 + ⚙️ 后端 → 🧪 QA → 🚀 DevOps
                                              (可选)
```

### 一句话解释

把"一句话想法"变成"可交付代码"，中间不掉链子。**每个 agent 只做自己该做的事**：
- PM 不 hack 技术栈
- 前端不猜 API
- QA 有自己的模式（🧪 常规 / 🔐 安全 / ⚡ 性能）
- 部署脚本有回滚方式

### 三层包结构

```
📦 core-5 (必装)                产研核心
├── 🎯 PM
├── 🏗️ 架构师 / Prompt 工程师
├── 🎨 前端
├── ⚙️ 后端
└── 🧪 QA + 安全 + 性能

📦 extra-2 (推荐)               高频专家
├── 📊 数据分析师（DS + ML + 报表 三合一）
└── 🚀 DevOps

📦 optional-3 (按需)            稀有场景
├── 🔬 UX 研究员
├── 🎯 品牌守护者
└── 📈 增长黑客
```

### 快速安装

```bash
git clone https://github.com/Snakey-R/product-crew
cd product-crew

# 3 种档位任选：
bash install.sh --tier core     # 只装 5 人核心
bash install.sh --tier extra    # 核心 + 扩展（7 人）
bash install.sh --tier full     # 全部 10 人（默认）
```

### 使用

在主对话里按 5 阶段编排：

1. **`@🎯 PM`** 抛你的一句话想法 → 得 PRD
2. **`@🏗️ 架构师`** → 得技术方案 + API 契约
3. **`@🎨 前端`** + **`@⚙️ 后端`** 并行开工
4. **`@🧪 QA`** → 得测试报告 + 放行决策
5. **`@🚀 DevOps`** → 得部署脚本（如需）

完整编排手册见 [`workflows/standard-5-stage.md`](./workflows/standard-5-stage.md)。

### 真实案例

看看这套流水线怎么在 **~3 小时** 内把一句话 "加个 RSS 订阅推荐系统" 变成可上线代码：

[`examples/rss-recommendation-system.md`](./examples/rss-recommendation-system.md)

---

## FAQ

**Q: 为什么不做 15 个甚至 20 个 agent？**
A: 我原来就是 15 个。RSS 项目跑完复盘发现 10 个专家只用过 0 次，稻草人。3 个数据类合并成 1 个「📊 数据分析师」，安全 / 性能 / Prompt 合并进 QA 和架构师。删了 5 个之后**能力没缺失，噪音大幅降低**。

**Q: 一定要用 LobeHub / TripYoYo 平台吗？**
A: `install.sh` 用的是 `lh` CLI，只在这两个平台跑。**但 10 份 agent prompt (`.md`) 是纯 Markdown**，可以手动复制到任何支持 system prompt 的 AI 客户端（Claude Desktop、ChatGPT、Cursor、Cline 等）。

**Q: 我能改哪些？**
A: `agents/*.md` 的 YAML frontmatter（model / provider / plugins）可以随便改。`install.sh` 也是 bash 脚本，改成对接你自己的 CLI 也行。

**Q: Matt Pocock 的 skills 是什么？**
A: 一套开源的工程 skills（wayfinder / to-spec / implement / tdd / code-review 等）。核心 5 个 agent 各装了 3 个 Matt Pocock skill 作为工作方法论基础。你不装也能跑，装了效果更好。

## License

MIT
