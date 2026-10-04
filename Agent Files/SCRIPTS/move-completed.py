#!/usr/bin/env python3
"""Move ticked checklist items to their page's Completed section.

Run from an agent's folder (whats-changed.sh runs it each session and before
each message). It looks at every page in the work folder (`My ... by Grace/`)
that has a heading named "Completed". On such a page, every ticked top-level
item (`- [x] ...`) outside the Completed section moves to the top of it,
together with the lines that belong to it (indented lines, such as a quote
block under a task). Sections whose ticks stay in place (Monthly Routine,
This Week's Focus) are left alone, and so is any page without a Completed
heading. A project moved on `My Projects by Grace.md` gets
" – Completed <Mon YYYY>" on its line, unless the line already carries one.

Prints one line per page changed; prints nothing when nothing moved.
"""
import datetime
import pathlib
import re
import sys

KEEP_SECTIONS = {"monthly routine", "this week's focus"}
DATED_PAGES = {"My Projects by Grace.md"}
SKIP_DIRS = {"Assets", "_Archive", "node_modules"}

HEADING_RE = re.compile(r"^(#{1,6})\s+(.*?)\s*$")
TICKED_RE = re.compile(r"^- \[[xX]\] ")
COMPLETED_NOTE_RE = re.compile(r"\bCompleted\s+(?:\d{1,2}\s+)?[A-Za-z]{3,9}\.?\s+\d{4}", re.I)


def month_now():
    tz = datetime.timezone(datetime.timedelta(hours=5, minutes=30))  # Asia/Kolkata
    return datetime.datetime.now(tz).strftime("%b %Y")


def item_end(lines, i):
    """Index just past the item starting at lines[i]: its own line plus the
    indented lines under it (blank lines count only when an indented line
    follows)."""
    j = i + 1
    while j < len(lines):
        line = lines[j]
        if line.strip() and line[:1] in (" ", "\t"):
            j += 1
            continue
        if not line.strip():
            k = j
            while k < len(lines) and not lines[k].strip():
                k += 1
            if k < len(lines) and lines[k][:1] in (" ", "\t"):
                j = k
                continue
        break
    return j


def process(path):
    text = path.read_text(encoding="utf-8")
    lines = text.split("\n")
    heads = [(i, len(m.group(1)), m.group(2).strip())
             for i, line in enumerate(lines) if (m := HEADING_RE.match(line))]
    done = [h for h in heads if h[2].strip("* ").lower() == "completed"]
    if not done:
        return 0
    c_line, c_level, _ = done[0]
    c_end = next((i for i, lvl, _ in heads if i > c_line and lvl <= c_level), len(lines))

    moved, keep, i, section = [], [], 0, ""
    while i < len(lines):
        m = HEADING_RE.match(lines[i])
        if m:
            section = m.group(2).strip("* ").lower()
        in_completed = c_line <= i < c_end
        if (not m and not in_completed and section not in KEEP_SECTIONS
                and TICKED_RE.match(lines[i])):
            j = item_end(lines, i)
            block = lines[i:j]
            block[0] = "- [x] " + block[0][6:]
            if path.name in DATED_PAGES and not COMPLETED_NOTE_RE.search(block[0]):
                block[0] = block[0].rstrip() + " – Completed " + month_now()
            moved.append(block)
            i = j
            continue
        keep.append((i, lines[i]))
        i += 1
    if not moved:
        return 0

    out = [line for _, line in keep]
    # Moved items go at the top of Completed, in page order, one blank line under the heading.
    h = next(n for n, (idx, _) in enumerate(keep) if idx == c_line)
    at = h + 1
    while at < len(out) and not out[at].strip():
        at += 1
    out[h + 1:at] = [""] + [l for b in moved for l in b]
    new = "\n".join(out)
    if new != text:
        path.write_text(new, encoding="utf-8")
    return len(moved)


def main():
    root = pathlib.Path(sys.argv[1] if len(sys.argv) > 1 else ".")
    for work in sorted(root.glob("My * by Grace")):
        if not work.is_dir():
            continue
        for path in sorted(work.rglob("*.md")):
            rel = path.relative_to(work).as_posix()
            if any(part.startswith(".") for part in path.relative_to(work).parts):
                continue
            if any(rel == d or rel.startswith(d + "/") or ("/" + d + "/") in ("/" + rel) for d in SKIP_DIRS):
                continue
            # A folder with its own Git repo (e.g. an app) keeps its own files; leave it alone.
            if any((work / pathlib.Path(*path.relative_to(work).parts[:i]) / ".git").exists()
                   for i in range(1, len(path.relative_to(work).parts))):
                continue
            try:
                n = process(path)
            except (OSError, UnicodeDecodeError):
                continue
            if n:
                print(f"Checklists: moved {n} ticked item{'s' if n != 1 else ''} to Completed in {path.relative_to(root).as_posix()}")


if __name__ == "__main__":
    main()
