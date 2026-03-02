# Ajinkya Resume Repository

This repository stores source-only LaTeX resume variants and publishes compiled PDFs via GitHub Releases.

## Naming Convention

Publishable resume entry files must live at repository root and match:

`ajinkya-gokule-[role]-resume.tex`

Rules for `[role]`:
- lowercase kebab-case only (`[a-z0-9]+(-[a-z0-9]+)*`)
- examples: `general`, `backend`, `ml-engineer`, `product-analytics`

Examples:
- `ajinkya-gokule-general-resume.tex`
- `ajinkya-gokule-backend-resume.tex`

Non-entry helper files should be named with an explicit helper prefix, such as:
- `include-*.tex`
- `partial-*.tex`

## Local Build

Install a TeX distribution with `latexmk` available (for example TeX Live or MacTeX), then run:

```bash
latexmk -pdf ajinkya-gokule-general-resume.tex
```

For another role variant, replace the filename with that variant.

## Release Model

On every push to `main`, GitHub Actions:
- discovers all root-level `ajinkya-gokule-*-resume.tex` files
- compiles each into a PDF
- publishes each variant to its own rolling release tag: `latest-[role]`

Artifact naming:
- `ajinkya-gokule-[role]-resume.pdf`

Release URL shape:
- `https://github.com/<owner>/<repo>/releases/tag/latest-[role]`

## Branch Protection (Recommended)

In GitHub settings for this repo:
- protect `main`
- require status checks to pass
- optionally require pull requests before merge
