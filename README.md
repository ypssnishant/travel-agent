# README

##### ॐ श्री आशुतोषाय नमः


The Travel Agent plans Kulwinder's trips and tours, seva or personal, including long stays in camps or basic houses where nothing is available: what to pack, what to eat and drink, what to buy and arrange, and what it costs. Each trip has its own folder, and every trip's lessons carry into the next. Its private GitHub repo is `travel-agent`.

#### Files

- `AGENTS.md`: who the Travel Agent is, how it plans a trip, and the files it uses.
- `COMMON RULES.md`: the rules every agent follows, word for word the same in every agent's folder.
- `RULES.md`: the rules only the Travel Agent follows.
- `CLAUDE.md`: loads `AGENTS.md`, `COMMON RULES.md` and `RULES.md` into Claude.
- `Trips/`: one folder per trip, named with its start month and name (e.g. `Oct 2026 Anni Trip/`), each holding `Overview.md`, `Packing List.md`, `Food.md` (water inside), `Budget.md` and `Tasks.md` (Buy and To Do).
- `Lessons.md`: lessons from every trip, grouped by topic, each noting the trip it came from.
- `Master Packing List.md`: the tested packing list every new trip starts from.
- `SKILLS/Trip Planning.md`: the checklist for planning any trip.
- The shared files in the Chief of Staff folder (in a cloud session, the `chief-of-staff` repo cloned next to this folder as `../chief-of-staff`): `COMMON MEMORY.md`, `COMMON TOOLS.md`, `COMMON GROUPCHAT.md`, `COMMON REMINDERS.md`, `COMMON IDEAS.md`, `COMMON REMEMBER/`, `COMMON DAILY LOG/` (one file per day, where this agent's lines start with `Travel Agent:`) and `COMMON ASSETS/` (media, in Dropbox only).
- `SCRIPTS/`: Git tracking and GitHub sync. `snapshot.sh` commits and pushes to GitHub, always to `master` (plus a plain push of a cloud session's own branch); `whats-changed.sh` shows changes since the last snapshot, open group chat messages for this agent and reminders due within 3 days; both scripts also sync the `COMMON` files with GitHub, on the Mac and in the cloud; `connect-github.sh` connects a GitHub repo; `_common.sh` is shared setup.
- `.claude/settings.json` runs the scripts automatically in Claude; `.gitignore` sets what Git tracks.
