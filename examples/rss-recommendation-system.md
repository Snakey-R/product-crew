# 真实案例：RSS 推荐系统

> 用 `product-crew` 5 阶段流水线，1 天从"一句话"到"可上线代码"的真实案例。

## 一句话想法

> "我有个热点雷达系统每天抓 300+ 内容，想加个 RSS 订阅源功能，让它自动发现 + 推荐新的 RSS 源给我"

## 阶段 1：🎯 PM 产出 PRD

PM 一次性问了 4 个真问题：
1. RSS 源怎么发现？（自动扒 domain / AI 推荐 / 用户提交）
2. 已启用的源多久抓一次？（每次主流水一起抓 / 独立频率）
3. 候选源怎么进入"已启用"？（自动 vs 用户手动）
4. 周报卡片什么时候推？（周一 09:00 / 11:00 / 不推）

用户确认 4 个决策后，PM 输出 PRD v0.1：
- P0 功能：3 路 RSS 发现（domain / 已启用源域 / AI 推荐）、状态机（候选/已启用/已淘汰）、每周一 11:00 推候选卡片
- P1：AI 权重 = 0.4 × domain 扩散分 + 0.6 × AI 推荐分
- P2：冷启动限流（已启用 + 已淘汰 < 10 时每周上限 5 个）
- 5 条 AC

## 阶段 2：🏗️ 架构师技术方案

架构师读 PRD，输出：
- **模块拆分**：`rss-generic.ts`（通用解析）+ `rss-discovery.ts`（3 路发现）+ 2 个编排脚本 + 主流水改 30 行
- **数据模型**：`HotItem`（原有）+ 新加 `platform: string`（原联合类型太窄）
- **权重公式**（这里切 Prompt 模式）：`finalScore = 0.4 × scoreA + 0.6 × scoreC`，scoreA = 100 × hit/total，scoreC = AI confidence
- **AI Prompt**：让 Claude 从种子域名扩散出候选 + 给 confidence 分
- **风险**：JSON 大整数精度丢失（后来在 B 站知乎抓取里也踩了）

## 阶段 3：前端 + 后端并行

**本项目无 UI**，跳过前端。

**⚙️ 后端** 输出代码骨架：
- 4 个新文件（rss-generic / rss-discovery / discover-rss-daily / rss-weekly-push）
- 主流水 `run-daily-task.ts` [1/8] 阶段加 30 行 RSS 抓取
- 环境变量清单

**踩坑记录**：
- config.ts 重构时把老字段搞丢了 → typecheck 报 10 处 `string | undefined` 错误
- 修法：把老字段改成 `.default('')` 让它成为必存在的空字符串

## 阶段 4：🧪 QA 验收

QA 出了 5 项验收 checklist，发现 4 项 🔴 阻塞：
- S11：HotItem 类型冲突（后端已修）
- AC5：60 秒不达标（后来降级到 90s）
- 7 天降级 TODO 未做
- TABLE_RSS 集中管理未落实

后端修完 4 项，QA 复测 ✅ 通过。

## 阶段 5：🚀 DevOps 部署

DevOps 出了 2 个 launchd plist：
- `com.ren.hotspot-radar-rss-discovery.plist`：每天 09:00 跑发现
- `com.ren.hotspot-radar-rss-weekly.plist`：每周一 11:00 推候选卡片

**踩坑记录**：
- launchd plist 老版本还指向老项目路径（macOS TCC 权限问题，项目已经从桌面迁移到家目录）
- DevOps 提前警告了：`macOS TCC 桌面路径问题` —— 避免了再次踩坑

## 上线首日战报

- ✅ 09:00 发现器跑通：4 个 AI 推荐候选（人人都是产品经理、爱范儿、极客公园、Reorx's Forge）
- ✅ 主流水集成：少数派 10 条 + 人人都是产品经理 15 条 = 25 条并入 322 条候选
- ✅ 5 个源全启用后：RSS 合计 70 条，总候选 366 条

## 用时统计

| 阶段 | 用时 |
|---|---|
| PM 需求澄清 + PRD | 15 分钟 |
| 架构师技术方案 + Prompt | 20 分钟 |
| 后端代码实现 | 90 分钟（含调试 typecheck） |
| QA 验收 + 迭代 | 30 分钟 |
| DevOps 部署 | 15 分钟 |
| **合计** | **~3 小时** |

对比不用流水线：至少 1 天，且大概率会漏掉冷启动限流、7 天降级、去重池这些边界。
