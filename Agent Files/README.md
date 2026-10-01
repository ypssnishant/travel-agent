# README

##### ॐ श्री आशुतोषाय नमः


The Travel Agent supports Kulwinder's planning of trips and tours, seva or personal, including long stays in camps or basic houses where nothing is available. Kulwinder leads the planning; the agent records what he decides, in his words (what to pack, what to eat and drink, what to buy and arrange, and what it costs), answers his questions, looks things up and gives suggestions when he asks. Each trip has its own folder, and every trip's lessons are kept for the next. Its private GitHub repo is `travel-agent`.

#### Files

The top of the Travel Agent's folder holds only `CLAUDE.md`, `AGENTS.md`, the work folder `My Trips by Grace/` and `Agent Files/`; hidden files (`.claude/`, `.git`, `.gitignore`, `.obsidian/`) sit there too.

- `CLAUDE.md`: loads `AGENTS.md`, `Agent Files/COMMON RULES.md` and `Agent Files/RULES.md` into Claude.
- `AGENTS.md`: who the Travel Agent is, how it supports a trip, and the files it uses.
- `Agent Files/`: the agent's own system files:
  - `COMMON RULES.md`: the rules every agent follows, word for word the same in every agent's `Agent Files/`.
  - `RULES.md`: the rules only the Travel Agent follows.
  - `README.md`: this file.
  - `SCRIPTS/`: Git tracking and GitHub sync. `snapshot.sh` commits and pushes to GitHub, always to `master` (plus a plain push of a cloud session's own branch); `whats-changed.sh` shows changes since the last snapshot, open group chat messages for this agent and reminders due within 3 days; both scripts also sync the `COMMON` files with GitHub, on the Mac and in the cloud; `connect-github.sh` connects a GitHub repo; `_common.sh` is shared setup. Run them from the folder top, e.g. `bash "Agent Files/SCRIPTS/snapshot.sh"`.
- `My Trips by Grace/`: the work folder (marked green in Obsidian), holding everything Kulwinder works with. Inside it:
  - `My Trips by Grace.md`: the top index in Obsidian, linking to every trip (newest first), then the Master Documents index.
  - `Master Documents/`: the master files, with its index note `Master Documents.md` linking to each; any master file made later goes here too:
    - `Master Lessons.md`: lessons from every trip, grouped by topic, each noting the trip it came from.
    - `Master Requirement List.md`: the requirement list built from Kulwinder's trips and lessons, used for a new trip only when he asks.
  - One folder per trip, named `<Name> Trip (<Mon YYYY>)`, with the start month and year in brackets after the trip's name (e.g. `Anni Trip (Oct 2026)/`), each holding an index note named after the folder, `Overview.md`, `Budget.md`, `Tasks.md` (Buy and To Do) and a `Requirement List/` folder with its index note `Requirement List.md`, one file per category Kulwinder picks for the trip (food, with its rations, utensils, cookware and water, is the `Food.md` category file) and `Requirements from Host.md` (what the host arranges for us). A trip with a set meal plan also has `Menu.md` beside `Overview.md`, holding the meal plan.
- Indexes and breadcrumbs: every folder has an index note named after it, every file below the top has a breadcrumb under the salutation linking to each index above it, and links are wiki links with the path from the Travel Agent's folder and an alias, e.g. `[[My Trips by Grace/Anni Trip (Oct 2026)/Overview|Overview]]` (the Travel Agent's folder is the Obsidian vault).
- The shared files in the Chief of Staff folder (in a cloud session, the `chief-of-staff` repo cloned next to the Travel Agent's folder as `../chief-of-staff`): `COMMON MEMORY.md`, `COMMON TOOLS.md`, `COMMON GROUPCHAT.md`, `COMMON REMINDERS.md`, `COMMON IDEAS.md`, `COMMON REMEMBER/`, `COMMON DAILY LOG/` (one file per day, where this agent's lines start with `Travel Agent:`) and `COMMON ASSETS/` (media, in Dropbox only).
- `.claude/settings.json` runs the scripts automatically in Claude; `.gitignore` sets what Git tracks.
