# fullstack-dart-template

Fullstack template for dart using monorepo.

```text
/
├ docsite/      # 仕様ドキュメントサイト
│  ├ docs/      # ドキュメント本体
│  ├ src/       # サイトのソースコード
│  ├ docusaurus.config.ts
│  ├ package.json
│  ├ tsconfig.json
│  └ README.md
├ frontend/     # Flutter アプリ（一般ユーザー用 & 管理者用）
│  ├ app/       # 一般利用向け
│  │  ├ lib/
│  │  ├ assets/
│  │  ├ android/
│  │  ├ ios/
│  │  ├ web/
│  │  ├ pubspec.yaml
│  │  └ README.md
│  ├ admin/     # 管理者向け
│  │  ├ lib/
│  │  ├ assets/
│  │  ├ android/
│  │  ├ ios/
│  │  ├ web/
│  │  ├ pubspec.yaml
│  │  └ README.md
│  ├ shared/    # 共通コンポーネント・ロジック
│  ├ Dockerfile # フロントエンド用（必要なら）
│  └ README.md
├ backend/      # Connect-Dart サーバー
│  ├ src/       # メインコード
│  ├ gen/       # 生成された protobuf コード（`proto/` から生成）
│  ├ Dockerfile # バックエンド用
│  ├ pubspec.yaml
│  └ README.md
├ proto/        # プロジェクト共通の protobuf 定義
│  ├ api.proto  # API 定義
│  ├ model.proto # モデル定義
│  ├ buf.yaml
│  ├ frontend/  # フロントエンド用出力
│  ├ backend/   # バックエンド用出力
│  └ README.md
├ infra/        # インフラ関連の設定
│  ├ docker-compose.yml
│  ├ db/        # DB用の設定
│  ├ redis/     # Redis設定（必要なら）
│  ├ k8s/       # Kubernetes 設定（必要なら）
│  ├ terraform/ # Terraform 設定（必要なら）
│  └ README.md
├ .github/      # GitHub Actionsの設定（CI/CD用）
├ turbo.json    # Turborepo 設定
├ package.json  # Turborepo ルート設定
├ .gitignore
├ README.md
└ LICENSE
```
