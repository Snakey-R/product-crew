# product-crew

> 🎯 **一句话想法 → 可交付代码**。10 人 AI 产研团队 skill，5 阶段编排流水线，一条命令装完。

**中文版 · [English](./README.en.md) · [完整文档 SKILL.md](./SKILL.md) · [真实案例](./examples/rss-recommendation-system.md)**

---

## 🚀 一分钟上手

```bash
git clone https://github.com/Snakey-R/product-crew
cd product-crew
bash install.sh --tier full     # 或 --tier core / --tier extra
```

装完就有 10 个 agent 到你的 LobeHub / TripYoYo 工作区。用法：

```
1. @🎯 PM       抛你的一句话，得 PRD
2. @🏗️ 架构师   得技术方案 + API 契约
3. @🎨 前端 + @⚙️ 后端 并行开工
4. @🧪 QA       得测试报告 + ✅/⚠️/🚫 放行决策
5. @🚀 DevOps   得部署脚本
```

## 🎯 一句话解释

把"一句话想法"变成"可交付代码"，中间不掉链子。**每个 agent 只做自己该做的事**：

- PM 不 hack 技术栈
- 前端不猜 API
- QA 有明确模式（🧪 常规 / 🔐 安全 / ⚡ 性能）
- 部署脚本必带回滚方式

## 📦 三层团队编制

```
📦 core-5（必装）              产研核心
├── 🎯 PM
├── 🏗️ 架构师 / Prompt 工程师
├── 🎨 前端
├── ⚙️ 后端
└── 🧪 QA + 安全 + 性能

📦 extra-2（推荐）              高频专家
├── 📊 数据分析师（DS + ML + 报表 3 合 1）
└── 🚀 DevOps

📦 optional-3（按需）           稀有场景
├── 🔬 UX 研究员
├── 🎯 品牌守护者
└── 📈 增长黑客
```

## 🧭 我需要装哪些？

| 你的项目类型 | 推荐档位 |
|---|---|
| 快速验证 / MVP / 脚本 | `--tier core`（5 人够用） |
| 完整产品 / 需要部署 / 有数据看板 | `--tier extra`（7 人） |
| 有 UX 研究 / 品牌资产 / 增长实验 | `--tier full`（10 人） |

**大部分项目只调用 4-5 个 agent。三层分包让你按需装。**

## 📖 真实案例

看看这套流水线怎么在 **~3 小时** 内把一句话 *"加个 RSS 订阅推荐系统"* 变成可上线代码：

👉 [`examples/rss-recommendation-system.md`](./examples/rss-recommendation-system.md)

## 🛠️ 完整文档

- **[`SKILL.md`](./SKILL.md)** — Skill 主文档（完整说明 + FAQ）
- **[`workflows/standard-5-stage.md`](./workflows/standard-5-stage.md)** — 5 阶段编排手册
- **[`agents/`](./agents)** — 10 份 agent prompt 源文件
- **[`install.sh`](./install.sh)** — 一键部署脚本

## 💬 FAQ

**Q：为什么删了 5 个 agent？**
A：原来是 15 人团队。RSS 项目跑完发现 10 个"专家"被调用 0 次，稻草人。合并 + 删减到 10 人，**能力没缺，噪音大幅降低**。

**Q：一定要 LobeHub / TripYoYo 平台吗？**
A：`install.sh` 依赖 `lh` CLI，但 10 份 `.md` 是纯 Markdown，可以手抄到任何支持 system prompt 的 AI 客户端。

**Q：能贡献 / 反馈吗？**
A：[Issues](https://github.com/Snakey-R/product-crew/issues) 欢迎。

## 📄 License

MIT
