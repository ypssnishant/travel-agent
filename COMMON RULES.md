# COMMON RULES

##### ॐ श्री आशुतोषाय नमः


The rules every one of my agents follows, the Chief of Staff included. This file is word for word the same in every agent's folder, in `Agent Template` and in the Chief of Staff folder, so each agent has it on the Mac and in a cloud session alike. An agent's own rules are in its `RULES.md`; where the two differ, its own rules win. Who the agent is and how it does its job are in its `AGENTS.md`.

#### Agents and folders

- One agent per job, each in its own folder, made from `Agent Template`. Never two agents writing to the same folder or file.
- Naming: the folder is `<Purpose> Agent` in Title Case; its private GitHub repo (account `kulwinderypss`) is the same name in lowercase with dashes (e.g. `Notes Agent` → `notes-agent`).
- The Chief of Staff folder holds the shared files. On the Mac it's `Chief of Staff/` in Dropbox, one level above every agent's folder. In a cloud session, attach the `chief-of-staff` repo with push access at the start and clone it next to your own folder as `../chief-of-staff`, unless it's already there.
- Work only inside your own folder. Outside it, you may write only to the shared files: `COMMON MEMORY.md`, `COMMON TOOLS.md`, `COMMON GROUPCHAT.md`, `COMMON REMINDERS.md`, `COMMON IDEAS.md`, `COMMON REMEMBER/`, `COMMON DAILY LOG/` and `COMMON ASSETS/`. Never edit another agent's files; ask me, or leave it to the Chief of Staff.
- New files and names: when we plan something new or structural, the plan names every new file, folder, session, routine and the like, and says where each goes. Files an agent makes in its everyday work under its own rules (a day's log or schedule file, a note, a task) need no ask.
- Plan first, build on my word. For anything new or structural (new files, folders, layouts, rules, skills, agents, or changes to how things work), first plan it fully with me: options, layout, names, open questions. Nothing is created or changed until the plan is final and I give a build word: "Build it", "Go ahead" or "Do it". Then build exactly what we planned, nothing more. Everyday requests ("add this task", "remind me", "file this note", "put it on the calendar") are done straight away; the request itself is the go-ahead.
- Everyday work never waits for a yes. Do it, then tell me exactly what was done; it can always be edited, and I say if anything is off. Where a detail is unclear, take the most sensible choice under your rules and say in the report what you chose. Ask first only when you truly can't tell what I mean.
- A retired agent moves to `Archived/` in the Chief of Staff folder; it's never deleted.

#### How we talk

- Chat like two people: a line or two, in simple words.
- Say only what's needed. No options, examples or menus unless I ask.
- I lead. Follow, don't run ahead.

#### File names

- A file or folder whose name starts with `COMMON` is shared by every agent. One without it belongs to the agent whose folder it's in.
- `AGENTS.md` says who the agent is, what it does, how it does it, and which files it uses. `RULES.md` holds the rules only that agent follows. `CLAUDE.md` loads `AGENTS.md`, `COMMON RULES.md` and `RULES.md`; a name with a space is written with the space escaped (`@COMMON\ RULES.md`), or it isn't loaded.

#### Dates

- A month and year is written in words: "October 2026" in full, "Oct 2026" short. A full date is "30 Sep 2026". Never write dates as numbers only (e.g. "2026-10" or "2026-09-30").
- This holds everywhere: in text, and in file and folder names (e.g. `30 Sep 2026.md`, `Trips/Oct 2026 Anni Trip/`).
- Left as they are: dates in app project code and technical docs, in text copied from articles or other sources, and what scripts and databases store for their own use.

#### Rules for every agent, and rules for one

- `COMMON RULES.md` changes only through the Chief of Staff, in every copy at once, so the copies stay word for word the same.
- A rule goes to every agent only when I ask the Chief of Staff for it, or ask an agent to pass it on. When I ask an agent to pass something on, it logs it in the Daily Log as "For the Chief of Staff: …", word for word.
- Anything else I teach an agent stays with that agent, in its own `RULES.md` or `AGENTS.md`.

#### Memory and tools

- `COMMON MEMORY.md` is the memory every agent shares: who I am, how I like to work, the people in my life, and anything else worth keeping. `COMMON TOOLS.md` lists the tools, accounts and set-up the agents use.
- Read both at the start of each session. When you learn something lasting, add it to `COMMON MEMORY.md`; when a tool or account comes into use, add it to `COMMON TOOLS.md`.

#### Daily Log

- One log for every agent: `COMMON DAILY LOG/`, one file per day, named by its date, e.g. `30 Sep 2026.md`. Whoever writes first on a day creates the file: `# 30 Sep 2026`, then the salutation below it.
- As you go, add one line for everything done or decided in a message, starting with your own name, e.g. `- Seva Agent: added the Tails task to My Tasks Inbox` or `- Chief of Staff: …`. Don't wait for the end of the conversation; it can end at any moment.
- Only add lines; never edit another agent's.
- At the start of each session, read the latest file: the one with the newest date in its name.

#### Group chat

- Agents message each other in `COMMON GROUPCHAT.md`, following the terms at its top. `SCRIPTS/whats-changed.sh` shows your open messages at the start of each session and with each message I send.
- Add lines only, and never edit anyone else's, except changing `open` to `done` or `needs Kulwinder` on a message addressed to you.

#### Reminders

- Things with a date that I want reminding of go in `COMMON REMINDERS.md`, following the terms at its top. Add one when I ask; if you notice something with a date, ask me before adding it.
- From 3 days before the date, `SCRIPTS/whats-changed.sh` shows the reminder. The agent I'm chatting with mentions it at least once a day at a natural moment, not always at the start, then updates its `told` date.
- Add lines there, and change only `open`, `done` and `told`.

#### Ideas

- Ideas I want to keep or explore go in `COMMON IDEAS.md`: one `###` heading per idea, then my full summary of it below, in my words, newest at the top, just below the introduction. Add one whenever I give you an idea.

#### Remember

- `COMMON REMEMBER/` in the Chief of Staff folder holds the things I ask any agent to remember. Every agent adds to it, in my words.
- `COMMON REMEMBER/General.md` holds short, one-line things to remember (where something is kept, a phone, a code, a setting, a small fact). Add each as a plain bullet under the `####` heading that fits (e.g. Where Things Are Kept, Phones, Codes, Settings); if none fits, add a new fitting `####` heading.
- Anything I give about technology, filmmaking or design (an idea, a thought, a note) goes in `Technology.md`, `Filmmaking.md` or `Design.md` there, under a fitting `####` heading when useful.
- `Issues & Episodes.md` there tracks issues and episodes I name. Add each one as its own `####` heading with its name followed by its kind in brackets, e.g. `#### Water tank leak (Issue)` or `#### Chandigarh program (Episode)`, newest at the top, just below the salutation. As information about one arrives, add it as bullets under its heading, in my words. If it isn't clear which issue or episode new information belongs to, ask me.
- Longer topics with lots of detail (notes, sections, Dropbox links to media) get their own file in `COMMON REMEMBER/`, named after the topic (e.g. `Punjab Election Research.md`), with the usual title, salutation and only the headings that fit. If something in `General.md` grows into a bigger topic, suggest moving it into its own file.
- `Remember.md` there holds only `#### Reference Links`: a wiki link to every other file in `COMMON REMEMBER/` (e.g. `- [[General]]`). Add the link whenever a file is created there, and keep it updated if a file is renamed or deleted.
- References and things for me to look up go in `COMMON REMEMBER/`. Lasting things about me (a preference, a project, a habit, a person) go in `COMMON MEMORY.md`.

#### Media

- Media I give you (photos, PDFs, audio, video and the like) goes in `COMMON ASSETS/` in the Chief of Staff folder, with a clear file name. Link it from the file it belongs with (a task, a note, a meeting, a reminder), as a path relative to that file in angle brackets, e.g. `[Pilu's app error](<../../COMMON ASSETS/Pilu app error.png>)` from `Seva Agent/Tasks/`.
- `COMMON ASSETS/` lives only in Dropbox, not on GitHub.

#### Rule and doc files

- Rule, doc and skill files (`AGENTS.md`, `RULES.md`, `README.md`, skills and the like) describe the present system only, in the present tense: today's tools, today's names, what goes where now. No history: no old tools (e.g. Notion), no old names, no account of what changed. What changed goes in the Daily Log.
- "Update" or "make current" means rewrite the file so it reads as the current system. When adapting older material, rewrite it in today's terms rather than carry its wording over.
- After any change, check that these files still match how things work, and update them in the same turn.

#### Syncing with GitHub

- `SCRIPTS/whats-changed.sh` runs at the start of each session and before each message: it pulls from GitHub, reports what changed in other sessions and outside the agent (e.g. in Obsidian), shows open group chat messages and reminders due, and syncs the `COMMON` files. `SCRIPTS/snapshot.sh` runs after each reply: it commits and pushes, the `COMMON` files included. Claude runs both through `.claude/settings.json`; with other tools, run them yourself.
- Every message ends with everything pushed to `master` on GitHub, whatever branch a cloud session starts on. The scripts push to `master` (`BRANCH=master`), then push the cloud session's own branch too with a plain push (`git push -q origin "HEAD:$CUR"`), never a force push, so nothing is ever overwritten. No pull requests.
- If a script prints SYNC CONFLICT, merge `origin/master` by hand, keeping both sides' edits, run `SCRIPTS/snapshot.sh` again, and tell me clearly.
- "Git pull" from me: an agent pulls its own repo and the `COMMON` files. Said to the Chief of Staff, it means every repo: the Chief of Staff's, every Active agent's and `Agent Template`'s.
- If the workspace has no GitHub repo yet (the sync line says "no GitHub remote set up"), ask me once whether to create one. Only if I say yes, run `SCRIPTS/connect-github.sh`. Never point a workspace at another workspace's repo.

#### Telling me what changed

- At the very end of every message where you created, edited, moved or deleted any file, add a quiet change note in a quote block, in italics: the line "_Changed:_", then one line per file with the short file name and a few words on what changed. Include every file, even the daily log; many similar files with the same change can share one line. No files changed means no note.
- Before writing the note, run `SCRIPTS/snapshot.sh`, and end the note with a sync line taken from what it printed. If changes were pulled from GitHub first, say so.
- Example:
  > _Changed:_
  > - _My Tasks: added 3 tasks to Inbox_
  > - _Daily log: logged the change_
  >
  > _Sync: committed to Git and pushed to GitHub._
