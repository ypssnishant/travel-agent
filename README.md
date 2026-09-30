# README

##### ॐ श्री आशुतोषाय नमः


The Travel Agent supports Kulwinder's planning of trips and tours, seva or personal, including long stays in camps or basic houses where nothing is available. Kulwinder leads the planning; the agent records what he decides, in his words (what to pack, what to eat and drink, what to buy and arrange, and what it costs), answers his questions, looks things up and gives suggestions when he asks. Each trip has its own folder, and every trip's lessons are kept for the next. Its private GitHub repo is `travel-agent`.

#### Files

- `AGENTS.md`: who the Travel Agent is, how it supports a trip, and the files it uses.
- `COMMON RULES.md`: the rules every agent follows, word for word the same in every agent's folder.
- `RULES.md`: the rules only the Travel Agent follows.
- `CLAUDE.md`: loads `AGENTS.md`, `COMMON RULES.md` and `RULES.md` into Claude.
- `My Trips by Grace.md`: the top index in Obsidian, linking to every trip (newest first), then `Lessons.md` and `Master Packing List.md`.
- `Trips/`: one folder per trip, named with its start month and name (e.g. `Oct 2026 Anni Trip/`), each holding an index note named after the folder, `Overview.md`, `Budget.md`, `Tasks.md` (Buy and To Do) and a `Packing List/` folder with its index note `Packing List.md` and one file per category Kulwinder picks for the trip (food, with its menu and water, is the `Food.md` category file).
- Indexes and breadcrumbs: every folder has an index note named after it, every file below the top has a breadcrumb under the salutation linking to each index above it, and links use full vault paths with an alias (the Obsidian vault is the Chief of Staff folder).
- `Lessons.md`: lessons from every trip, grouped by topic, each noting the trip it came from.
- `Master Packing List.md`: the packing list built from Kulwinder's trips and lessons, used for a new trip only when he asks.
- `SKILLS/`: the agent's skills, one file each.
- The shared files in the Chief of Staff folder (in a cloud session, the `chief-of-staff` repo cloned next to this folder as `../chief-of-staff`): `COMMON MEMORY.md`, `COMMON TOOLS.md`, `COMMON GROUPCHAT.md`, `COMMON REMINDERS.md`, `COMMON IDEAS.md`, `COMMON REMEMBER/`, `COMMON DAILY LOG/` (one file per day, where this agent's lines start with `Travel Agent:`) and `COMMON ASSETS/` (media, in Dropbox only).
- `SCRIPTS/`: Git tracking and GitHub sync. `snapshot.sh` commits and pushes to GitHub, always to `master` (plus a plain push of a cloud session's own branch); `whats-changed.sh` shows changes since the last snapshot, open group chat messages for this agent and reminders due within 3 days; both scripts also sync the `COMMON` files with GitHub, on the Mac and in the cloud; `connect-github.sh` connects a GitHub repo; `_common.sh` is shared setup.
- `.claude/settings.json` runs the scripts automatically in Claude; `.gitignore` sets what Git tracks.
