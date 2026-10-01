#!/bin/bash
# Run after making changes: saves a snapshot, and pushes it to GitHub if connected.
# Prints one status line; the agent tells Kulwinder only when it shows a problem.
source "$(dirname "$0")/_common.sh"

# Shared files: the COMMON files sit in the Chief of Staff folder (next to ROSTER.md); in a cloud session they're in the
# chief-of-staff repo cloned next to this folder. chat_sync fetches, commits and pushes only those, nothing else.
SHARED=("COMMON GROUPCHAT.md" "COMMON REMINDERS.md" "COMMON MEMORY.md" "COMMON TOOLS.md" "COMMON IDEAS.md" "COMMON REMEMBER" "COMMON DAILY LOG")
CHATDIR=""; for d in . .. ../chief-of-staff; do [ -f "$d/COMMON GROUPCHAT.md" ] && { CHATDIR=$d; break; }; done
ME=$(basename "$PWD")
case "$ME" in "Chief of Staff"|chief-of-staff) ME="Chief of Staff";; *[A-Z]*) ;; *) ME=$(echo "$ME" | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)} 1');; esac
chat_sync() {
  [ -n "$CHATDIR" ] && [ "$CHATDIR" != "." ] && git -C "$CHATDIR" rev-parse -q --verify HEAD >/dev/null 2>&1 || return 0
  git -C "$CHATDIR" add -- "${SHARED[@]}" >/dev/null 2>&1
  git -C "$CHATDIR" diff --cached --quiet -- "${SHARED[@]}" || git -C "$CHATDIR" commit -q -m "Shared files" -- "${SHARED[@]}" >/dev/null 2>&1
  git -C "$CHATDIR" pull -q --rebase --autostash origin master >/dev/null 2>&1 || git -C "$CHATDIR" rebase --abort >/dev/null 2>&1
  git -C "$CHATDIR" push -q origin HEAD:master >/dev/null 2>&1
  return 0
}
git add -A >/dev/null 2>&1
if git diff --cached --quiet; then COMMITTED=0; else
  git commit -q -m "Snapshot after agent changes" >/dev/null 2>&1; COMMITTED=1; fi
# Shared files: push any new lines in the COMMON files too.
chat_sync
if [ $HAS_REMOTE = 0 ]; then
  [ $COMMITTED = 1 ] && echo "Sync: committed to Git (no GitHub remote set up)." || echo "Sync: nothing new to commit (no GitHub remote set up)."
  exit 0
fi
PULLED=0
if ! git push -q origin "HEAD:$BRANCH" 2>/dev/null; then
  BEFORE=$(git rev-parse HEAD)
  if git pull -q --rebase origin "$BRANCH" 2>/dev/null; then
    PULLED=$(git rev-list --count "$BEFORE..HEAD" 2>/dev/null || echo 0)
    if ! git push -q origin "HEAD:$BRANCH" 2>/dev/null; then
      echo "Sync: committed locally; push to GitHub failed (offline?), will retry next time."; exit 0; fi
  else
    git rebase --abort 2>/dev/null
    echo "SYNC CONFLICT: couldn't push to GitHub. Agent: merge origin/$BRANCH by hand."; exit 0
  fi
fi
# Cloud sessions start on their own branch; push it too (plain push, never overwriting), so the cloud's "unpushed commits" check stays quiet.
CUR=$(git branch --show-current)
[ -n "$CUR" ] && [ "$CUR" != "$BRANCH" ] && git push -q origin "HEAD:$CUR" 2>/dev/null
MSG="Sync:"
[ $COMMITTED = 1 ] && MSG="$MSG committed to Git and pushed to GitHub" || MSG="$MSG nothing new to commit; GitHub is up to date"
[ "$PULLED" != 0 ] && MSG="$MSG (pulled in newer changes from GitHub first)"
echo "$MSG."
exit 0
