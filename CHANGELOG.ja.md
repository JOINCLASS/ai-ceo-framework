# Changelog

このプロジェクトの主要な変更点はすべて本ファイルに記録されます。

フォーマットは [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) に基づきます。

## [Unreleased]

### Fixed
- setup.sh：`replace_placeholder` がフレームワーク内のファイルのみを変更するように修正（ユーザー既存の `.md` ファイルには影響しません）
- setup.sh：フレームワークリポジトリ自体の中で実行されるのを防ぐガードを追加
- setup.sh：欠落していた `departments/tax` ディレクトリの作成を追加

### Changed
- setup.sh：入力プロンプトに妥当なデフォルト値を設定（Enter キーで受け入れ可能）
- setup.sh：会社名と CEO 名を必須項目とし、バリデーションを追加

## [1.0.0] - 2026-04-12

### Added
- **C-Suite を完全カバーする 16 の AI エージェント**
  - CTO （スプリント管理、コードレビュー、アーキテクチャ）
  - CMO （コンテンツ戦略、SEO、広告、分析）
  - CFO （月次 P&L、コスト最適化、請求書発行）
  - CSO （パイプライン管理、提案書、リード）
  - Legal （契約書、コンプライアンス、OSS 監査）
  - CS Lead （エスカレーション、FAQ、オンボーディング）
  - HR （エージェントスキル監査、トレーニング計画）
  - Publisher （書籍企画、執筆、マルチチャネル出版）
  - Content Engine （SEO 記事、書籍、LP コピー、SNS）
  - Growth （ファネル最適化、A/B テスト、マネタイズ）
  - Consulting （AI 自動化診断、提案書）
  - BizDev （リード獲得、パートナーシップ、アップセル）
  - Tax Advisor （仕訳レビュー、確定申告準備、節税対策）
  - Morning Digest （CEO 向け日次ブリーフィング）
  - Setup Wizard （インタビュー形式の初期設定）
- **5 つのコアスキル**
  - validate-hypothesis：6 フェーズのビジネス仮説検証
  - write-blog：スコアリング機能付き SEO 最適化ブログ記事作成
  - polish-content：コンテンツ編集と品質改善
  - upgrade-automation：Claude Code 新機能の検出と取り込み
  - generate-cover：HTML+CSS+Playwright による書籍カバー生成
- **自然言語コマンドルーティング機能を備えた Orchestrator （`CLAUDE.md`）**
  - 承認パイプライン（ドラフト -> 承認 -> 実行）
  - 仮説検証ゲートキーパー
  - 部門横断タスクの調整
  - 薄いコンテキスト原則（10-15% の使用率）
- **Steering Files** （permissions.md、policies.md）
- **クロスプラットフォーム対応のインタラクティブセットアップスクリプト** （macOS + Linux）
- **多言語 README** （英語、日本語、中国語）

[Unreleased]: https://github.com/JOINCLASS/ai-ceo-framework/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/JOINCLASS/ai-ceo-framework/releases/tag/v1.0.0
