---
name: upgrade-automation
description: Detect new Claude Code features and upgrade your company's automation. Usage: /upgrade-automation
---

# /upgrade-automation -- Automation Upgrade Skill

Periodically check for new Claude Code and Anthropic features, identify those applicable to your automation, and propose/implement upgrades.

## Information Sources

1. **Anthropic Blog**: https://www.anthropic.com/news
2. **Claude Code Documentation**: https://docs.anthropic.com/en/docs/claude-code
3. **Claude Code Release Notes**: Check `claude --version`
4. **GitHub**: https://github.com/anthropics
5. **Community articles**: Claude Code tags on dev platforms
6. **Social media**: @AnthropicAI official posts

## Evaluation Criteria

Rate each new feature on 5 dimensions (10 points each, 50 total):

| Dimension | What to Evaluate |
|-----------|-----------------|
| Automation impact | How much manual work does this eliminate? |
| Adoption cost | Implementation time and complexity |
| Stability | Preview/beta vs. stable release |
| System compatibility | How easily does it integrate with current AI-CEO Framework? |
| Content value | Could this become an article or book topic? |

30+ points -> Recommend adoption
20-29 points -> Consider
19 or below -> Skip

## Workflow

### Periodic Check (weekly)

```
1. Run `claude --version` to check current version
2. Compare with last checked version
3. If new features found:
   a. Research feature details
   b. Score on 5 dimensions
   c. Create adoption proposal for features scoring 30+
   d. Notify CEO
4. Record results in .company/departments/dev/upgrade-log.md
```

### Adoption Execution

```
1. After proposal is approved (or auto-approve policy applies)
2. Update existing scripts, agents, and skills
3. Run tests
4. Report completion (update STATE.md)
```

## Features to Watch

| Category | Current Usage | Upgrade Opportunity |
|----------|-------------|-------------------|
| Hooks | Basic event-driven | New hook event types |
| Skills | Defined skills | New skill capabilities (args, chaining) |
| MCP | External tool integration | New MCP servers, protocol extensions |
| Agent Teams | Not yet used | Multi-agent coordination |
| Dispatch | Not yet used | Mobile task delegation |
| Remote Control | Not yet used | Remote operations |
| Model updates | Current model | Performance improvements |

## Output

- Upgrade log: `.company/departments/dev/upgrade-log.md`
- Proposals: `.company/departments/dev/upgrade-proposals/`
