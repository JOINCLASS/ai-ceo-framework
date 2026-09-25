# AI-CEO Framework

**[English](README.md)** | [日本語](README.ja.md) | [中文](README.zh-CN.md)

![License: MIT](https://img.shields.io/github/license/JOINCLASS/ai-ceo-framework)
![GitHub stars](https://img.shields.io/github/stars/JOINCLASS/ai-ceo-framework?style=social)
![GitHub last commit](https://img.shields.io/github/last-commit/JOINCLASS/ai-ceo-framework)

## Run Your Entire Company with Claude Code

**15 AI Agents + 5 Production Skills + Approval Pipeline. One-person company, fully automated.**

---

### Battle-Tested in Production

This is not a toy project. AI-CEO Framework has been running a real company for over a year:

| Metric | Value |
|--------|-------|
| Automation rate | **98%** of business operations |
| Monthly cost | **~$250/month** (Claude Code Max + infrastructure) |
| Departments managed | **11** (Dev, Marketing, Sales, Finance, Legal, CS, HR, Publishing, Growth, Consulting, BizDev) |
| In production since | **2025** (1+ year) |
| AI agents | **15** specialized agents |
| Reusable skills | **5** production-tested skill definitions |

One CEO. Zero employees. Full C-suite powered by Claude Code.

---

## What's Inside

### 15 AI Agents (`agents/`)

Each agent has a defined persona, expertise, workflows, output templates, and quality checks.

| Agent | Role | Key Capabilities |
|-------|------|-----------------|
| **CTO** | Chief Technology Officer | Sprint planning, code review, architecture decisions, hotfix management |
| **CMO** | Chief Marketing Officer | Content strategy, SEO, ad campaigns, social media, analytics |
| **CFO** | Chief Financial Officer | Monthly P&L, cost optimization, invoicing, cash flow forecasting |
| **CSO** | Chief Sales Officer | Pipeline management, proposals, lead strategy, CRM |
| **Legal** | General Counsel | Contract review, compliance checks, OSS license audits, ToS/privacy |
| **CS Lead** | Customer Success | Escalation management, FAQ, onboarding optimization, NPS |
| **HR** | Chief HR Officer | Agent skill audits, training plans, performance reviews |
| **Publisher** | Publishing Director | Book planning, writing, quality scoring, multi-channel publishing |
| **Content Engine** | Content Producer | SEO articles, books, LP copy, ad copy, social posts |
| **Growth** | Growth Hacker | Funnel optimization, A/B testing, monetization, pricing |
| **Consulting** | Consulting VP | AI automation consulting, diagnostics, proposals |
| **BizDev** | Business Development | Lead generation, partnership development, upsell strategy |
| **Tax Accountant** | Tax Advisor | Journal entries, tax prep, tax savings, compliance calendar |
| **Morning Digest** | Daily Briefing | Collects all department states, generates CEO morning digest |
| **Setup Wizard** | Onboarding | Interview-based setup, generates all initial config files |

### 5 Skills (`skills/`)

Reusable, invocable skill definitions that agents call to execute specific tasks.

| Skill | Purpose |
|-------|---------|
| `validate-hypothesis` | 6-phase business hypothesis validation (prevents building things nobody wants) |
| `write-blog` | Blog article creation with platform-specific scoring (75+ point threshold) |
| `polish-content` | Content editing and quality improvement for blog posts |
| `upgrade-automation` | Detect new Claude Code features and upgrade your automation |
| `generate-cover` | Book cover image generation using HTML+CSS+Playwright |

### Orchestrator (`CLAUDE.md`)

The brain of the system. A single CLAUDE.md that:

- Understands natural language requests and routes them to the right department
- Manages the approval pipeline for external-facing actions
- Coordinates cross-department tasks
- Enforces hypothesis validation gates for new initiatives
- Maintains a thin context footprint (10-15% utilization)

### Steering Files (`steering/`)

| File | Purpose |
|------|---------|
| `permissions.md` | Permission levels (read-only / draft / execute), cost thresholds, deploy rules |
| `policies.md` | Security, quality, cost management, development process, compliance policies |

### Setup Script (`setup.sh`)

5-minute setup. Run the script, answer a few questions, and your AI-CEO Framework is live.

---

## Architecture

```mermaid
flowchart TD
    CEO["CEO (You)"]
    ORC["CLAUDE.md\n(Orchestrator)"]
    
    CEO -->|Natural language| ORC
    
    ORC --> CTO["CTO Agent\nSprints, Code Review"]
    ORC --> CMO["CMO Agent\nContent, SEO, Ads"]
    ORC --> CFO["CFO Agent\nP&L, Invoicing"]
    ORC --> CSO["CSO Agent\nSales Pipeline"]
    ORC --> LGL["Legal Agent\nContracts, Compliance"]
    ORC --> PUB["Publisher Agent\nBooks, Multi-channel"]
    ORC --> MORE["+ 9 more agents..."]
    
    ORC --> HYP["Hypothesis\nValidation"]
    ORC --> APQ["Approval\nPipeline"]
    
    HYP -->|Go / No-Go| ORC
    APQ -->|CEO approves| EXE["Execute"]
    APQ -->|CEO rejects| REJ["Reject + Feedback"]
    
    style CEO fill:#f9a825,stroke:#f57f17,color:#000
    style ORC fill:#1565c0,stroke:#0d47a1,color:#fff
    style HYP fill:#7b1fa2,stroke:#4a148c,color:#fff
    style APQ fill:#c62828,stroke:#b71c1c,color:#fff
    style EXE fill:#2e7d32,stroke:#1b5e20,color:#fff
```

## How It Works

### The Approval Pipeline

Every external-facing action (emails, social posts, invoices, deployments) goes through:

1. **Agent creates a draft** in `approval-queue.md`
2. **CEO reviews** with `/ai-ceo:approve <id>` or `/ai-ceo:reject <id> "reason"`
3. **Approved items execute** automatically

This prevents AI from sending embarrassing emails or deploying broken code to production.

### Hypothesis Validation Gate

Before any new product, ad channel, or significant investment:

1. **Phase 0**: Idea origin check (is this customer-driven or self-driven?)
2. **Gate 1**: Market existence confirmation (data-backed)
3. **Gate 2**: Customer/competitor interviews (3+ companies)
4. **Gate 3**: Interview evaluation (fact strength scoring)
5. **Gate 4**: Willingness to pay (LOI, pre-orders, written commitment)
6. **Gate 5**: Minimum viable test (no-code validation)
7. **Decision**: Go / No-Go / Retreat (with learning documentation)

Max 2 retries. If it fails twice, a retreat report is generated. This prevents building things nobody wants.

---

## Quick Start (5 minutes)

### 1. Clone and setup

```bash
# Copy the framework to your project
cp -r ai-ceo-framework-pack/.claude/ your-project/.claude/
cp ai-ceo-framework-pack/CLAUDE.md your-project/CLAUDE.md

# Run the setup script
cd your-project
bash .claude/setup.sh
```

### 2. Answer setup questions

The script will ask you:
- Company name
- Your name (CEO)
- Business description
- Products you're building
- Tech stack
- External tools (accounting, CRM, etc.)
- Which departments to prioritize
- AI budget

### 3. Start using it

Open Claude Code in your project directory. Just talk naturally:

```
> "What's our status today?"
> "Write a blog post about AI automation"
> "Run a dev sprint"
> "Review this contract: [paste]"
> "Generate an invoice for Client X"
> "What are our marketing KPIs?"
```

Or use explicit commands:

```
> /ai-ceo:morning          -- Daily briefing
> /ai-ceo:status           -- Quick status check
> /ai-ceo:dev:sprint       -- Run a development sprint
> /ai-ceo:mkt:content-plan -- Monthly content calendar
> /ai-ceo:fin:monthly-report -- Monthly P&L
> /ai-ceo:approve AQ-001   -- Approve a pending item
```

---

## Directory Structure

After setup, your project will have:

```
your-project/
  CLAUDE.md                          # Orchestrator (main brain)
  .claude/
    agents/
      cto-agent.md                   # 15 agent definitions
      cmo-agent.md
      ...
    skills/
      validate-hypothesis/SKILL.md         # 5 skill definitions
      write-blog/SKILL.md
      ...
  .company/
    VISION.md                        # Mission & vision
    STATE.md                         # Current business state
    ROADMAP.md                       # Quarterly roadmap
    approval-queue.md                # Pending approvals
    steering/
      permissions.md                 # Permission levels & thresholds
      policies.md                    # Company policies
      brand.md                       # Brand guidelines
      tech-stack.md                  # Tech stack conventions
    products/
      {product-name}/
        STATE.md                     # Per-product state
    departments/
      dev/STATE.md                   # Per-department state
      marketing/STATE.md
      sales/STATE.md
      finance/STATE.md
      cs/STATE.md
      legal/STATE.md
      hr/STATE.md
      publishing/STATE.md
      consulting/STATE.md
    decisions/
      {YYYY-MM}.md                   # CEO decision log
```

---

## FAQ

**Q: Does this work with Claude Code free tier?**
A: The framework itself works with any Claude Code plan. However, sub-agents (which use the Agent tool) require Claude Code Max ($100/month) or Claude Code with an Anthropic API key. For optimal performance, Claude Code Max is recommended.

**Q: What languages does the framework support?**
A: The framework templates are in English. All agent definitions and commands work in English. You can customize agents to work in any language after setup.

**Q: Can I add my own agents?**
A: Yes. Create a new `.md` file in `.claude/agents/` following the same format (frontmatter + persona + workflows + quality checks). The orchestrator will automatically discover it.

**Q: Can I remove agents I don't need?**
A: Yes. Simply delete the agent file. The orchestrator gracefully handles missing departments.

**Q: How does this differ from just writing a long CLAUDE.md?**
A: Three key differences: (1) The orchestrator keeps its context at 10-15% by delegating to sub-agents instead of loading everything into one prompt. (2) The approval pipeline prevents AI from taking unauthorized external actions. (3) Each agent has specialized expertise, quality checks, and output templates that a monolithic CLAUDE.md cannot maintain.

**Q: Is my data safe?**
A: All data stays in your local `.company/` directory. Nothing is sent anywhere except through Claude Code's normal API calls. The framework includes security policies and permission controls out of the box.

**Q: Can I use this for a team (not solo)?**
A: The framework was designed for one-person companies but works for small teams too. The approval pipeline naturally supports a single decision-maker (CEO). For larger teams, you may want to customize the approval flow.

**Q: What if an agent fails?**
A: Built-in error handling: retry up to 3 times with feedback, then escalate to the CEO via the approval queue. Error logs are written to each department's error-log.md.

---

## Before / After

| | Without AI-CEO | With AI-CEO |
|---|---|---|
| **Setup** | One giant CLAUDE.md with everything | 15 specialized agents + thin orchestrator |
| **Context usage** | 100% consumed instantly | 10-15% orchestrator, delegates the rest |
| **External actions** | AI sends emails, deploys freely | Approval pipeline: draft -> review -> execute |
| **Error handling** | Errors silently ignored | Auto-retry 3x, then escalate to CEO |
| **New initiatives** | Build first, validate later | Hypothesis validation gate (6 phases) |
| **Quality** | No standards | Per-agent quality checks + scoring thresholds |
| **Scaling** | Rewrite everything | Add a new `.md` file, orchestrator auto-discovers |

---

## What This Really Is

This is not a prompt collection. It's a **production-grade operating system for running a company with AI**. Every agent, every workflow, every quality check was refined through 1+ year of daily use. The hypothesis validation skill alone has saved tens of thousands of dollars by killing bad ideas early.

This is the distilled experience of running an entire company with Claude Code -- the failures, the fixes, and the frameworks that survived.

---

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=JOINCLASS/ai-ceo-framework&type=Date)](https://star-history.com/#JOINCLASS/ai-ceo-framework)

---

## Contributing

Contributions are welcome! Whether it's a bug report, feature request, or pull request -- all input is valued.

- **Issues**: Found a bug or have an idea? [Open an issue](https://github.com/JOINCLASS/ai-ceo-framework/issues).
- **Pull Requests**: Fork the repo, make your changes, and submit a PR. Please keep changes focused and include a clear description.
- **Discussions**: Questions or ideas that aren't quite issues? Start a [discussion](https://github.com/JOINCLASS/ai-ceo-framework/discussions).

---

## License

MIT License. See [LICENSE](LICENSE) for details.

---

Built with Claude Code. Tested in production. Ready for yours.
