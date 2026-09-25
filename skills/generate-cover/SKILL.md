---
name: generate-cover
description: Generate book cover images using HTML+CSS and Playwright screenshots. No external design tools needed. Usage: /generate-cover "book title"
---

# /generate-cover -- Book Cover Image Generation Skill

Design covers with HTML+CSS and render via Playwright screenshot. Fully code-based, no external tools.

## Specifications

- **Size**: 1600x2560px (standard ebook ratio 1:1.6)
- **Format**: JPG (cover.jpg)
- **Output**: `{book-slug}/cover.jpg`

## Design Guidelines

- **Background**: Dark gradient (e.g., #1e3a8a -> #0f172a)
- **Title**: White, bold, large
- **Subtitle**: White, slightly smaller
- **Accent**: Orange line (#f97316) or brand color
- **Author**: White, positioned at bottom
- **Overall feel**: Technology x Professional

Customize colors and style to match `.company/steering/brand.md` if available.

## Workflow

1. Get title and subtitle from the book's config file
2. Design cover in HTML+CSS (1600x2560px viewport)
3. Save as temporary HTML file
4. Launch Playwright headless browser -> open HTML -> screenshot
5. Save as JPG
6. Delete temporary HTML

## HTML Template Structure

```html
<!DOCTYPE html>
<html>
<head>
<style>
  body {
    margin: 0;
    width: 1600px;
    height: 2560px;
    background: linear-gradient(180deg, #1e3a8a 0%, #0f172a 100%);
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    font-family: 'Segoe UI', Arial, sans-serif;
    color: white;
    text-align: center;
    padding: 120px;
    box-sizing: border-box;
  }
  .accent-line {
    width: 200px;
    height: 6px;
    background: #f97316;
    margin: 60px 0;
  }
  .title {
    font-size: 96px;
    font-weight: 800;
    line-height: 1.2;
    margin-bottom: 40px;
  }
  .subtitle {
    font-size: 48px;
    font-weight: 400;
    opacity: 0.85;
    line-height: 1.4;
  }
  .author {
    position: absolute;
    bottom: 120px;
    font-size: 42px;
    font-weight: 300;
    opacity: 0.7;
  }
</style>
</head>
<body>
  <div class="title">{TITLE}</div>
  <div class="accent-line"></div>
  <div class="subtitle">{SUBTITLE}</div>
  <div class="author">{AUTHOR}</div>
</body>
</html>
```

## Prerequisites

- Node.js installed
- Playwright installed (`npx playwright install chromium`)

## Execution Command

```bash
npx playwright screenshot --viewport-size="1600,2560" /tmp/cover.html cover.jpg
```

Or use a simple Node script:

```javascript
const { chromium } = require('playwright');
(async () => {
  const browser = await chromium.launch();
  const page = await browser.newPage();
  await page.setViewportSize({ width: 1600, height: 2560 });
  await page.goto('file:///tmp/cover.html');
  await page.screenshot({ path: 'cover.jpg', type: 'jpeg', quality: 90 });
  await browser.close();
})();
```
