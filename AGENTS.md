# Agent Instructions

Every `\resumeItem{...}` must render as a single line in the compiled PDF — verify with `pdftotext -layout <file>.pdf -` and shorten if it wraps.

Follow resume-writing best practices (strong action verbs, correct tense, quantified outcomes, honest claims). For any content change, propose at least 3 alternatives and let the user pick before editing.

The compiled PDF must always be exactly one page. Never trim content to achieve this — instead adjust the page height (e.g., `\paperheight` / geometry settings) so everything fits on a single continuous page. Verify the page count after every change (`pdfinfo <file>.pdf` or check `pdftotext` output).
