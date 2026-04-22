#!/usr/bin/env bash
set -euo pipefail

# 安裝此 repo 內 skills 到 OpenClaw workspace
# 用法：
#   bash scripts/install-skills.sh [OPENCLAW_WORKSPACE]
# 預設：$HOME/.openclaw/workspace

TARGET_WORKSPACE="${1:-$HOME/.openclaw/workspace}"
TARGET_SKILLS_DIR="$TARGET_WORKSPACE/skills"
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC_SKILLS_DIR="$REPO_ROOT/skills"

mkdir -p "$TARGET_SKILLS_DIR"

for skill_dir in "$SRC_SKILLS_DIR"/*; do
  [ -d "$skill_dir" ] || continue
  skill_name="$(basename "$skill_dir")"
  rm -rf "$TARGET_SKILLS_DIR/$skill_name"
  cp -a "$skill_dir" "$TARGET_SKILLS_DIR/$skill_name"
  echo "Installed skill: $skill_name"
done

echo "Done. Skills installed to: $TARGET_SKILLS_DIR"
