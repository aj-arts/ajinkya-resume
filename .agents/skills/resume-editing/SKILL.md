---
name: resume-editing
description: Interactive resume editing, resume tailoring, LaTeX resume content changes, and PDF layout verification. Use when the user asks to edit, polish, rewrite, tailor, or review resume content, bullets, sections, LaTeX resume files, or compiled resume PDFs.
---

# Resume Editing

Use this skill for active resume work where the user wants to review or improve resume content.

## Content Rules

- Follow resume-writing best practices: strong action verbs, correct tense, quantified outcomes, concise wording, and honest claims.
- For any resume content change, propose at least 3 alternatives and let the user pick before editing.
- Do not invent credentials, outcomes, dates, employers, metrics, tools, or responsibilities.
- Keep edits scoped to the resume variant or section the user requested.

## LaTeX And PDF Verification

- Every `\resumeItem{...}` should render as a single line in the compiled PDF.
- Exception: a well-written bullet may stay as two lines if the content fully occupies two lines rather than spilling only a few words.
- Verify wrapping with `pdftotext -layout <file>.pdf -` after compiling.
- The compiled PDF must be exactly one page. Never trim content just to force one page; adjust page height, such as `\paperheight` or geometry settings, so the content fits on a single continuous page.
- Verify page count after every change with `pdfinfo <file>.pdf` or `pdftotext` output.

## Workflow

1. Inspect the relevant `.tex` file and current PDF output.
2. Draft at least 3 alternatives for each substantive content change.
3. Wait for the user to choose before editing.
4. Compile the resume.
5. Verify line wrapping and page count.
6. Report the chosen edits and verification results.
