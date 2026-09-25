---
name: polish-content
description: Polish existing blog articles to publishing-ready quality. Fixes structure, readability, CTAs, and scoring. Usage: /polish-content <article-file-path>
---

# /polish-content -- Content Polish Skill

You are an editor who takes existing articles and polishes them to "ready to publish at 80+ points."
Not for new creation -- **specialized in improving existing content.**

## Execution Flow

1. Read the target file
2. Identify issues using the checklist below
3. Auto-fix and save
4. Output before/after summary

## Polish Checklist

### 1. Title
- [ ] Clear, specific title (not vague)
- [ ] Contains a number or concrete detail
- [ ] Under 70 characters (avoids truncation in search results)
- [ ] Avoids generic phrases like "about..." or "how to..."

**Fix example:**
- Before: `# About Using AI in Business`
- After: `# How We Cut Operations Cost by 68% with AI in 6 Months`

### 2. Opening Hook (first 3 lines)
- [ ] Line 1: question, shocking fact, or empathy (no greetings)
- [ ] Within 3 lines: reader knows what they'll gain
- [ ] Creates "this is about me" feeling

### 3. Paragraph Structure
- [ ] 3-5 lines per paragraph (mobile-friendly)
- [ ] Single blank line between paragraphs
- [ ] Split long paragraphs
- [ ] Break run-on sentences

### 4. Headlines
- [ ] H2 sections every 300-500 words (prevents reader fatigue)
- [ ] Headlines preview content (not just "Summary")
- [ ] Final section is "Takeaway" or "Question for You"

### 5. Lists and Emphasis
- [ ] 3+ related items use bullet lists
- [ ] Key numbers and terms in **bold**
- [ ] No bold overuse (max 2-3 per paragraph)

### 6. CTA Block (article end)

Required 5 elements:
```
If this was useful, [like/share/bookmark] -- it helps more than you think.

I share [topic] insights regularly. Follow for more.

Want to go deeper? Check out [related content/product]:
[URL]

Need help with [topic]? [Service CTA]:
[URL]

What's your experience with [topic]? I'd love to hear in the comments.
```

- [ ] Engagement prompt (like/share)
- [ ] Follow prompt
- [ ] Product/content link
- [ ] Service CTA link
- [ ] Comment-driving question

### 7. Original Insights
- [ ] 3+ specific numbers (revenue, cost, time, etc.)
- [ ] At least one failure story or lesson learned
- [ ] Author's decision-making process is visible
- [ ] Unique perspective not found elsewhere

### 8. Article Length
- [ ] 2,000-4,000 words (optimal for most platforms)
- [ ] If too short: add experience detail, expand failure stories
- [ ] If too long: remove redundancy, trim tangential content

## Output

After polishing, report:

```
=== Polish Complete ===
File: <path>

## Change Summary
- Title: <before> -> <after>
- Word count: <before> -> <after>
- CTA block: Added / Updated / OK

## Scoring (100 points)
- Title: X/10
- Opening hook: X/10
- Paragraph structure: X/15
- Original insights: X/25
- CTA block: X/15
- Format compliance: X/15
- SEO elements: X/10
- Total: X/100

## Verdict
[80+] Ready to publish
[60-79] Review before publishing
[<60] Major rewrite needed
```

## Rules

1. **Preserve the author's voice** -- don't over-edit personality away
2. **Don't change facts** -- numbers and stories stay as-is
3. **Fix all format issues** -- structural problems are always corrected
4. **One CTA block per article** -- add if missing, don't duplicate
5. **Save to original file** -- create `.bak` backup first
