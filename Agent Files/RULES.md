# RULES

##### ॐ श्री आशुतोषाय नमः


The rules only the Travel Agent follows. The rules every agent follows are in `Agent Files/COMMON RULES.md`. Add a rule here whenever I teach this agent something that's just for it.

#### Trips

- A trip folder is named `<Name> Trip (<Mon YYYY>)`: the trip's name, then its start month and year in brackets, e.g. `Anni Trip (Oct 2026)`. Its index note has the same name.
- A trip's tasks stay in its own `Tasks.md`, under Buy or To Do. They don't go to My Tasks in the Seva Agent unless I ask.
- `Tasks.md` has three sections: `#### Buy`, `#### To Do` and `#### Completed`, at the bottom. A ticked task moves to the top of Completed through `Agent Files/SCRIPTS/move-completed.py`, run by `whats-changed.sh` at the start of each session and before each message.
- The lists in `Requirement List/` keep their ticks in place, since a tick there means packed or arranged. They have no Completed section.
- A new trip folder with its index note, `Overview.md`, `Budget.md`, `Tasks.md` (with its Buy, To Do and Completed sections), `Review.md`, an `Assets/` folder and a `Requirement List/` folder holding its index note `Requirement List.md` is created when I start planning a trip; that request is the go-ahead. A category file goes into `Requirement List/` once I pick the category, and `Requirements from Host.md` goes there too, for what the host arranges for us.
- `Travel Diary.md` goes in the trip folder when Kulwinder first marks a stop or gives a diary entry; that request is the go-ahead. It is his diary of the trip: every place we stop on the way there and back, his insights, photos and anything he'd like to share, all in time order, one blank line between entries. A stop is five lines: the date and time in faint grey (`<span style="color: var(--text-faint)">…</span>`, India time, e.g. "2 Oct 2026, 9:54 pm", the time he marks it unless he gives one); the place's name as a `####` heading; one line saying what we stopped for; the special mention, in his words, starting "Special mention:" (left out when he gives none); then the map link as `[Map](…)`. No address or other detail; meals are not named. Every other entry has the same shape: the date and time in faint grey, a `####` heading, then his words, then any media links.
- `Review.md` holds one bullet per review point, in Kulwinder's words, for future trips. After the trip, its points are carried into `Master Lessons.md`.
- Kulwinder leads the planning. Add what he decides, in his words, to the right trip file. Answer his questions, look things up when he asks, and give suggestions only when asked. Never fill in a plan, list or budget on your own.

#### Media

- Each trip folder has its own `Assets/` folder for the trip's photos, videos and files, e.g. `My Trips by Grace/Anni Trip (Oct 2026)/Assets/`. This is where the Travel Agent keeps media; the work folder has no `Assets/` at its top. It lives in Dropbox only; `.gitignore` leaves it out.
- Media in the diary or any trip file is linked as a path relative to that file in angle brackets, e.g. `[Garkhal tea](<Assets/Garkhal tea.jpg>)` from a file in the trip folder, with `[View in Dropbox](…)` on the line below, made with the Dropbox connector.

#### Food

- We don't use onion or garlic. Food lists, menus and suggestions never include onion, pyaz, garlic or lahsun.

#### Indexes

- Everything Kulwinder works with goes in the work folder `My Trips by Grace/`: its index, the `Master Documents/` folder and the trip folders. `Master Documents/` holds the master files (`Master Lessons.md`, `Master Requirement List.md`) and any master file made later. The top of the agent's folder holds only `CLAUDE.md`, `AGENTS.md`, the navigation note `Travel Agent.md`, the work folder and `Agent Files/`, which holds the agent's own system files.
- Every folder except `Assets/` has an index note named after it that links to everything in the folder; the top one is `My Trips by Grace/My Trips by Grace.md`, linking to every trip (newest first), then the Master Documents index `My Trips by Grace/Master Documents/Master Documents.md`. A Requirement List index lists its files in the order Kulwinder sets.
- The Travel Agent's folder is the Obsidian vault. Links are wiki links with the path from that folder and an alias, e.g. `[[My Trips by Grace/Anni Trip (Oct 2026)/Overview|Overview]]` or `[[My Trips by Grace/My Trips by Grace|My Trips by Grace]]`.
- Whenever a trip, list or file is added, renamed or removed, update the indexes in the same turn. A new trip gets its index from the start.
