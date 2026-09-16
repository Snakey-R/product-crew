#!/usr/bin/env bash
# product-crew 一键部署脚本
# 用法：bash install.sh [--tier core|extra|full]
#   core  = 只装核心 5 人（PM/架构师/前端/后端/QA）
#   extra = 核心 + 扩展 2 人（+数据分析师+DevOps）
#   full  = 全部 10 人（默认，含 optional 3 人）

set -e

TIER="${1:-full}"
if [ "$1" = "--tier" ]; then
  TIER="${2:-full}"
fi

# 检查 lh CLI
if ! command -v lh &> /dev/null; then
  echo "❌ 未找到 lh CLI（TripYoYo/LobeHub 命令行）"
  echo "   请先安装：https://tripyoyo.com/cli 或 https://lobehub.com/cli"
  exit 1
fi

echo "🎯 product-crew 部署开始（tier=$TIER）"
echo ""

# 每个 agent 的定义
# 格式: agent_id|file|title|description|avatar|bg_color|tier
declare -a AGENTS=(
  "pm|agents/01-pm.md|🎯 产品经理|需求澄清、PRD 撰写、验收标准定义|🎯|#0EA5E9|core"
  "architect|agents/02-architect.md|🏗️ 架构师 / Prompt 工程师|接收 PRD，输出技术方案 + LLM prompt|🏗️|#8B5CF6|core"
  "frontend|agents/03-frontend.md|🎨 前端工程师|React/TypeScript 专精，按 API 契约 + Mock 独立开工|🎨|#EC4899|core"
  "backend|agents/04-backend.md|⚙️ 后端工程师|Node/TypeScript 或 Python，实现服务端 / 脚本 / 数据存储|⚙️|#F59E0B|core"
  "qa|agents/05-qa.md|🧪 QA / 测试工程师|测试用例、安全审计、性能剖析三合一|🧪|#10B981|core"
  "data-analyst|agents/06-data-analyst.md|📊 数据分析师|数据科学 + ML 工程 + 报表分析三合一|📊|#0EA5E9|extra"
  "devops|agents/07-devops.md|🚀 DevOps 工程师|CI/CD、Docker/K8s、launchd/cron、监控告警|🚀|#EF4444|extra"
  "ux-researcher|agents/08-ux-researcher.md|🔬 UX 研究员|用研方法、可用性测试、访谈、旅程地图|🔬|#6366F1|optional"
  "brand-guardian|agents/09-brand-guardian.md|🎯 品牌守护者|品牌视觉规范、Logo/色彩/字体一致性审查|🎯|#F97316|optional"
  "growth-hacker|agents/10-growth-hacker.md|📈 增长黑客|增长实验设计、渠道 ROI、AARRR|📈|#22C55E|optional"
)

count=0
skipped=0
for entry in "${AGENTS[@]}"; do
  IFS='|' read -r id file title desc avatar bg tier <<< "$entry"

  # tier 过滤
  case "$TIER" in
    core)
      [ "$tier" != "core" ] && { skipped=$((skipped+1)); continue; }
      ;;
    extra)
      [ "$tier" != "core" ] && [ "$tier" != "extra" ] && { skipped=$((skipped+1)); continue; }
      ;;
    full)
      # 全部装
      ;;
    *)
      echo "❌ 未知 tier: $TIER（支持 core / extra / full）"
      exit 1
      ;;
  esac

  # 读 system prompt（跳过 frontmatter）
  prompt=$(awk '/^---$/{c++; next} c==2' "$file")

  # 从 frontmatter 提 model / provider
  model=$(grep '^model:' "$file" | head -1 | sed 's/^model: *//')
  provider=$(grep '^provider:' "$file" | head -1 | sed 's/^provider: *//')

  echo "▶  安装 $title ..."
  # 用 lh 创建 agent（这里用简化命令，实际 lh 语法请参考 lh agent create --help）
  # 注：不同 lh 版本参数名可能不同，需要根据实际 CLI 调整
  lh agent create \
    --title "$title" \
    --description "$desc" \
    --avatar "$avatar" \
    --bg-color "$bg" \
    --model "$model" \
    --provider "$provider" \
    --system-prompt-file "$file" \
    --tags "product-crew,$tier" \
    2>&1 | grep -E "(Success|Error|agt_)" || echo "   (静默完成)"

  count=$((count+1))
done

echo ""
echo "✅ 部署完成：装了 $count 个 agent，跳过 $skipped 个"
echo ""
echo "📖 下一步："
echo "   - 编排手册：workflows/standard-5-stage.md"
echo "   - 真实案例：examples/rss-recommendation-system.md"
echo ""
echo "💡 用法：主对话中 @PM 或 @架构师 等，或在 TripYoYo/LobeHub UI 里切到对应 agent"
