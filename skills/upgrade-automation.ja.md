---
name: upgrade-automation
description: Claude Code の新機能を検出し、会社の自動化をアップグレードします。使い方：/upgrade-automation
user_invocable: true
---

# /upgrade-automation -- 自動化アップグレードスキル

Claude Code および Anthropic の新機能を定期的にチェックし、自社の自動化に適用可能なものを特定し、アップグレードを提案・実装します。

## 情報源

1. **Anthropic ブログ**：https://www.anthropic.com/news
2. **Claude Code ドキュメント**：https://docs.anthropic.com/en/docs/claude-code
3. **Claude Code リリースノート**：`claude --version` で確認
4. **GitHub**：https://github.com/anthropics
5. **コミュニティ記事**：開発者向けプラットフォームの Claude Code タグ
6. **SNS**：@AnthropicAI 公式投稿

## 評価基準

新機能を 5 つの観点で評価します（各 10 点、合計 50 点）。

| 観点 | 評価内容 |
|-----------|-----------------|
| 自動化インパクト | 手作業をどれだけ削減できるか？ |
| 導入コスト | 実装時間と複雑さ |
| 安定性 | プレビュー / ベータか、安定リリースか |
| システム互換性 | 現在の AI-CEO Framework にどれだけ容易に統合できるか？ |
| コンテンツ価値 | 記事や書籍のテーマになり得るか？ |

30 点以上 -> 採用を推奨
20〜29 点 -> 検討
19 点以下 -> スキップ

## ワークフロー

### 定期チェック（週次）

```
1. `claude --version` を実行して現バージョンを確認する
2. 前回チェック時のバージョンと比較する
3. 新機能が見つかった場合：
   a. 機能の詳細をリサーチする
   b. 5 つの観点でスコアリングする
   c. 30 点以上の機能について採用提案を作成する
   d. CEO に通知する
4. 結果を .company/departments/dev/upgrade-log.md に記録する
```

### 採用の実施

```
1. 提案が承認された後（または自動承認ポリシーが適用される場合）
2. 既存スクリプト、エージェント、スキルを更新する
3. テストを実行する
4. 完了を報告する（STATE.md を更新）
```

## ウォッチ対象機能

| カテゴリ | 現在の利用状況 | アップグレードの機会 |
|----------|-------------|-------------------|
| Hooks | 基本的なイベント駆動 | 新しい Hook イベントタイプ |
| Skills | 定義済みスキル | 新しいスキル機能（引数、チェイニング） |
| MCP | 外部ツール統合 | 新しい MCP サーバー、プロトコル拡張 |
| Agent Teams | 未使用 | マルチエージェント連携 |
| Dispatch | 未使用 | モバイルからのタスク委任 |
| Remote Control | 未使用 | リモート操作 |
| モデル更新 | 現行モデル | パフォーマンス改善 |

## 出力

- アップグレードログ：`.company/departments/dev/upgrade-log.md`
- 提案：`.company/departments/dev/upgrade-proposals/`
