---
name: ai-ceo-command-execution
description: |
  Detailed execution rules for /ai-ceo:init, /ai-ceo:morning, /ai-ceo:status, and the
  approval actions (/ai-ceo:approve, /ai-ceo:reject) within the AI-CEO Framework.
  Load this skill when any /ai-ceo:* command is invoked and detailed step-by-step
  flow is needed. The parent CLAUDE.md keeps only the natural-language routing and
  minimal command list; the heavy per-command rules live here to keep startup context
  lean. Invoke when the CEO says "initialize", "morning digest", "show status",
  "approve <id>", "reject <id>", or directly triggers any /ai-ceo:* command.
---

# ai-ceo-command-execution — 各 /ai-ceo:* コマンドの実行ルール

> このスキルは `tng/ai-ceo/CLAUDE.md` の旧 "Command Execution Rules" セクションを切り出したものです。
> 目的: ai-ceo/CLAUDE.md の常時ロードサイズを削減しつつ、コマンド実行時には詳細フローが完全にロードされるようにする。

---

## `/ai-ceo:init` Flow

1. Interview the CEO (one question at a time, conversational):
   - Company name and business description
   - Mission and vision
   - Current product list with status of each
   - Tech stack
   - External tools in use (accounting, CRM, social media, etc.)
   - Which departments to prioritize for automation
   - AI operations budget
2. After collecting answers, generate all initial files:
   - `.company/VISION.md`
   - `.company/STATE.md`
   - `.company/ROADMAP.md`
   - `.company/steering/brand.md`
   - `.company/steering/tech-stack.md`
   - `.company/steering/policies.md`
   - `.company/steering/permissions.md`
   - `.company/approval-queue.md`
   - `.company/decisions/{current-month}.md`
   - `.company/products/{product-name}/STATE.md` (per product)
   - `.company/departments/{dept}/STATE.md` (all departments)
3. After generation, auto-run `/ai-ceo:status` to display initial state

---

## `/ai-ceo:morning` Flow

1. Read each department's `.company/departments/{dept}/STATE.md`
2. Read `.company/approval-queue.md` for pending items
3. Read each product's `.company/products/{name}/STATE.md`
4. Generate digest in the following format:

```
AI-CEO Morning Digest -- {date}

## Pending Approvals ({n} items)
- [AQ-xxx] {department}: {description} | {file_path}
...

## Department Status Summary
| Department | Status | Active Tasks | Notes |
|------------|--------|-------------|-------|
| Dev        | OK     | {task}      | {note}|
...

## Product Status
| Product | Phase | Next Milestone |
|---------|-------|----------------|
...

## Recommended Actions Today
1. {recommendation}
...
```

---

## `/ai-ceo:status` Flow

- Simplified version of `/ai-ceo:morning`. Shows pending approvals + department status only.

---

## Approval Rules

- `/ai-ceo:approve <id>`: Remove item from `.company/approval-queue.md`, record in `.company/decisions/{month}.md`
- `/ai-ceo:reject <id> "reason"`: Remove from queue, record with reason in decisions, send back to department

---

## Sub-Agent Delegation Template

When delegating to a sub-agent in `.claude/agents/`, always provide:

1. **Task objective** -- What to achieve (one sentence)
2. **Reference file paths** -- List of input file paths needed (do not inline file contents)
3. **Output destination** -- Output file path and format
4. **Permission level** -- read-only / draft / execute (see `.company/steering/permissions.md`)
5. **Quality criteria** -- Completion conditions and verification method

Apply the Thin Orchestrator Principle: pass file paths, never file contents.
