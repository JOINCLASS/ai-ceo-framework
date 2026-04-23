---
name: generate-cover
description: HTML+CSS と Playwright のスクリーンショットで書籍カバー画像を生成します。外部デザインツール不要。使い方：/generate-cover "書籍タイトル"
user_invocable: true
---

# /generate-cover -- 書籍カバー画像生成スキル

HTML+CSS でカバーをデザインし、Playwright のスクリーンショットでレンダリングします。完全にコードベースで、外部ツール不要です。

## 仕様

- **サイズ**：1600x2560px（電子書籍の標準比率 1:1.6）
- **フォーマット**：JPG（cover.jpg）
- **出力**：`{book-slug}/cover.jpg`

## デザインガイドライン

- **背景**：ダークグラデーション（例：#1e3a8a -> #0f172a）
- **タイトル**：白、太字、大サイズ
- **サブタイトル**：白、やや小さめ
- **アクセント**：オレンジのライン（#f97316）またはブランドカラー
- **著者名**：白、下部に配置
- **全体の雰囲気**：テクノロジー × プロフェッショナル

`.company/steering/brand.md` がある場合は、それに合わせて色とスタイルをカスタマイズしてください。

## ワークフロー

1. 書籍の設定ファイルからタイトルとサブタイトルを取得する
2. HTML+CSS でカバーをデザインする（1600x2560px ビューポート）
3. 一時 HTML ファイルとして保存する
4. Playwright のヘッドレスブラウザを起動 -> HTML を開く -> スクリーンショット
5. JPG として保存する
6. 一時 HTML を削除する

## HTML テンプレート構造

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

## 前提条件

- Node.js がインストール済み
- Playwright がインストール済み（`npx playwright install chromium`）

## 実行コマンド

```bash
npx playwright screenshot --viewport-size="1600,2560" /tmp/cover.html cover.jpg
```

または、シンプルな Node スクリプトを使用します。

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
