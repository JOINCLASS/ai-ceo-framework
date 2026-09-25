# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Fixed
- **Skills were never loaded.** Claude Code reads skills as `skills/<name>/SKILL.md`
  directories, but the framework shipped them as flat `.md` files and `setup.sh`
  copied them flat. Every user who ran `setup.sh` ended up with five skills that
  silently did nothing — including `validate-hypothesis`, which `CLAUDE.md`
  requires before acting on a new initiative. Skills are now directories and
  `setup.sh` copies them as such. Verified end-to-end: after `setup.sh`,
  all five skills are listed by Claude Code.
- Removed `user_invocable: true` from skill frontmatter (not a recognized key)
- README (en/ja/zh-CN): the skills section claimed "11 Skills" while the header
  claimed 5. There are five. Directory diagrams now show `<name>/SKILL.md`
- setup.sh: `replace_placeholder` now only modifies framework files, not user's existing `.md` files
- setup.sh: Added guard to prevent running inside the framework repo itself
- setup.sh: Added missing `departments/tax` directory creation

### Changed
- setup.sh: Input prompts now have sensible defaults (press Enter to accept)
- setup.sh: Company name and CEO name are now required fields with validation

## [1.0.0] - 2026-04-12

### Added
- **16 AI Agents** for full C-suite coverage
  - CTO (Sprint management, code review, architecture)
  - CMO (Content strategy, SEO, ads, analytics)
  - CFO (Monthly P&L, cost optimization, invoicing)
  - CSO (Pipeline management, proposals, leads)
  - Legal (Contracts, compliance, OSS audits)
  - CS Lead (Escalations, FAQ, onboarding)
  - HR (Agent skill audits, training plans)
  - Publisher (Book planning, writing, multi-channel publishing)
  - Content Engine (SEO articles, books, LP copy, social)
  - Growth (Funnel optimization, A/B tests, monetization)
  - Consulting (AI automation diagnostics, proposals)
  - BizDev (Lead generation, partnerships, upsell)
  - Tax Advisor (Journal review, tax prep, optimization)
  - Morning Digest (Daily CEO briefing)
  - Setup Wizard (Interview-based initial configuration)
- **5 Core Skills**
  - validate-hypothesis: 6-phase business hypothesis validation
  - write-blog: SEO-optimized blog article creation with scoring
  - polish-content: Content editing and quality improvement
  - upgrade-automation: Claude Code feature detection and adoption
  - generate-cover: HTML+CSS+Playwright book cover generation
- **Orchestrator (CLAUDE.md)** with natural language command routing
  - Approval pipeline (draft -> approve -> execute)
  - Hypothesis validation gatekeeper
  - Cross-department task coordination
  - Thin context principle (10-15% utilization)
- **Steering Files** (permissions.md, policies.md)
- **Interactive setup script** with cross-platform support (macOS + Linux)
- **Multi-language README** (English, Japanese, Chinese)

[Unreleased]: https://github.com/JOINCLASS/ai-ceo-framework/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/JOINCLASS/ai-ceo-framework/releases/tag/v1.0.0
