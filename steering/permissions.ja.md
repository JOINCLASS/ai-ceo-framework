# 権限と閾値

## コスト閾値

| アクション | 閾値 | モード |
|--------|-----------|------|
| 自動承認上限 | ${{AUTO_APPROVE_LIMIT}}/件 | execute |
| CEO 承認が必要 | ${{CEO_APPROVAL_LIMIT}}/件 を超える場合 | draft |
| 月次 AI 運用予算 | ${{MONTHLY_AI_BUDGET}}/月 | monitor |

```yaml
auto_approve_limit: {{AUTO_APPROVE_LIMIT}}  # USD
ceo_approval_above: {{CEO_APPROVAL_LIMIT}}  # USD
monthly_ai_budget: {{MONTHLY_AI_BUDGET}}    # USD
```

## 仮説検証ゲート（必須）

以下の施策は実行前に `/validate-hypothesis` を必要とします。

| トリガー | モード |
|---------|------|
| 新規広告チャネル | 検証必須 |
| 新規プロダクトまたはサービス | 検証必須 |
| 新規市場または顧客セグメント | 検証必須 |
| 閾値を超える継続的コスト | 検証必須 |
| 「自分たちが使っているから売れる」前提 | 検証必須 |

検証のスキップには CEO の明示的な承認が必要です。

```yaml
hypothesis_validation:
  required_triggers:
    - new_ad_channel
    - new_product
    - new_market_segment
    - recurring_cost_above_threshold
    - self_use_assumption
  skip_allowed: ceo_explicit_approval_only
  skill: /validate-hypothesis
```

## 開発関連の閾値

### 自動実行（execute）
- バグ修正（bugfix）
- 軽微な機能追加（minor_feature）
- テストの追加 / 修正（test）
- リファクタリング（refactor）
- ドキュメント更新（docs）
- 依存関係のパッチ更新（patch/minor）

### CEO 承認が必要（draft）
- 新機能開発（new_feature）
- アーキテクチャ変更（architecture_change）
- 本番デプロイ（deploy_production）
- 主要な依存関係のメジャー更新（major_update）
- 新規ライブラリ / サービスの採用（new_dependency）
- データベーススキーマ変更（schema_change）

```yaml
auto_execute:
  - bugfix
  - minor_feature
  - test
  - refactor
  - docs
  - dependency_patch

ceo_approval:
  - new_feature
  - architecture_change
  - deploy_production
  - major_update
  - new_dependency
  - schema_change
```

## 対外コミュニケーション

### 必ずドラフト（CEO レビュー必須）
- プレスリリース（press_release）
- 価格変更告知（pricing_change）
- クレーム対応（claim_response）
- 顧客向け提案書（proposal）
- 契約書および NDA（contract）
- 請求書（invoice）

### 承認後に自動実行
- 予約投稿の SNS 投稿（scheduled_sns）-- 承認済みテンプレート使用
- FAQ / 定型応答（faq_response）-- 承認済みテンプレート使用
- 技術記事（tech_article）-- レビュー後

### 自動実行（read-only）
- 分析レポート（analytics_report）
- KPI ダッシュボード更新（kpi_update）
- 競合分析（competitor_analysis）
- 社内ドキュメント（internal_docs）

```yaml
always_draft:
  - press_release
  - pricing_change
  - claim_response
  - proposal
  - contract
  - invoice

auto_after_approval:
  - scheduled_sns
  - faq_response
  - tech_article

auto_execute_readonly:
  - analytics_report
  - kpi_update
  - competitor_analysis
  - internal_docs
```

## デプロイ権限

| 環境 | モード | 備考 |
|-------------|------|-------|
| ローカル開発 | execute | 自由に実行可 |
| ステージング | execute | 自動デプロイ可 |
| 本番 | draft | デプロイ前に CEO 承認 |

```yaml
deploy:
  local: execute
  staging: execute
  production: draft
```

## メール権限

| 種別 | モード | 備考 |
|------|------|-------|
| 社内通知 | execute | 自動送信 |
| 顧客とのやり取り | draft | 送信前に CEO レビュー |
| マーケティングメール | draft | 送信前に CEO レビュー |
| システム通知（自動） | execute | 承認済みテンプレートのみ |

```yaml
email:
  internal_notification: execute
  client_communication: draft
  marketing_email: draft
  system_notification: execute
```

## エスカレーションルール

1. 自動実行タスクが 3 回連続で失敗 -> CEO 通知
2. 予算が 80% に到達 -> CEO 通知
3. セキュリティインシデントが疑われる -> CEO に即時通知
4. 顧客からのクレーム受領 -> CEO に即時通知
