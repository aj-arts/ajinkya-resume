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
- compiles all root-level `ajinkya-gokule-*-resume.tex` files
- publishes every PDF to a single rolling release tagged `latest`
- cancels in-progress runs when a newer push arrives (only the most recent changes are released)

Artifact naming:
- `ajinkya-gokule-[role]-resume.pdf`

Release URL shape:
- `https://github.com/<owner>/<repo>/releases/download/latest/ajinkya-gokule-[role]-resume.pdf`
