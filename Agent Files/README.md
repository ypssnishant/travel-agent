# README

##### ॐ श्री आशुतोषाय नमः


The Travel Agent supports Kulwinder's planning of trips and tours, seva or personal, including long stays in camps or basic houses where nothing is available. Kulwinder leads the planning; the agent records what he decides, in his words (what to pack, what to eat and drink, what to buy and arrange, and what it costs), answers his questions, looks things up and gives suggestions when he asks. Each trip has its own folder, and every trip's lessons are kept for the next. Its private GitHub repo is `travel-agent`.

#### Files

The top of the Travel Agent's folder holds only `CLAUDE.md`, `AGENTS.md`, the navigation note `Travel Agent.md`, the work folder `My Trips by Grace/`, the reference folder `Master Documents/` and `Agent Files/`; hidden files (`.claude/`, `.git`, `.gitignore`, `.obsidian/`) sit there too.

- `CLAUDE.md`: loads `AGENTS.md`, `Agent Files/COMMON RULES.md` and `Agent Files/RULES.md` into Claude.
- `AGENTS.md`: who the Travel Agent is, how it supports a trip, and the files it uses.
- `Agent Files/`: the agent's own system files:
  - `COMMON RULES.md`: the rules every agent follows, word for word the same in every agent's `Agent Files/`.
  - `RULES.md`: the rules only the Travel Agent follows.
  - `README.md`: this file.
  - `SCRIPTS/`: Git tracking and GitHub sync. `snapshot.sh` commits and pushes to GitHub, always to `master` (plus a plain push of a cloud session's own branch); `whats-changed.sh` shows changes since the last snapshot, open group chat messages for this agent and reminders due within 3 days; both scripts also sync the `COMMON` files with GitHub, on the Mac and in the cloud; `move-completed.py`, run by `whats-changed.sh` at the start of each session and before each message, moves every ticked task on a page with a `Completed` section to the top of that section; `connect-github.sh` connects a GitHub repo; `_common.sh` is shared setup. Run them from the folder top, e.g. `bash "Agent Files/SCRIPTS/snapshot.sh"`.
- `Travel Agent.md`: the navigation note, Kulwinder's way in, linking to `My Trips by Grace/My Trips by Grace.md` and `Master Documents/Master Documents.md`.
- `Master Documents/`: what every trip draws on, the master files, with its index note `Master Documents.md` linking to each; any master file made later goes here too:
  - `Master Lessons.md`: lessons from every trip, grouped by topic, each noting the trip it came from.
  - `Master Requirement List.md`: the requirement list built from Kulwinder's trips and lessons, used for a new trip only when he asks.
- `My Trips by Grace/`: the work folder (marked green in Obsidian), holding the trips. Inside it:
  - `My Trips by Grace.md`: the top index in Obsidian, linking to every trip, newest first.
  - One folder per trip, named `<Name> Trip (<Mon YYYY>)`, with the start month and year in brackets after the trip's name (e.g. `Anni Trip (Oct 2026)/`), each holding an index note named after the folder, `Overview.md`, `Budget.md`, `Tasks.md` (Buy, To Do and Completed at the bottom, where ticked tasks move), `Review.md`, an `Assets/` folder and a `Requirement List/` folder with its index note `Requirement List.md`, one file per category Kulwinder picks for the trip (food, with its rations, utensils, cookware and water, is the `Food.md` category file) and `Requirements from Host.md` (what the host arranges for us). The requirement lists keep their ticks in place, since a tick there means packed or arranged, and have no Completed section. A trip with a set meal plan also has `Menu.md` beside `Overview.md`, holding the meal plan.
    - `Travel Diary.md`: made once Kulwinder marks a stop or gives a diary entry. His diary of the trip: every place we stop on the way there and back, his insights, photos and anything he'd like to share, newest entry at the top, with a `---` line between entries and a blank line above and below it. A stop is these lines, in order: the date and time in faint grey (`<span style="color: var(--text-faint)">…</span>`, India time, e.g. "2 Oct 2026, 9:54 pm", the time he marks it unless he gives one); the place's name as a `####` heading; one paragraph on a single line: what we stopped for, followed by his words about the place when he gives any; any photo with its `[View in Dropbox](…)` line; then the map link as `[Map](…)`. No address or other detail; meals are not named. Every other entry has the same shape: the date and time in faint grey, a `####` heading, then his words, then any media links.
    - `Review.md`: one bullet per review point, in Kulwinder's words, for future trips; after the trip, its points are carried into `Master Lessons.md`.
    - `Assets/`: the trip's photos, videos and files, in Dropbox only. Media in the diary or any trip file uses a path relative to that file in angle brackets: a photo is embedded with `!` in front so it shows on the page, e.g. `![Garkhal tea](<Assets/Garkhal tea.jpg>)`, and other media (PDFs, videos, audio) is a plain link without `!`, each with `[View in Dropbox](…)` on the line below, made with the Dropbox connector. Diary photos are landscape 16:9, saved as JPEG at most 1920×1080 so the diary loads fast; the full-size original of Kulwinder's own photo stays in `Assets/Originals/`.
- Indexes: every folder except `Assets/` has an index note named after it, updated whenever a trip, list or file is added, renamed or removed, and links are wiki links with the path from the Travel Agent's folder and an alias, e.g. `[[My Trips by Grace/Anni Trip (Oct 2026)/Overview|Overview]]` (the Travel Agent's folder is the Obsidian vault).
- The shared files in the Chief of Staff folder (in a cloud session, the `chief-of-staff` repo cloned next to the Travel Agent's folder as `../chief-of-staff`): `COMMON MEMORY.md`, `COMMON TOOLS.md`, `COMMON GROUPCHAT.md`, `COMMON REMINDERS.md`, `COMMON IDEAS.md`, `COMMON REMEMBER/` and `COMMON DAILY LOG/` (one file per day, where this agent's lines start with `Travel Agent:`).
- `.claude/settings.json` runs the scripts automatically in Claude; `.gitignore` sets what Git tracks and leaves out every `Assets/` folder.
