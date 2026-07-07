# Jobs Applied

Tracking log for all job/internship applications submitted by the automated workflow.

## How this works

- Each application gets a folder: `<company>-<role-slug>/` containing the tailored resume, notes, and screenshots.
- The table below is the **dedupe database** — the orchestrator MUST check it (by URL and company+role) before applying to anything.
- The [Insights](#insights) section is read at the **start** of every run and appended to at the **end** of every run.
- Application answers come from `profile.yaml` first. Questions not covered there are answered in the applicant's favor (guessed), then recorded in `profile.yaml → learned_answers` for consistency in future runs. Only hard blockers (broken portals, verification walls, payment requests) get escalated to [Pending Questions](#pending-questions) / human review.

### Status values

Statuses are **natural language**, not enum codes — be descriptive so future runs (and humans) understand what happened. Examples:

| Example status | When |
|---|---|
| `applied successfully` | Submitted, confirmation screenshot saved |
| `needs human review — portal required SMS verification at final step` | Blocked; always include the reason |
| `failed — Workday upload kept timing out despite retries` | Could not complete; include what was tried |
| `skipped — requires US citizenship (clearance role)` | Filtered out; include why |
| `duplicate — same posting as <folder> via jobright` | Already applied / seen from another source |

## Applications

| Date | Company | Role | Source | URL | Match% | Status | Time | Notes |
|------|---------|------|--------|-----|--------|--------|------|-------|

## Pending Questions

Questions escalated to human review (hard blockers only — routine unknowns get guessed and recorded in `learned_answers`). Answer them, move the answer into `profile.yaml`, then delete the row.

| Date | Company | Question | Answered? |
|------|---------|----------|-----------|

## Insights

Concise learnings appended after each run. Read this before starting a run. Include:

- **Portal quirks & form gotchas** — e.g., "Ashby date pickers need keyboard input, not clicks"
- **Tooling effectiveness** — which approach worked best per portal (Codex computer use vs Playwright vs other tools), e.g., "Greenhouse forms: Playwright faster and more reliable; Workday: computer use handled the iframe login better"
- **Timing bottlenecks** — portals or steps that consistently eat time (use the Time column above to spot them)

<!-- Append new insights below as bullets: "- YYYY-MM-DD: <insight>" -->
