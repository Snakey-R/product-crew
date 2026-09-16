---
name: product-crew
description: A 10-agent product engineering team for LobeHub/TripYoYo. Turn a one-line idea into shippable code via a 5-stage pipeline (PM → Architect → Frontend/Backend → QA → DevOps). Ships with prompts, orchestration guide, and one-command install.
tags: [product, engineering, agent-team, pipeline, prompts]
license: MIT
version: 1.0.0
author: Snakey-R
repository: https://github.com/Snakey-R/product-crew
---

# product-crew

> Turn a **one-line idea** into **shippable code** with a 10-agent product-engineering team, structured as a 5-stage pipeline.

**中文版 → [`SKILL.md`](./SKILL.md)**

---

## 🎯 What is this?

A ready-to-install **agent team** for LobeHub / TripYoYo, tuned for **internal tooling and rapid prototyping** rather than large-scale to-C products. You get:

- 10 pre-tuned agent prompts (5 core + 2 extra + 3 optional)
- A 5-stage orchestration workflow (PM → Architect → Frontend + Backend → QA → DevOps)
- A one-command install script
- A real-world case study (RSS recommendation system, ~3 hours end-to-end)

## 📦 What's inside

```
📦 core-5 (must-have)
├── 🎯 PM                    Product requirements & AC
├── 🏗️ Architect + Prompt    Tech design + LLM prompts
├── 🎨 Frontend              React/TypeScript
├── ⚙️ Backend               Node.js/TypeScript, scripts
└── 🧪 QA + Security + Perf  Testing, security audit, perf profiling (3-in-1)

📦 extra-2 (recommended)
├── 📊 Data Analyst          DS + ML + reporting (3-in-1)
└── 🚀 DevOps                CI/CD, launchd, monitoring

📦 optional-3 (on-demand)
├── 🔬 UX Researcher         User interviews, journey maps
├── 🎯 Brand Guardian        Visual/copy consistency
└── 📈 Growth Hacker         AARRR, funnel, virality
```

## 🚀 Quick start

### Install

```bash
git clone https://github.com/Snakey-R/product-crew
cd product-crew

bash install.sh --tier core     # just 5 core roles
bash install.sh --tier extra    # core + 2 extras (7 roles)
bash install.sh --tier full     # all 10 roles (default)
```

### Use

```
1. @🎯 PM       — pass your one-liner, get a PRD
2. @🏗️ Architect — get tech design + API contract
3. @🎨 Frontend ┬─ parallel implementation
   @⚙️ Backend  ┘
4. @🧪 QA       — test cases + go/no-go decision
5. @🚀 DevOps   — deploy scripts + launchd/CI
```

Full playbook: `workflows/standard-5-stage.md`
Real case study: `examples/rss-recommendation-system.md`

## 💡 Why 5 stages + 10 roles?

**Not because 10 > 5 always wins** — but because separating "who does what" prevents:
- PM inventing tech stacks (which they shouldn't)
- Frontend guessing API shapes (Backend / Architect defines them)
- Missing edge cases (QA has its own checklist, not an afterthought)
- Merged security/perf reviews (QA has explicit **modes** you switch into)

**The 3-tier packaging** (core / extra / optional) means you install only what you use. Most projects only invoke 4-5 agents.

## 📖 What's tuned vs. generic

Every agent is tuned for:
- **Internal tool contexts** (scripts, bots, dashboards, plugins) — NOT to-C flagship products
- **Small teams** (you're the orchestrator + all agents; no 50-people process)
- **LobeHub/TripYoYo runtime** (specific plugin IDs, model IDs baked in)

For example, the PM won't ask "who is the target user?" or "what's the North Star Metric?" for a bot script — those questions are ceremony noise in this context.

## 🛠️ Customization

Each agent's `.md` file has YAML frontmatter you can tweak before install:

```yaml
---
id: pm
emoji: 🎯
title: Product Manager
model: claude-opus-4-7
provider: ada
plugins:
  - lobe-artifacts
  - mattpocock-skills-to-spec
---
```

## 🔗 Related

- Matt Pocock's engineering skills (referenced by PM/Architect/Frontend/Backend/QA) — installed as plugins automatically if you use LobeHub Skill Store

## 📄 License

MIT — take it, fork it, ship it.
