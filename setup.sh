#!/bin/bash

# 作成するディレクトリ一覧
dirs=(
  "docsite/docs"
  "docsite/src"
  "frontend/app/lib"
  "frontend/app/assets"
  "frontend/app/android"
  "frontend/app/ios"
  "frontend/app/web"
  "frontend/admin/lib"
  "frontend/admin/assets"
  "frontend/admin/android"
  "frontend/admin/ios"
  "frontend/admin/web"
  "frontend/shared"
  "backend/src"
  "backend/gen"
  "proto/frontend"
  "proto/backend"
  "infra/db"
  "infra/redis"
  "infra/k8s"
  "infra/terraform"
  ".github/workflows"
)

# 作成するファイル一覧
files=(
  "docsite/docusaurus.config.js"
  "docsite/package.json"
  "docsite/tsconfig.json"
  "docsite/README.md"
  "frontend/app/pubspec.yaml"
  "frontend/app/README.md"
  "frontend/admin/pubspec.yaml"
  "frontend/admin/README.md"
  "backend/pubspec.yaml"
  "backend/Dockerfile"
  "backend/README.md"
  "proto/api.proto"
  "proto/model.proto"
  "proto/buf.yaml"
  "proto/README.md"
  "infra/docker-compose.yml"
  "infra/README.md"
  ".github/workflows/ci.yml"
  "turbo.json"
  "package.json"
  ".gitignore"
  "README.md"
  "LICENSE"
)

# ディレクトリ作成
echo "📁 Creating directories..."
for dir in "${dirs[@]}"; do
  mkdir -p "$dir"
done

# ファイル作成（空のファイル）
echo "📄 Creating files..."
for file in "${files[@]}"; do
  touch "$file"
done

# 初期設定用の JSON ファイルを作成
cat <<EOF > turbo.json
{
  "pipeline": {
    "build": {
      "dependsOn": ["^build"],
      "outputs": ["dist/**", "build/**"]
    },
    "deploy": {
      "dependsOn": ["build"],
      "cache": false
    }
  }
}
EOF

cat <<EOF > package.json
{
  "name": "fullstack-dart-template",
  "version": "1.0.0",
  "workspaces": ["docsite", "frontend/app", "frontend/admin", "backend"],
  "scripts": {
    "build": "turbo run build",
    "deploy": "turbo run deploy"
  }
}
EOF

cat <<EOF > .gitignore
node_modules/
dist/
build/
.env
.DS_Store
EOF

echo "✅ Setup complete!"
