# product-crew

> 🎯 10-agent product engineering team for LobeHub / TripYoYo — turn a one-line idea into shippable code via a 5-stage pipeline.

**English · [中文](./README.md) · [Live case study](./examples/rss-recommendation-system.md)**

---

## 🚀 One-minute quickstart

```bash
git clone https://github.com/Snakey-R/product-crew
cd product-crew
bash install.sh --tier full     # or --tier core / --tier extra
```

Installs 10 agents into your LobeHub / TripYoYo workspace. Use them like:

```
1. @🎯 PM        Pass your one-liner, get a PRD
2. @🏗️ Architect Get tech design + API contract
3. @🎨 Frontend + @⚙️ Backend  Parallel implementation
4. @🧪 QA        Test report + ✅/⚠️/🚫 decision
5. @🚀 DevOps    Deploy scripts
```

## 🎯 One-liner

Turn "a one-line idea" into "shippable code" without dropping the ball. **Every agent does only its own job**:

- PM doesn't hack tech stacks
- Frontend doesn't guess API shapes
- QA has explicit modes (🧪 normal / 🔐 security / ⚡ perf)
- Deploy scripts always include rollback

## 📦 3-tier team

```
📦 core-5 (must-have)
├── 🎯 PM
├── 🏗️ Architect / Prompt Engineer
├── 🎨 Frontend
├── ⚙️ Backend
└── 🧪 QA + Security + Perf

📦 extra-2 (recommended)
├── 📊 Data Analyst (DS + ML + reporting, 3-in-1)
└── 🚀 DevOps

📦 optional-3 (on-demand)
├── 🔬 UX Researcher
├── 🎯 Brand Guardian
└── 📈 Growth Hacker
```

## 🧭 Which tier do I need?

| Your project type | Recommended tier |
|---|---|
| Quick prototype / MVP / script | `--tier core` (5 agents) |
| Full product / needs deploy / data dashboard | `--tier extra` (7 agents) |
| UX research / brand assets / growth experiments | `--tier full` (10 agents) |

**Most projects only invoke 4-5 agents. The 3-tier packaging lets you install only what you use.**

## 📖 Real case study

See how this pipeline turned *"add an RSS subscription recommendation system"* into shippable code in ~3 hours:

👉 [`examples/rss-recommendation-system.md`](./examples/rss-recommendation-system.md)

## 🛠️ Full documentation

- **[`SKILL.en.md`](./SKILL.en.md)** — Skill main doc (full spec + FAQ)
- **[`workflows/standard-5-stage.md`](./workflows/standard-5-stage.md)** — 5-stage orchestration playbook
- **[`agents/`](./agents)** — 10 agent prompt source files
- **[`install.sh`](./install.sh)** — one-command deploy script

## 💬 FAQ

**Q: Why did you remove 5 agents?**
A: Started with 15. After the RSS project retrospective, 10 "expert" agents had been invoked 0 times — dead weight. Merged / trimmed to 10, **no capability lost, noise dramatically reduced**.

**Q: Do I have to use LobeHub / TripYoYo?**
A: `install.sh` needs the `lh` CLI, but the 10 `.md` files are pure Markdown — copy-paste them into any system-prompt-supporting AI client.

**Q: How do I contribute / give feedback?**
A: [Issues welcome](https://github.com/Snakey-R/product-crew/issues).

## 📄 License

MIT
