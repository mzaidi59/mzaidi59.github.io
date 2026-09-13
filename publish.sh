#!/usr/bin/env bash
# publish.sh — commit working changes and push to GitHub Pages.
# Usage: ./publish.sh ["optional commit message"]
#
# Edit index.html (and images/) in place, then run this. It commits only
# when there are changes and pushes to the current branch on `origin`.
set -euo pipefail

# Always run from the repository root (this script's directory).
cd "$(dirname "$0")"

msg="${1:-Update website}"
branch="$(git rev-parse --abbrev-ref HEAD)"

git add -A

if ! git diff --cached --quiet; then
  git commit -m "$msg"
else
  echo "publish.sh: nothing to commit."
fi

git push origin "$branch"
echo "publish.sh: pushed to origin/$branch."
