# Ajinkya Resume Repository

This repository stores source-only LaTeX resume variants and publishes compiled PDFs via GitHub Releases.

## Naming Convention

Publishable resume entry files must live at repository root and match:

`ajinkya-gokule-[role]-resume.tex`

Rules for `[role]`:
- lowercase
- examples: `general`, `backend`, `ml-engineer`, `product-analytics`

## Local Build

Install a TeX distribution with `latexmk` available (for example TeX Live or MacTeX), then run:

```bash
latexmk -pdf ajinkya-gokule-[role]-resume.tex
```

## Release Model

On every push to `main`, GitHub Actions:
- discovers all root-level `ajinkya-gokule-*-resume.tex` files
- compiles each into a PDF
- publishes each variant to its own rolling release tag: `latest-[role]`

Artifact naming:
- `ajinkya-gokule-[role]-resume.pdf`

Release URL shape:
- `https://github.com/<owner>/<repo>/releases/download/latest-[role]/ajinkya-gokule-[role]-resume.pdf`
