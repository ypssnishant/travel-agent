# Shared setup for the workspace scripts. Sourced, not run directly.
cd "$(dirname "$0")/../.." || exit 0
export GIT_TERMINAL_PROMPT=0
# A fresh copy of Agent Template still carries the template's Git history and GitHub link.
# Drop them so the copy starts clean with its own history. The template itself (folder "Agent Template" on the Mac,
# "agent-template" in a cloud session) is untouched.
if [ -d .git ] && [ "$(basename "$PWD")" != "Agent Template" ] && [ "$(basename "$PWD")" != "agent-template" ] \
   && git remote get-url origin 2>/dev/null | grep -qE '/agent-template(\.git)?$'; then
  rm -rf .git
  echo "Workspace: fresh copy of Agent Template, started its own Git history (no GitHub repo yet)."
fi
# First run in a fresh copy: start Git and take a first snapshot.
if [ ! -d .git ]; then
  git init -q && git add -A && git commit -q -m "First snapshot" >/dev/null 2>&1
fi
# Sync with GitHub only if a remote named origin exists.
HAS_REMOTE=0; git remote get-url origin >/dev/null 2>&1 && HAS_REMOTE=1
# The branch to sync: always master, whatever branch a cloud session starts on.
BRANCH=master
