#!/bin/bash
# ============================================
# AI-CEO Framework -- Quick Setup
# Run this script in your project root directory
# ============================================

set -e

echo "============================================"
echo "  AI-CEO Framework Setup"
echo "  Run Your Entire Company with Claude Code"
echo "============================================"
echo ""

# Validate: must not run in the framework repo itself
if [ -f "$(pwd)/setup.sh" ] && [ -d "$(pwd)/agents" ] && [ -d "$(pwd)/skills" ]; then
  echo "ERROR: Do not run setup.sh inside the ai-ceo-framework repo itself."
  echo "       Run it from your target project directory:"
  echo ""
  echo "       cd /path/to/your-project"
  echo "       bash /path/to/ai-ceo-framework/setup.sh"
  echo ""
  exit 1
fi

# Helper to prompt with a default value
prompt_with_default() {
  local prompt_text="$1"
  local default_value="$2"
  local result
  if [ -n "$default_value" ]; then
    read -p "${prompt_text} [${default_value}]: " result
    echo "${result:-$default_value}"
  else
    read -p "${prompt_text}: " result
    echo "$result"
  fi
}

# Helper to prompt and require non-empty input
prompt_required() {
  local prompt_text="$1"
  local result=""
  while [ -z "$result" ]; do
    read -p "${prompt_text}: " result
    if [ -z "$result" ]; then
      echo "  (Required. Please enter a value.)" >&2
    fi
  done
  echo "$result"
}

# Collect information
COMPANY_NAME=$(prompt_required "Company name")
CEO_NAME=$(prompt_required "CEO name")
MONTHLY_AI_BUDGET=$(prompt_with_default "Monthly AI budget (USD)" "200")
AUTO_APPROVE_LIMIT=$(prompt_with_default "Auto-approve limit per item (USD)" "50")
ACCOUNTING_SOFTWARE=$(prompt_with_default "Accounting software" "QuickBooks")
MARKETING_TOOL=$(prompt_with_default "Marketing tool" "HubSpot")
ANALYTICS_TOOL=$(prompt_with_default "Analytics tool" "Google Analytics")
BLOG_CONTENT_PATH=$(prompt_with_default "Blog content path" "./content/blog")
BOOK_SOURCE_PATH=$(prompt_with_default "Book source path" "./content/books")
PUBLISHING_PLATFORM=$(prompt_with_default "Publishing platform" "Amazon KDP")
TARGET_AUDIENCE=$(prompt_with_default "Target audience" "developers")
DEPARTMENT_COUNT=$(prompt_with_default "Number of departments" "11")
CONSULTING_INDUSTRIES=$(prompt_with_default "Consulting target industries (comma-separated)" "education,logistics")

CEO_APPROVAL_LIMIT=$AUTO_APPROVE_LIMIT

echo ""
echo "Setting up framework..."
echo ""

# Create directory structure
mkdir -p .claude/agents
mkdir -p .claude/skills
mkdir -p .company/steering
mkdir -p .company/products
mkdir -p .company/departments/dev
mkdir -p .company/departments/marketing
mkdir -p .company/departments/sales
mkdir -p .company/departments/finance
mkdir -p .company/departments/cs
mkdir -p .company/departments/legal
mkdir -p .company/departments/hr
mkdir -p .company/departments/publishing
mkdir -p .company/departments/consulting
mkdir -p .company/departments/tax
mkdir -p .company/decisions

echo "  [OK] Directory structure created"

# Get the directory where the setup script lives (source files)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Copy CLAUDE.md to project root
cp "$SCRIPT_DIR/CLAUDE.md" ./CLAUDE.md

# Copy agents (exclude *.ja.md companion files)
# TODO: support LANG=ja switching by selecting *.ja.md instead
find "$SCRIPT_DIR/agents" -maxdepth 1 -name "*.md" ! -name "*.ja.md" -exec cp {} .claude/agents/ \;

# Copy skills (exclude *.ja.md companion files)
find "$SCRIPT_DIR/skills" -maxdepth 1 -name "*.md" ! -name "*.ja.md" -exec cp {} .claude/skills/ \;

# Copy steering files (exclude *.ja.md companion files)
find "$SCRIPT_DIR/steering" -maxdepth 1 -name "*.md" ! -name "*.ja.md" -exec cp {} .company/steering/ \;

echo "  [OK] Framework files copied"

# Replace placeholders only in framework-generated files (not user's existing files)
replace_placeholder() {
  local placeholder="$1"
  local value="$2"
  local sed_cmd
  if [[ "$OSTYPE" == "darwin"* ]]; then
    sed_cmd=(sed -i '' "s|{{${placeholder}}}|${value}|g")
  else
    sed_cmd=(sed -i "s|{{${placeholder}}}|${value}|g")
  fi
  # Replace in framework directories
  for dir in .claude .company; do
    [ -d "$dir" ] && find "$dir" -name "*.md" -exec "${sed_cmd[@]}" {} +
  done
  # Replace in CLAUDE.md at project root
  [ -f "./CLAUDE.md" ] && "${sed_cmd[@]}" "./CLAUDE.md"
}

replace_placeholder "COMPANY_NAME" "$COMPANY_NAME"
replace_placeholder "CEO_NAME" "$CEO_NAME"
replace_placeholder "MONTHLY_AI_BUDGET" "$MONTHLY_AI_BUDGET"
replace_placeholder "AUTO_APPROVE_LIMIT" "$AUTO_APPROVE_LIMIT"
replace_placeholder "CEO_APPROVAL_LIMIT" "$CEO_APPROVAL_LIMIT"
replace_placeholder "ACCOUNTING_SOFTWARE" "$ACCOUNTING_SOFTWARE"
replace_placeholder "MARKETING_TOOL" "$MARKETING_TOOL"
replace_placeholder "ANALYTICS_TOOL" "$ANALYTICS_TOOL"
replace_placeholder "BLOG_CONTENT_PATH" "$BLOG_CONTENT_PATH"
replace_placeholder "BOOK_SOURCE_PATH" "$BOOK_SOURCE_PATH"
replace_placeholder "PUBLISHING_PLATFORM" "$PUBLISHING_PLATFORM"
replace_placeholder "TARGET_AUDIENCE" "$TARGET_AUDIENCE"
replace_placeholder "DEPARTMENT_COUNT" "$DEPARTMENT_COUNT"
replace_placeholder "CONSULTING_INDUSTRIES" "$CONSULTING_INDUSTRIES"

echo "  [OK] Placeholders replaced with your values"

# Generate initial approval queue
cat > .company/approval-queue.md << 'QUEUE_EOF'
# Approval Queue

## Pending (0 items)
_No pending items_

## Recent Approvals/Rejections
_No history yet_
QUEUE_EOF

# Generate initial decision log
CURRENT_MONTH=$(date +"%Y-%m")
CURRENT_DATE=$(date +"%Y-%m-%d")
cat > ".company/decisions/${CURRENT_MONTH}.md" << DECISION_EOF
# CEO Decision Log -- $(date +"%B %Y")

## ${CURRENT_DATE}: AI-CEO Framework Initial Setup
- **Decision:** Adopt AI-CEO Framework for company operations
- **Rationale:** Automate business operations with AI agents
- **Scope:** All departments
DECISION_EOF

echo "  [OK] Initial files generated"

echo ""
echo "============================================"
echo "  Setup Complete!"
echo "============================================"
echo ""
echo "Next steps:"
echo "  1. Open Claude Code in this directory"
echo "  2. Run: /ai-ceo:init"
echo "     This will interview you and generate"
echo "     VISION.md, STATE.md, ROADMAP.md, and"
echo "     all department/product state files."
echo ""
echo "  3. Then try: /ai-ceo:morning"
echo "     to see your first daily briefing."
echo ""
echo "  Or just talk naturally:"
echo '     "What'"'"'s our status?"'
echo '     "Write a blog post about AI automation"'
echo '     "Run a dev sprint"'
echo ""
echo "Enjoy your AI-powered company!"
