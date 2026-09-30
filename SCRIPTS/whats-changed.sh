#!/bin/bash
# Run at the start of a session (and, quietly, before each message). Reports (1) changes made
# in other sessions (pulled from GitHub, if connected) and (2) changes made outside any agent
# (e.g. in Obsidian), then snapshots and syncs, (4) shows open group chat messages for this agent and (5) reminders due within 3 days.
source "$(dirname "$0")/_common.sh"
QUIET=0; [ "$1" = "--quiet" ] && QUIET=1   # --quiet: say nothing when nothing changed

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

# 1. Changes pushed to GitHub by other sessions.
if [ $HAS_REMOTE = 1 ]; then
  if git fetch -q origin "$BRANCH" 2>/dev/null; then
    if [ -n "$(git diff --name-only HEAD...origin/$BRANCH 2>/dev/null)" ]; then
      echo "Workspace: changes made in another session (pulled from GitHub):"
      git diff --name-status HEAD...origin/$BRANCH
      git diff --unified=1 HEAD...origin/$BRANCH | head -200
      echo
    fi
  else
    [ $QUIET = 1 ] || echo "Workspace: couldn't reach GitHub (offline?), working with the local copy."
  fi
fi

# 2. Changes made outside any agent since the last snapshot.
git add -A >/dev/null 2>&1
if git diff --cached --quiet; then
  [ $QUIET = 1 ] || echo "Workspace: no changes made outside the agent since the last snapshot."
else
  echo "Workspace: files changed outside the agent (e.g. in Obsidian) since the last snapshot:"
  git diff --cached --name-status
  echo
  echo "Details:"
  git diff --cached --unified=1 | head -300
  git commit -q -m "Changes since last snapshot" >/dev/null 2>&1
fi

# 3. Sync: bring in other sessions' changes, send ours up.
if [ $HAS_REMOTE = 1 ] && git rev-parse -q --verify "origin/$BRANCH" >/dev/null; then
  if ! git pull -q --rebase origin "$BRANCH" 2>/dev/null; then
    git rebase --abort 2>/dev/null
    echo "SYNC CONFLICT: local and GitHub changes clash. Agent: merge origin/$BRANCH by hand, keeping both sides' edits."
  fi
  git push -q origin "HEAD:$BRANCH" 2>/dev/null
  # Cloud sessions start on their own branch; push it too (plain push, never overwriting), so the cloud's "unpushed commits" check stays quiet.
  CUR=$(git branch --show-current)
  [ -n "$CUR" ] && [ "$CUR" != "$BRANCH" ] && git push -q origin "HEAD:$CUR" 2>/dev/null
fi

# 4. Group chat: bring in the latest COMMON files, then show open messages for this agent.
chat_sync
if [ -n "$CHATDIR" ]; then
  OPEN=$(awk '/^#### Messages/{m=1;next} m' "$CHATDIR/COMMON GROUPCHAT.md" | grep -E "^- .*→ [^·]*($ME|@all)[^·]*·.*· open[[:space:]]*$")
  [ -n "$OPEN" ] && { echo "Group chat: open messages for $ME (COMMON GROUPCHAT.md):"; echo "$OPEN"; echo; }
fi

# 5. Reminders: open reminders due within 3 days, or overdue, from COMMON REMINDERS.md (next to COMMON GROUPCHAT.md).
if [ -n "$CHATDIR" ] && [ -f "$CHATDIR/COMMON REMINDERS.md" ]; then
  # Dates are written "1 Oct 2026"; compare them as YYYYMMDD numbers.
  TODAY=$(TZ=Asia/Kolkata date +%Y%m%d); TODAY_TXT=$(TZ=Asia/Kolkata date '+%-d %b %Y')
  LIMIT=$(TZ=Asia/Kolkata date -v+3d +%Y%m%d 2>/dev/null || TZ=Asia/Kolkata date -d '+3 days' +%Y%m%d)
  LIMIT_TXT=$(TZ=Asia/Kolkata date -v+3d '+%-d %b %Y' 2>/dev/null || TZ=Asia/Kolkata date -d '+3 days' '+%-d %b %Y')
  DUE=$(awk -v t="$TODAY" -v l="$LIMIT" '
    function k(d, mon, y,  i) { i = index("JanFebMarAprMayJunJulAugSepOctNovDec", mon); return i ? y * 10000 + ((i + 2) / 3) * 100 + d : 0 }
    /^#### Reminders/{m=1;next}
    m && /^- [0-9][0-9]? [A-Z][a-z][a-z] [0-9][0-9][0-9][0-9]/ && /· open/ {
      split(substr($0,3), p, " "); d = k(p[1], p[2], p[3]); if (d == 0 || d > l) next
      told = 0; if (match($0, /told [0-9][0-9]? [A-Z][a-z][a-z] [0-9][0-9][0-9][0-9]/)) { split(substr($0, RSTART + 5, RLENGTH - 5), q, " "); told = k(q[1], q[2], q[3]) }
      print $0 (told == t ? "" : "   ← not mentioned yet today") }' "$CHATDIR/COMMON REMINDERS.md")
  [ -n "$DUE" ] && { echo "Reminders due by $LIMIT_TXT (COMMON REMINDERS.md; today is $TODAY_TXT):"; echo "$DUE"; echo; }
fi
exit 0
