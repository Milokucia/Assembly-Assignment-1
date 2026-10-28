#!/bin/sh
# Usage: ./upload.sh [repo-name]   (default: Assembly-Assignment-1)
set -e
cd "$(dirname "$0")"
name="${1:-Assembly-Assignment-1}"
[ -d .git ] || git init -q -b main
git add -A
git commit -m "Assembly Assignment 1" || true
gh repo create "$name" --private --source=. --remote=origin --push
