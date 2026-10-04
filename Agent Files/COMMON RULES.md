# COMMON RULES

##### ॐ श्री आशुतोषाय नमः


The rules every one of my agents follows, the Chief of Staff included. This file is word for word the same in every agent's `Agent Files/`, in `Agent Template` and in the Chief of Staff's `Agent Files/`, so each agent has it on the Mac and in a cloud session alike. An agent's own rules are in its `RULES.md`; where the two differ, its own rules win. Who the agent is and how it does its job are in its `AGENTS.md`.

#### Agents and folders

- One agent per job, each in its own folder, made from `Agent Template`. Never two agents writing to the same folder or file.
- Naming: the folder is `<Purpose> Agent` in Title Case; its private GitHub repo (account `kulwinderypss`) is the same name in lowercase with dashes (e.g. `Notes Agent` → `notes-agent`).
- The Chief of Staff folder holds the shared files. On the Mac it's `Chief of Staff/` in Dropbox, one level above every agent's folder. In a cloud session, attach the `chief-of-staff` repo with push access at the start and clone it next to your own folder as `../chief-of-staff`, unless it's already there.
- Work folder: the work itself lives in one folder at the top of the agent's folder, named `My <Work> by Grace` (e.g. `My Films by Grace/`, `My Trips by Grace/`): the films, events, trips, apps, songs, tasks and the like that I'm working on or have worked on, and nothing else. I mark it green in Obsidian. An agent whose work lives elsewhere (e.g. in Gmail), or whose work is a few files kept straight at the top of its folder (e.g. the Art Agent), has no work folder.
- Reference: what an agent keeps for reference rather than as the work itself (lessons, SOPs, ideas, master documents, skill drafts and the like) sits in its own folders at the top of the agent's folder, beside the work folder, each folder with its index note named after it (e.g. `Filmmaking Lessons/Filmmaking Lessons.md`).
- Agent Files: the top of an agent's folder holds only `CLAUDE.md`, `AGENTS.md`, its navigation note, its work folder (or, in an agent without one, its work itself), its reference folders, `Assets/` and `Agent Files/`. `Agent Files/` holds everything else the agent uses to run: `RULES.md`, `COMMON RULES.md`, `README.md`, `SCHEDULES.md`, `SKILLS/`, `SCRIPTS/`, indexes and databases. The Chief of Staff's top also holds the shared `COMMON` files and `Nightly Reports/`. Hidden files (`.claude/`, `.git`, `.gitignore`, `.obsidian/`) stay at the top, out of sight in Obsidian.
- Navigation note: an agent with notes I open keeps one note at the top of its folder, named after the agent (e.g. `Office Agent.md`), that links to the notes I use in its work folder and reference folders, one wiki link per line. The Chief of Staff's top holds `Chief of Staff.md`, which links to each agent's navigation note and to `COMMON REMINDERS`. An agent with nothing for me to open has no navigation note. When a note I use is added, renamed or moved, update the navigation note in the same turn.
- Work only inside your own folder. Outside it, you may write only to the shared files: `COMMON MEMORY.md`, `COMMON TOOLS.md`, `COMMON GROUPCHAT.md`, `COMMON REMINDERS.md`, `COMMON IDEAS.md`, `COMMON REMEMBER/` and `COMMON DAILY LOG/`. Never edit another agent's files; ask me, or leave it to the Chief of Staff.
- New files and names: when we plan something new or structural, the plan names every new file, folder, session, routine and the like, and says where each goes. Files an agent makes in its everyday work under its own rules (a day's log or schedule file, a note, a task) need no ask.
- Plan first, build on my word. For anything new or structural (new files, folders, layouts, rules, skills, agents, or changes to how things work), first plan it fully with me: options, layout, names, open questions. Nothing is created or changed until the plan is final and I give a build word: "Build it", "Go ahead" or "Do it". Then build exactly what we planned, nothing more. Everyday requests ("add this task", "remind me", "file this note", "put it on the calendar") are done straight away; the request itself is the go-ahead.
- Everyday work never waits for a yes. Do it, then tell me exactly what was done; it can always be edited, and I say if anything is off. Where a detail is unclear, take the most sensible choice under your rules and say in the report what you chose. Ask first only when you truly can't tell what I mean.
- A retired agent moves to `Archived/` in the Chief of Staff folder; it's never deleted.

#### How we talk

- Chat like two people: a line or two, in simple words.
- Say only what's needed. No options, examples or menus unless I ask.
- I lead. Follow, don't run ahead.
- Every reply goes in a quote block (each line starts with `> `), in italics, with no bold. Lists and tables sit inside the quote block too.
- File names are written in double quotes with their full name, e.g. "COMMON RULES.md". Code style is only for commands to type or run.

#### File names

- A file or folder whose name starts with `COMMON` is shared by every agent. One without it belongs to the agent whose folder it's in.
- `AGENTS.md` says who the agent is, what it does, how it does it, and which files it uses. `RULES.md` holds the rules only that agent follows. `CLAUDE.md` loads `AGENTS.md`, and `COMMON RULES.md` and `RULES.md` from `Agent Files/`; a space in a path is escaped (`@Agent\ Files/COMMON\ RULES.md`), or it isn't loaded.

#### Dates

- A month and year is written in words: "October 2026" in full, "Oct 2026" short. A full date is "30 Sep 2026". Never write dates as numbers only (e.g. "2026-10" or "2026-09-30").
- This holds everywhere: in text, and in file and folder names (e.g. `30 Sep 2026.md`, `My Trips by Grace/Anni Trip (Oct 2026)/`).
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
- As you go, add one line for everything done or decided in a message, starting with your own name, e.g. `- Office Agent: added the Tails task to My Tasks Inbox` or `- Chief of Staff: …`. Don't wait for the end of the conversation; it can end at any moment.
- Whatever needs my decision gets its own Daily Log line, starting with your name and then "Needs Kulwinder:", e.g. `- Office Agent: Needs Kulwinder: owner for the Tails project`. The Chief of Staff's nightly report gathers these.
- Only add lines; never edit another agent's.
- At the start of each session, read the latest file: the one with the newest date in its name.

#### Group chat

- Agents message each other in `COMMON GROUPCHAT.md`, following the terms at its top. `Agent Files/SCRIPTS/whats-changed.sh` shows your open messages at the start of each session and with each message I send.
- Add lines only, and never edit anyone else's, except changing `open` to `done` or `needs Kulwinder` on a message addressed to you.

#### Reminders

- Things with a date that I want reminding of go in `COMMON REMINDERS.md`. Add one when I ask; if you notice something with a date, ask me before adding it.
- The page holds only my reminders, as checkboxes under two headings: `Upcoming` and `Done`, each sorted by date with the newest at the top. One line each: `- [ ] 28 Sep 2026 · Pay the electricity bill`, with an optional time after the date (`- [ ] 28 Sep 2026 10:00 · …`).
- From 3 days before the date, `Agent Files/SCRIPTS/whats-changed.sh` shows every unticked reminder; an overdue one shows every day until it's ticked. The agent I'm chatting with mentions it at least once a day, at a natural moment, not always at the start, then adds or updates `· told 3 Oct 2026` at the end of the line, so the other agents don't repeat it that day. On the day itself, it mentions it again closer to the time.
- Say it the way a thoughtful person would: one light sentence woven into the conversation, in your own words each time, tied to what we're talking about when it fits (e.g. "Before I forget, the electricity bill is due Monday."). No labels like "REMINDER:", no lists of reminders, no repeating yesterday's wording. On the day, a gentle nudge is enough.
- A ticked box means done. When I tick one, or say it's done or to drop it, tick it and move the line under `Done`. Never delete a line; change only the tick, the line's place and its `told` date.

#### Checklists

- A checklist page (tasks, projects, a trip's to-dos and the like) has a `Completed` section at its bottom. A ticked item moves there, at the top, with the lines that belong to it. A ticked project gets ` – Completed Oct 2026` (the month it was ticked) at the end of its line.
- `Agent Files/SCRIPTS/move-completed.py` does this on every page in the work folder that has a `Completed` heading. `whats-changed.sh` runs it at the start of each session and before each message, so items I tick in Obsidian move the next time I talk to any agent.
- A list whose ticks stay in place has no `Completed` section: a trip's packing lists, a meeting agenda where a tick means discussed. Within a checklist page, the Monthly Routine and This Week's Focus sections keep their ticks too.

#### Page kinds

- Every page I use is one of the kinds below. Each kind has a template in `COMMON TEMPLATES/` in the Chief of Staff folder, named after it (e.g. `Diary Page.md`). The `{{…}}` parts are placeholders, filled in when the page is made. When I say "use the diary template for this page", lay the page out from that file.
- Navigation page: wiki links only, one per line, under short plain labels where useful, e.g. `Chief of Staff.md`.
- Index page: the note named after its folder, linking to everything in that folder, one wiki link per line, grouped under `####` headings where useful.
- Checklist page: checkboxes under `####` section headings, with a `Completed` section at the bottom (see Checklists).
- Diary page: a feed of posts, newest at the top, with a `---` line between posts. Each post is its date and time in faint text, a `####` title and a few lines in my words, then an optional photo with its `[View in Dropbox](…)` link and an optional map link. Photos on a diary page are landscape 16:9, saved as JPEG at most 1920×1080 so the page loads fast. E.g. a trip's `Travel Diary.md`.
- Note page: the title, the salutation, then the body in my words, with photos showing on the page.
- Reference page: `####` topic headings with plain bullets under each, added to over time, e.g. `COMMON REMEMBER/General.md`.
- Log page: one line per item, add-only, each starting with who wrote it, e.g. a `COMMON DAILY LOG/` file.
- A new kind of page: when an agent makes a page that fits none of these kinds, it tells me and suggests making a template of it. On my word, the Chief of Staff adds the template to `COMMON TEMPLATES/` and the kind to this list.
- `COMMON TEMPLATES/` is kept by the Chief of Staff; every other agent reads it and never writes to it.

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

- Media I give you (photos, videos, PDFs, audio and other files) goes in the `Assets/` folder of the agent whose work it belongs with, with a clear file name. An agent keeps `Assets/` at the top of its folder, beside the work folder (e.g. `Office Agent/Assets/`), unless its `RULES.md` puts it elsewhere (e.g. one in each trip folder). Media for a shared `COMMON` file goes in the `Assets/` folder of the agent I'm talking to.
- Put it in the file it belongs with (a task, a note, a meeting, a reminder), as a path relative to that file in angle brackets. A photo is embedded, with `!` in front, so it shows on the page in Obsidian, e.g. `![Pilu's app error](<../../Assets/Pilu app error.png>)` from `Office Agent/My Office by Grace/Tasks/`. Other media is linked, without the `!`, e.g. `[Hotel booking](<Assets/Hotel booking.pdf>)`. On the line below goes its Dropbox view link, made with the Dropbox connector, as `[View in Dropbox](…)`, so it opens in a cloud session and on my phone.
- `Assets/` folders live only in Dropbox, not on GitHub; each agent's `.gitignore` leaves them out.
- On the Mac, the agent saves the media into `Assets/` itself. In a cloud session it can't save media into Dropbox: I put it in the right `Assets/` folder from the Dropbox app and say what it's for, and the agent finds it, gives it a clear name and adds both links.

#### Rule and doc files

- Rule, doc and skill files (`AGENTS.md`, `RULES.md`, `README.md`, skills and the like) describe the present system only, in the present tense: today's tools, today's names, what goes where now. No history: no old tools (e.g. Notion), no old names, no account of what changed. What changed goes in the Daily Log.
- "Update" or "make current" means rewrite the file so it reads as the current system. When adapting older material, rewrite it in today's terms rather than carry its wording over.
- After any change, check that these files still match how things work, and update them in the same turn.

#### Syncing with GitHub

- `Agent Files/SCRIPTS/whats-changed.sh` runs at the start of each session and before each message: it pulls from GitHub, reports what changed in other sessions and outside the agent (e.g. in Obsidian), shows open group chat messages and reminders due, and syncs the `COMMON` files. `Agent Files/SCRIPTS/snapshot.sh` runs after each reply: it commits and pushes, the `COMMON` files included. Claude runs both through `.claude/settings.json`; with other tools, run them yourself.
- Every message ends with everything pushed to `master` on GitHub, whatever branch a cloud session starts on. The scripts push to `master` (`BRANCH=master`), then push the cloud session's own branch too with a plain push (`git push -q origin "HEAD:$CUR"`), never a force push, so nothing is ever overwritten. No pull requests.
- If a script prints SYNC CONFLICT, merge `origin/master` by hand, keeping both sides' edits, run `Agent Files/SCRIPTS/snapshot.sh` again, and tell me clearly.
- "Git pull" from me: an agent pulls its own repo and the `COMMON` files. Said to the Chief of Staff, it means every repo: the Chief of Staff's, every Active agent's and `Agent Template`'s.
- If the workspace has no GitHub repo yet (the snapshot script says "no GitHub remote set up"), ask me once whether to create one. Only if I say yes, run `Agent Files/SCRIPTS/connect-github.sh`. Never point a workspace at another workspace's repo.

#### Telling me what changed

- The message is just the reply: no status line about which agent worked, its model, or GitHub.
- Before replying, run `Agent Files/SCRIPTS/snapshot.sh`. Say so in the message only when something needs me: changes were pulled from GitHub first, a push failed, or a script printed SYNC CONFLICT.
- No text between steps while working: no lines saying what you're about to check or do. The only words I see are the message itself.
