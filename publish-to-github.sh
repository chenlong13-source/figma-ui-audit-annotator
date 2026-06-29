#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: ./publish-to-github.sh <git@github.com:owner/repo.git|https://github.com/owner/repo.git>"
  exit 1
fi

remote_url="$1"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "This directory is not a git repository."
  exit 1
fi

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$remote_url"
else
  git remote add origin "$remote_url"
fi

git add .
if ! git diff --cached --quiet; then
  git commit -m "Publish figma-ui-audit-annotator skill"
fi

git branch -M main
git push -u origin main
