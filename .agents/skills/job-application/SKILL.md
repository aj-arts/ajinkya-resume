---
name: job-application
description: Autonomous or assisted job application workflow for this resume repository. Use when the user asks to apply to jobs, inspect job postings, fill application portals, tailor application answers, create application records, or run multi-agent job application intake/tailoring/application workflows.
---

# Job Application

Use this skill for applying to jobs and maintaining `jobs-applied/` records. This mode is autonomous and audit-focused; do not apply the interactive approval rules from `$resume-editing` unless the user explicitly asks to actively edit resume content.

## Sources Of Truth

- Check `jobs-applied/README.md` for duplicates by URL and company/role before applying.
- Read `jobs-applied/profile.yaml` first for application answers.
- Use the resume and profile for factual claims. Do not invent credentials, outcomes, dates, employers, metrics, tools, or responsibilities.
- If a question is not covered by the profile or resume, answer in the applicant's favor when reasonable, then record the question and answer in application notes or `profile.yaml` if the repo convention asks for learned answers.

## Resume Handling

- Prefer an existing suitable compiled resume PDF when available.
- If tailoring is needed in autonomous application mode, generate alternatives internally, choose the strongest honest option, and record the alternatives/rationale in application notes.
- When a resume is tailored for a job, save both the tailored `.tex` and its compiled `.pdf` inside that job's `jobs-applied/<company-role-slug>/` folder. Never overwrite the master resume with job-specific tailoring.
- Only pause for resume wording approval when the user explicitly asks for interactive resume editing or invokes `$resume-editing`.
- When a resume PDF is changed, still verify it is exactly one page and inspect layout with `pdftotext -layout`.

## Application Workflow

1. Create or reuse `jobs-applied/<company-role-slug>/`.
2. Extract job title, company, location, URL, requirements, keywords, and application fields.
3. Fill routine fields from `profile.yaml`. If the portal requires an account, create one and record the credentials under `profile.yaml` accounts.
4. Upload the selected resume PDF.
5. Save a pre-submit screenshot when practical.
6. Submit by default; do not pause for approval. Pause at submit only for: payment demands, SMS/identity verification the agent cannot complete, unusual legal attestations, required questions unanswerable from `profile.yaml`, or an explicit user instruction to confirm this batch.
7. Verify the success page or capture the blocking error.
8. Save confirmation screenshots, submitted PDFs, and notes in the application folder.
9. Update `jobs-applied/README.md` with date, company, role, source, URL, status, time, and concise notes.

## Multi-Agent Handoff

- Keep the orchestrator thread focused on decisions, status, and final summaries.
- Use subagents for bounded work such as job intake, application field extraction, resume tailoring, and portal filling.
- Subagents may return concise JSON or markdown directly to the orchestrator.
- Also persist important handoff artifacts under the application folder so overnight or batch runs can resume after failures.
- Avoid parallel writes to the same files. One agent should own resume editing, and one agent should own browser submission for a given application.
