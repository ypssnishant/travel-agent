#!/bin/bash
# Creates a PRIVATE GitHub repository for this workspace and connects it, so snapshots are
# pushed there. Only run when the user has said yes.
# Usage: SCRIPTS/connect-github.sh [repo-name]   (default: the folder name, lowercased with dashes)
source "$(dirname "$0")/_common.sh"
if [ $HAS_REMOTE = 1 ]; then echo "Already connected to GitHub: $(git remote get-url origin)"; exit 0; fi
command -v gh >/dev/null || { echo "The GitHub CLI (gh) isn't installed. Install it, run 'gh auth login', then try again."; exit 1; }
gh auth status >/dev/null 2>&1 || { echo "Not signed in to GitHub. Run 'gh auth login', then try again."; exit 1; }
NAME="${1:-$(basename "$PWD" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9._-]\{1,\}/-/g; s/^-//; s/-$//')}"
OWNER=$(gh api user --jq .login)
if gh repo view "$OWNER/$NAME" >/dev/null 2>&1; then
  echo "A repository called $OWNER/$NAME already exists. Choose another name: SCRIPTS/connect-github.sh <name>"; exit 1
fi
git add -A >/dev/null 2>&1; git diff --cached --quiet || git commit -q -m "Snapshot before connecting GitHub"
# The repository lives on master, so its first push and its default branch are master.
git branch -M master
gh repo create "$OWNER/$NAME" --private --source . --remote origin --push >/dev/null 2>&1 \
  && echo "Connected: private repository https://github.com/$OWNER/$NAME created and pushed." \
  || echo "Couldn't create the repository. Check your GitHub sign-in and try again."
