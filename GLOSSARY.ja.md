# AI-CEO Framework 日本語化用語集 (Glossary)

## 目的と対象読者

本ドキュメントは AI-CEO Framework の英語ドキュメント群を日本語化する際の **唯一の正規用語リファレンス** です。`README.ja.md` で確立済みの訳語を基準とし、文体・表記・保持ルール・禁止訳語までを一元化しています。対象読者は 4 名の Translator、Quality Reviewer、Final Evaluator の合計 6 ロールで、本書に従えば訳語のブレ・トーンの不一致・識別子の誤訳を機械的に防げます。すべての翻訳作業は **Section 1 の用語ペア** と **Section 2 の文体ガイド** を最優先で参照してください。

---

## Section 1: 用語ペアリスト

優先度マーク: ★★★ = 全文書頻出 / ★★ = 中頻度 / ★ = 低頻度

### 1.1 中核アーキテクチャ用語

| 英語 | 日本語訳 | 優先度 | 採用理由 / README.ja.md での使用状況 |
|------|---------|--------|---------------------------------------|
| Orchestrator | Orchestrator（オーケストレーター） | ★★★ | README.ja.md では「Orchestrator」「オーケストレーター」両表記あり。初出のみ括弧で「（オーケストレーター）」を併記し、以降は「Orchestrator」維持 |
| C-Suite Orchestrator | C-Suite Orchestrator | ★★ | CLAUDE.md タイトル。固有名詞として英語維持 |
| Sub-agent | サブエージェント | ★★★ | README.ja.md「サブエージェント」採用済み |
| Agent | エージェント | ★★★ | README.ja.md「15のAIエージェント」表記で確立 |
| Skill | スキル | ★★★ | README.ja.md「11のスキル」「再利用可能なスキル定義」 |
| Command | コマンド | ★★★ | README.ja.md「コマンドを直接指定」 |
| Department | 部門 | ★★★ | README.ja.md「11部門」「適切な部門へルーティング」 |
| Steering Files | Steering Files（ステアリングファイル） | ★★ | README.ja.md は見出しを英語維持。本文中は「ステアリングファイル」も可 |
| Thin Orchestrator Principle | 薄い Orchestrator 原則 | ★★ | README.ja.md「薄いOrchestrator」表現。Principle は「原則」 |
| Frontmatter | フロントマター | ★ | カタカナ表記が一般的 |
| Persona | ペルソナ | ★★ | README.ja.md「ペルソナ、専門分野、ワークフロー」 |
| Workflow | ワークフロー | ★★★ | README.ja.md 表内で使用 |
| Quality Check | 品質チェック | ★★★ | README.ja.md「エージェントごとの品質チェック」 |
| Output Template | 出力テンプレート | ★★ | README.ja.md「出力テンプレート」 |

### 1.2 承認パイプライン関連

| 英語 | 日本語訳 | 優先度 | 採用理由 / README.ja.md での使用状況 |
|------|---------|--------|---------------------------------------|
| Approval Pipeline | 承認パイプライン | ★★★ | README.ja.md「承認パイプライン」確立 |
| Approval Queue | 承認待ちキュー | ★★★ | README.ja.md「承認待ちキュー」確立。`approval-queue.md` ファイル名は英語維持 |
| Pending Approvals | 承認待ち | ★★★ | README.ja.md「承認待ちアイテム」 |
| Pending Item | 承認待ちアイテム | ★★ | README.ja.md「承認待ちアイテムを承認」 |
| Approve | 承認する | ★★★ | README.ja.md「CEOが承認」 |
| Reject | 却下する | ★★★ | README.ja.md「CEOが却下」「却下 + フィードバック」 |
| Draft mode | ドラフトモード | ★★★ | README.ja.md「ドラフト -> レビュー -> 実行」。「下書きモード」は使用禁止 |
| Execute mode | 実行モード | ★★★ | README.ja.md「実行」表記 |
| Read-only | read-only（読み取り専用） | ★★ | README.ja.md は表内で「read-only」のまま英語維持。本文では「読み取り専用」も可 |
| Permission | 権限 | ★★★ | README.ja.md「権限レベル」「権限管理」 |
| Permission Level | 権限レベル | ★★★ | README.ja.md「権限レベル（read-only / draft / execute）」 |
| Threshold | 閾値 | ★★★ | README.ja.md「権限レベル・閾値」 |
| Auto-approve | 自動承認 | ★★ | permissions.md の `auto_approve_limit` 訳出時に使用 |
| CEO Approval | CEO 承認 | ★★★ | README.ja.md「CEO approval」を「CEO 承認」と訳す |
| Auto-execute | 自動実行 | ★★★ | README.ja.md「承認されたアイテムが自動実行」 |
| Cost Threshold | コスト閾値 | ★★ | permissions.md セクション見出し |
| Escalation | エスカレーション | ★★ | README.ja.md「エスカレーション管理」 |
| Approval Pipeline (verb) | 承認パイプラインを通す | ★★ | 文中での動詞化 |

### 1.3 仮説検証関連

| 英語 | 日本語訳 | 優先度 | 採用理由 / README.ja.md での使用状況 |
|------|---------|--------|---------------------------------------|
| Hypothesis Validation | 仮説検証 | ★★★ | README.ja.md「仮説検証ゲート」確立 |
| Hypothesis Validation Gate | 仮説検証ゲート | ★★★ | README.ja.md 採用 |
| Validation Gate | 検証ゲート | ★★ | 文脈で短縮形を使う場合 |
| Validation Gatekeeper | 仮説検証ゲートキーパー | ★★ | CLAUDE.md「Hypothesis validation gatekeeper」 |
| Phase 0 | Phase 0 | ★★★ | README.ja.md「Phase 0」のまま維持 |
| Gate 1 〜 Gate 5 | Gate 1 〜 Gate 5 | ★★★ | README.ja.md 採用、英語維持 |
| Go / No-Go | Go / No-Go | ★★★ | README.ja.md「Go / No-Go」維持 |
| Retreat Report | 撤退レポート | ★★★ | README.ja.md「撤退レポート」採用 |
| Retreat | 撤退 | ★★ | README.ja.md「撤退（学びの文書化付き）」 |
| Time Box | タイムボックス | ★★ | アジャイル用語として定着 |
| Retry | リトライ | ★★ | README.ja.md「リトライは最大2回」 |
| Strength A / B / C | 強度 A / B / C | ★★★ | Fact Strength の訳。英字グレードは維持 |
| Reliability A / B / C | 信頼度 A / B / C | ★★★ | Data Reliability の訳 |
| Specificity A / B / C | 具体性 A / B / C | ★★★ | Definition Specificity の訳 |
| Fact | ファクト | ★★★ | README.ja.md「ファクト強度スコアリング」 |
| Fact Strength | ファクト強度 | ★★ | README.ja.md 採用 |
| Conditional Pass | 条件付き合格 | ★★ | validate-hypothesis.md の判定 |
| Pass / Reject | 合格 / 却下 | ★★ | Decision の訳 |
| Probing | 深掘り（プロービング） | ★ | 初出のみ括弧で原語併記 |
| Reproducibility Check | 再現性チェック | ★ | validate-hypothesis.md セクション |
| MVT (Minimum Viable Test) | 最小実証テスト（MVT） | ★ | Gate 5 で使用 |
| LOI (Letter of Intent) | LOI（基本合意書） | ★ | 初出のみ補足、以降 LOI |
| Willingness to Pay | 支払い意思 | ★★ | README.ja.md「支払い意思の確認」 |
| Decision-maker | 意思決定者 | ★★ | validate-hypothesis.md 頻出 |

### 1.4 開発・運用関連

| 英語 | 日本語訳 | 優先度 | 採用理由 / README.ja.md での使用状況 |
|------|---------|--------|---------------------------------------|
| Sprint | スプリント | ★★★ | README.ja.md「スプリント計画」 |
| Hotfix | ホットフィックス | ★★ | README.ja.md「ホットフィックス管理」 |
| Deployment / Deploy | デプロイ | ★★★ | README.ja.md「壊れたコードを本番にデプロイ」 |
| Production | 本番（環境） | ★★ | README.ja.md「本番にデプロイ」 |
| Staging | ステージング | ★★ | permissions.md の環境名 |
| Local dev | ローカル開発（環境） | ★ | permissions.md の環境名 |
| Bug fix | バグ修正 | ★★ | permissions.md `bugfix` の訳語 |
| Refactoring | リファクタリング | ★ | permissions.md |
| Schema change | スキーマ変更 | ★ | permissions.md |
| Code Review | コードレビュー | ★★ | README.ja.md「スプリント計画、コードレビュー」 |
| Architecture | アーキテクチャ | ★★ | README.ja.md「アーキテクチャ判断」 |
| Deployment Permission | デプロイ権限 | ★ | permissions.md セクション |
| Onboarding | オンボーディング | ★★ | README.ja.md「オンボーディング最適化」 |
| OSS Audit | OSS ライセンス監査 | ★ | README.ja.md「OSSライセンス監査」 |
| Compliance | コンプライアンス | ★★ | README.ja.md「コンプライアンスチェック」 |
| Compliance Check | コンプライアンスチェック | ★★ | README.ja.md 採用 |

### 1.5 事業・経営関連

| 英語 | 日本語訳 | 優先度 | 採用理由 / README.ja.md での使用状況 |
|------|---------|--------|---------------------------------------|
| KPI | KPI | ★★★ | README.ja.md 英語維持 |
| Pipeline (sales) | パイプライン（営業） | ★★ | README.ja.md「営業パイプライン」 |
| Lead | リード | ★★ | README.ja.md「リード戦略」 |
| Initiative | 施策 | ★★ | README.ja.md「新施策」採用 |
| Pivot | ピボット | ★★ | コマンド `/ai-ceo:pivot` の訳出時 |
| Decision Log | 意思決定ログ | ★★ | README.ja.md「CEO意思決定ログ」 |
| Monthly Report | 月次レポート | ★★ | コマンド `/ai-ceo:fin:monthly-report` |
| Invoice | 請求書 | ★★ | README.ja.md「請求書発行」 |
| Cash Flow Forecast | キャッシュフロー予測 | ★ | README.ja.md 採用 |
| Cost Optimization | コスト最適化 | ★ | README.ja.md「コスト最適化」 |
| Funnel Optimization | ファネル最適化 | ★ | README.ja.md 採用 |
| Monetization | マネタイズ | ★ | README.ja.md「マネタイズ、価格戦略」 |
| Pricing | 価格戦略 | ★ | README.ja.md 採用 |
| Service-Led Growth | Service-Led Growth | ★ | フレームワーク名として英語維持。初出のみ「（サービス起点グロース）」併記 |
| Product-Led Growth | Product-Led Growth | ★ | 同上。初出のみ「（プロダクト起点グロース）」併記 |
| Party Mode | Party Mode（パーティーモード） | ★ | CLAUDE.md `/ai-ceo:ask` の説明。固有モード名として英語維持 |

### 1.6 マーケティング・コンテンツ関連

| 英語 | 日本語訳 | 優先度 | 採用理由 / README.ja.md での使用状況 |
|------|---------|--------|---------------------------------------|
| Content Engine | Content Engine | ★★ | エージェント名として英語維持 |
| GSD Wave pattern | GSD Wave パターン | ★ | 専門用語、英語維持 |
| E-E-A-T | E-E-A-T | ★ | Google SEO 用語、英語維持 |
| AIDA | AIDA | ★ | マーケフレームワーク、英語維持 |
| PAS | PAS（Problem-Agitate-Solution） | ★ | 初出のみ補足 |
| Campaign | キャンペーン | ★★ | README.ja.md「広告キャンペーン」 |
| Content Calendar | コンテンツカレンダー | ★ | README.ja.md「月間コンテンツカレンダー」 |
| Ad Audit | 広告アカウント監査 | ★ | コマンド説明 |

### 1.7 接頭辞・形容詞・一般動詞

| 英語 | 日本語訳 | 優先度 | 採用理由 / README.ja.md での使用状況 |
|------|---------|--------|---------------------------------------|
| External-facing actions | 対外アクション | ★★★ | README.ja.md「対外アクションの承認パイプライン」 |
| Internal actions | 内部アクション | ★★ | CLAUDE.md「Internal actions」 |
| Cross-department | 部門横断 | ★★ | README.ja.md「部門横断タスクの調整」 |
| Cross-product | プロダクト横断 | ★ | CLAUDE.md「Cross-product management」 |
| Route to | ルーティング（する） | ★★ | README.ja.md「適切な部門へルーティング」 |
| Delegate | 委任する | ★★ | README.ja.md「サブエージェントに委任」 |
| Trigger | トリガー（する） | ★★ | CLAUDE.md「trigger `/validate-hypothesis`」 |
| Enforce | 強制する | ★ | README.ja.md「仮説検証ゲートの強制」 |
| Solo company | ひとり会社 | ★★ | README.ja.md「ひとり会社」採用、慣用句として漢字混合 |

---

## Section 2: 文体ガイド

### 2.1 人称

- 二人称: **「あなた」固定**
  - 例: `You are the CTO` → 「あなたは CTO です」
  - 例: `You support the CEO` → 「あなたは CEO を支援します」
- 一人称: 原則使用しない。原文 `we` は文脈で「当社」「私たち」「（主語省略）」を使い分ける
- AI 自身の指す語: 「Orchestrator」「エージェント」など役割名で書く（「私」は使わない）

### 2.2 文体・トーン

- **常体寄りの敬体（です・ます）**。README.ja.md の「〜します」「〜です」基調を踏襲
- 過度に丁寧な「〜いたします」「〜させていただきます」は使わない
- 命令文は「〜してください」または「〜すること」（手順書では後者を優先）
- 箇条書き末尾は体言止めまたは「〜する」で統一（同一リスト内で混在させない）

### 2.3 半角・全角ルール

- **半角英数字の前後に半角スペース挿入**（README.ja.md パターン）
  - 良い例: 「15 のAIエージェント」「$250/月」「Phase 0」
  - 注意: README.ja.md では「15のAIエージェント」のようにスペースなしの箇所もある。**新規翻訳ではスペースありを基本とする**が、既存表現と隣接する場合は周辺と合わせる
- 句読点: **「、」「。」**（半角カンマ・ピリオドは使わない）
- 括弧: **全角丸括弧「（）」**を基本。半角括弧 `()` は識別子・数式・コードブロック内に限定
- 引用符: **「」**（カギ括弧）を基本。引用ブロックは Markdown の `>` を使用
- ダッシュ: 原文 `--` は文脈に応じて「、」「：」「ーー」などに置換。記号 `--` を残さない
- 中点: リスト内の並列は「、」または「・」を使い分け（既存パターンに合わせる）

### 2.4 数字・通貨

- 数字: **半角を基本**
- 通貨: `$250` 等は **半角維持**（README.ja.md パターン）
- 慣用句の例外: 「ひとり会社」「ひと月」など定着した和語表現は維持
- パーセント: 「10%」「98%」のように **半角 + 半角%**

### 2.5 表記揺れの統一

| 揺れの例 | 採用 | 不採用 |
|---------|------|--------|
| Orchestrator | Orchestrator（オーケストレーター） | 司令塔、調整役 |
| 承認待ちキュー | 承認待ちキュー | 承認キュー、承認待ち列 |
| ドラフトモード | ドラフトモード | 下書きモード、草案モード |
| サブエージェント | サブエージェント | 子エージェント、配下エージェント |
| 仮説検証 | 仮説検証 | 仮説の検証、仮説バリデーション |
| 撤退レポート | 撤退レポート | 退却レポート、リトリートレポート |
| ファクト | ファクト | 事実（※「事実」は通常文脈、「ファクト」は仮説検証スキル文脈） |
| 強度 A | 強度 A | レベル A、グレード A |

---

## Section 3: 保持ルール（絶対翻訳禁止）

以下の要素は **原文の英語表記を一字一句維持** すること。日本語化してはいけません。

### 3.1 Frontmatter フィールド

- `name:` フィールドの値（例: `name: cto-agent`、`name: validate-hypothesis`）
- `tools:` フィールドの値全体（例: `Read`, `Write`, `Edit`, `Bash`）
- `description:` フィールドのキー名（**値は日本語化可** だが、ツール識別が必要な技術文字列は維持）
- `user_invocable:` 等のブール値・キー名

### 3.2 テンプレート変数

`{{...}}` 形式のプレースホルダはすべて維持:

- `{{COMPANY_NAME}}`
- `{{CEO_NAME}}`
- `{{AUTO_APPROVE_LIMIT}}`
- `{{CEO_APPROVAL_LIMIT}}`
- `{{MONTHLY_AI_BUDGET}}`
- `{{ACCOUNTING_SOFTWARE}}`
- その他 `{{...}}` 形式すべて

### 3.3 setup-wizard-agent.md の `{from xxx}` プレースホルダ

`{from mission}`, `{from product list}`, `{from products}`, `{from tech_stack}`, `{infer ...}`, `{product_name}`, `{YYYY-MM-DD}` などの **識別子部分は英語維持**。識別子を含む説明文（例: `{infer 3-5 year goals from business_description}`）は、識別子 `business_description` を維持しつつ周辺の英文だけを訳す。

良い例:
```markdown
{business_description から3〜5年の目標を推測}
```

悪い例:
```markdown
{事業内容 から3〜5年の目標を推測}  # ← 識別子を訳してはいけない
```

### 3.4 コード・識別子・パス

- コードブロック内のシェルコマンド、識別子、JSON キー、YAML キー
- Markdown リンク先パス: `.company/...`, `agents/...`, `skills/...`, `LICENSE` など
- ファイル名・ディレクトリ名: `approval-queue.md`, `STATE.md`, `VISION.md`, `error-log.md` など
- ファイル拡張子: `.md`, `.yaml`, `.json`, `.sh`
- エージェント参照名: `@cto-agent`, `@cmo-agent` 形式があれば維持
- コマンド名: `/ai-ceo:dev:sprint`, `/ai-ceo:approve <id>`, `/validate-hypothesis` 等すべて

### 3.5 コードブロック内コメントの扱い

```yaml
auto_approve_limit: 50  # USD
```

YAML の `# USD` のような **単位コメントは英語維持**。仕様の説明用コメント（複数語）は **日本語化可**。

### 3.6 URL・リンク

- すべての URL（`https://...`）は維持
- Markdown リンクの表示テキスト部分は **日本語化対象**、URL 部分は維持
- 例: `[無料診断を申し込む →](https://joinclass.co.jp/#cta)` は表示テキストのみ翻訳

---

## Section 4: 役職名の英日対照

役職は **英語のまま使用** し、**初出のみ括弧書きで日本語補足** を付与する。2 回目以降は英語のみ。

| 英語表記 | 初出時の日本語補足 | 短縮形（本文中） |
|---------|------------------|----------------|
| CEO | （最高経営責任者） | CEO |
| CTO | （最高技術責任者） | CTO |
| CFO | （最高財務責任者） | CFO |
| CMO | （最高マーケティング責任者） | CMO |
| CSO | （最高営業責任者） | CSO |
| HR | （人事責任者） | HR |
| General Counsel | （法務責任者） | Legal / General Counsel |
| CS Lead | （カスタマーサクセス責任者） | CS Lead |
| Publisher | （出版部門長） | Publisher |
| Content Engine | （コンテンツプロデューサー）※役職的扱い | Content Engine |
| Growth | （グロースハッカー） | Growth |
| Consulting VP | （コンサルティングVP） | Consulting |
| BizDev | （事業開発） | BizDev |
| Tax Accountant | （税務アドバイザー） | Tax Accountant |
| Setup Wizard | （オンボーディング担当） | Setup Wizard |
| Morning Digest | （デイリーブリーフィング担当） | Morning Digest |

### 4.1 「CEO」周辺表現の固定訳

| 英語 | 日本語訳 |
|------|---------|
| The CEO does not need to | CEO は〜する必要はありません |
| CEO approval | CEO 承認 |
| CEO decision log | CEO 意思決定ログ |
| ask the CEO | CEO に確認する |

---

## Section 5: 専門タームの方針

### 5.1 グレード・等級・段階

| タイプ | 例 | 翻訳方針 |
|------|----|---------|
| ABC等級 | Strength A / B / C | **「強度 A / B / C」「信頼度 A / B / C」「具体性 A / B / C」**。英字グレードは維持 |
| Phase | Phase 0, Phase 1 | **「Phase 0」「Phase 1」のまま**（VC・スタートアップ界隈で定着） |
| Gate | Gate 1 〜 Gate 5 | **「Gate 1」「Gate 2」のまま**。「ゲート 1」「関門 1」は使わない |
| Go/No-Go 判定 | Go / No-Go / Retreat | **「Go / No-Go / 撤退」**（Retreat のみ日本語化） |

### 5.2 略語

すべて **英語のまま維持**。初出時のみ必要に応じて括弧で補足。

| 略語 | 補足（必要時のみ） |
|------|-------------------|
| KPI | （重要業績評価指標） |
| OKR | （Objectives and Key Results） |
| P&L | （損益） |
| SaaS | （補足不要） |
| SEO | （補足不要） |
| OSS | （オープンソースソフトウェア） |
| MRR | （月次経常収益） |
| ARR | （年次経常収益） |
| CAC | （顧客獲得コスト） |
| LTV | （顧客生涯価値） |
| CTR | （クリック率） |
| CPA | （顧客獲得単価） |
| ROAS | （広告費用対効果） |
| LOI | （基本合意書 / Letter of Intent） |
| NPS | （補足不要） |
| FAQ | （補足不要） |
| LP | （ランディングページ） |
| SNS | （補足不要） |
| CRM | （補足不要） |
| MVT | （Minimum Viable Test / 最小実証テスト） |
| MVP | （Minimum Viable Product / 最小実用プロダクト） |

### 5.3 マーケティングフレームワーク

| 略語 | 翻訳方針 |
|------|---------|
| AIDA | 英語維持。初出時に「（Attention/Interest/Desire/Action の購買行動モデル）」を任意で補足 |
| PAS | 英語維持。初出時に「（Problem-Agitate-Solution）」を任意で補足 |
| E-E-A-T | 英語維持。初出時に「（Experience, Expertise, Authoritativeness, Trustworthiness）」を任意で補足 |
| GSD Wave | 英語維持 |

### 5.4 英語維持が望ましいその他の固有概念

- `Service-Led Growth`, `Product-Led Growth`
- `Party Mode`
- `Hotfix`
- `Sprint`（カタカナ「スプリント」も可、文脈で判断）

---

## Section 6: 表組みの方針

### 6.1 「CEO says / Auto-executes」表（CLAUDE.md 内）

CEO の発話例は **日本人 CEO の自然な口語** に置き換える。直訳は避け、メンタルモデルを移植する。

| 英語原文 | 日本語訳 |
|---------|---------|
| "What's our status?" | 「うちの状況は？」 |
| "Write a blog post about X" | 「X についてブログ記事を書いて」 |
| "Run a dev sprint" | 「開発スプリントを回して」 |
| "Review this contract" | 「この契約書をレビューして」 |
| "Generate monthly report" | 「月次レポートを作って」 |
| "New product idea: X" | 「新しいプロダクトのアイデア：X」 |
| "What are our sales numbers?" | 「営業の数字どう？」 |

右側の Auto-executes 列は通常の説明文として翻訳（敬体）。

### 6.2 スラッシュ複合カテゴリ

publisher-agent.md 等で `Original insights / first-hand experience` のように `/` で複合される語は **改行または「 / 」維持で分割訳** する。

例:

| 英語 | 日本語訳 |
|------|---------|
| `Original insights / first-hand experience` | 独自の洞察 / 一次体験 |
| `Pass / Conditional / Reject` | 合格 / 条件付き / 却下 |
| `read-only / draft / execute` | read-only / draft / execute（権限レベル名は英語維持） |

### 6.3 数値・金額のセル

- 半角を維持
- 通貨記号 `$` は半角維持
- 例: `$50/item` → `$50/件` または `$50/アイテム`（文脈で選択）

### 6.4 表ヘッダーの翻訳

英語ヘッダーは **すべて日本語化** する。例: `Trigger | Examples` → `トリガー | 例`

---

## Section 7: 禁止訳語リストと検証 grep パターン集

Quality Reviewer が機械的に違反を検出するためのコマンド集。**すべて Bash 実行可能**（Windows の場合は Git Bash 想定）。

### 7.1 禁止訳語チェック（11 パターン）

```bash
# 1. 「司令塔」は使用禁止（README.ja.md は「Orchestrator / オーケストレーター」で統一）
grep -rn "司令塔" --include="*.ja.md" .

# 2. 「承認キュー」は使用禁止（「承認待ちキュー」または「承認パイプライン」を使う）
grep -rn "承認キュー" --include="*.ja.md" .

# 3. 「下書きモード」は使用禁止（「ドラフトモード」に統一）
grep -rn "下書きモード\|草案モード" --include="*.ja.md" .

# 4. 「子エージェント / 配下エージェント」は使用禁止（「サブエージェント」に統一）
grep -rn "子エージェント\|配下エージェント" --include="*.ja.md" .

# 5. 「ゲート 1」「関門」は使用禁止（「Gate 1」のまま英語維持）
grep -rnE "ゲート ?[0-9]|関門 ?[0-9]" --include="*.ja.md" .

# 6. 「フェーズ 0」は使用禁止（「Phase 0」のまま英語維持）
grep -rnE "フェーズ ?[0-9]" --include="*.ja.md" .

# 7. 「リトリートレポート / 退却レポート」は使用禁止（「撤退レポート」に統一）
grep -rn "リトリートレポート\|退却レポート" --include="*.ja.md" .

# 8. 「仮説バリデーション」は使用禁止（「仮説検証」に統一）
grep -rn "仮説バリデーション\|仮説のバリデーション" --include="*.ja.md" .

# 9. 「レベル A / グレード A」は使用禁止（「強度 A」「信頼度 A」「具体性 A」に統一）
grep -rnE "レベル ?[ABC]|グレード ?[ABC]" --include="*.ja.md" .

# 10. 過度な敬語の検出（「いたします / させていただきます」は不採用）
grep -rn "いたします\|させていただ" --include="*.ja.md" .

# 11. 半角カンマ・ピリオドが日本語文中に紛れていないか
#    （日本語文字 + 半角カンマ/ピリオド + 半角スペース のパターン）
grep -rnP "[ぁ-んァ-ヶー一-龯][,.]\s" --include="*.ja.md" .
```

### 7.2 保持ルール違反チェック（4 パターン）

```bash
# 12. テンプレート変数 {{...}} が日本語化されていないか（漢字混入を検出）
grep -rnP "\{\{[^{}]*[ぁ-んァ-ヶー一-龯][^{}]*\}\}" --include="*.ja.md" .

# 13. コマンド名 /ai-ceo: が日本語化されていないか
grep -rnP "/ai-ceo:[a-z]+:[ぁ-んァ-ヶー一-龯]" --include="*.ja.md" .

# 14. setup-wizard-agent の {from xxx} 識別子が日本語化されていないか
grep -rnP "\{from [ぁ-んァ-ヶー一-龯]" --include="*.ja.md" .
grep -rnP "\{infer.*[ぁ-んァ-ヶー一-龯].*\}" --include="*.ja.md" . | grep -v "を推測\|を推定"

# 15. frontmatter の name: 値が日本語化されていないか
grep -rnP "^name:\s*[ぁ-んァ-ヶー一-龯]" --include="*.ja.md" .
```

### 7.3 表記揺れ検出（4 パターン）

```bash
# 16. Orchestrator と オーケストレーター の混在頻度を確認（参考情報）
echo "=== Orchestrator 出現数 ==="
grep -rn "Orchestrator" --include="*.ja.md" . | wc -l
echo "=== オーケストレーター 出現数 ==="
grep -rn "オーケストレーター" --include="*.ja.md" . | wc -l

# 17. Go/No-Go 表記の揺れ（「ゴー / ノーゴー」を検出）
grep -rn "ゴー\|ノーゴー" --include="*.ja.md" .

# 18. 半角英数字と日本語の間にスペースがない箇所のサンプル抽出
#    （完璧な検出は困難だが、頻出パターンを抽出）
grep -rnP "[ぁ-んァ-ヶー一-龯][A-Za-z]|[A-Za-z][ぁ-んァ-ヶー一-龯]" --include="*.ja.md" . | head -20

# 19. 全角括弧と半角括弧の混在チェック（日本語文中の半角括弧を抽出）
grep -rnP "[ぁ-んァ-ヶー一-龯]\([^)]*\)" --include="*.ja.md" .
```

### 7.4 一括チェックスクリプト

すべてのチェックを順次実行するワンライナー（Quality Reviewer 用）:

```bash
# AI-CEO Framework 翻訳品質チェック（全 19 パターン）
cd /c/Users/kwada/tng/ai-ceo && \
for pattern in \
  "司令塔" \
  "承認キュー" \
  "下書きモード" \
  "子エージェント" \
  "リトリートレポート" \
  "仮説バリデーション" \
  "いたします" \
  "ゴー\|ノーゴー" \
; do
  echo "=== Checking: $pattern ==="
  grep -rn "$pattern" --include="*.ja.md" . || echo "OK: 違反なし"
done
```

---

## 改訂履歴

- v1.0 (2026-04-22): 初版作成。README.ja.md の確立済み訳語を基準に、CLAUDE.md / permissions.md / validate-hypothesis.md / setup-wizard-agent.md の主要語彙を集約

---

## 翻訳者への最終チェックリスト

翻訳完了前に以下を確認してください。

- [ ] Section 1 の用語ペアに従って訳語を統一したか
- [ ] Section 3 の保持ルール対象（frontmatter、`{{...}}`、`{from xxx}`、コマンド名、パス）を一切日本語化していないか
- [ ] Section 4 の役職名は英語維持し、初出のみ日本語補足を付けたか
- [ ] Section 5.1 の Phase / Gate / 強度 A / 信頼度 A / 具体性 A の表記を守っているか
- [ ] Section 6.1 の CEO 発話例を口語的に意訳したか（直訳していないか）
- [ ] Section 7 の grep パターンを少なくとも 1 〜 11 番まで実行し、ヒットゼロを確認したか
- [ ] 半角英数字の前後にスペースが入っているか
- [ ] 「いたします」「させていただきます」等の過剰敬語を使っていないか
