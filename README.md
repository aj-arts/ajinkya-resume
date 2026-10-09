# Ajinkya resume publisher

This public repository holds approved LaTeX resume sources and publishes selected PDFs through GitHub Releases. Application tracking and private profile data belong in a separate private workspace.

## Source filenames

Supported resume entry files live at the repository root:

- `ajinkya-gokule-master-resume.tex`
- `ajinkya-gokule-swe-pm-resume.tex`, once an approved version has been added

## Build locally

Install TeX Live or MacTeX with `latexmk`, then run:

```sh
latexmk -pdf ajinkya-gokule-master-resume.tex
```

Review the compiled PDF before publishing.

## Publish an approved variant

Pushing a commit does not publish a resume. After the selected source has been reviewed and committed, open **Actions**, select **Build and Release Approved Resume**, choose **Run workflow**, and select the variant. The selected source must already exist in the chosen branch.

The workflow builds only that variant and updates its asset in the rolling `latest` release. Other PDF assets remain available.

Existing download links retain this shape:

`https://github.com/aj-arts/ajinkya-resume/releases/download/latest/ajinkya-gokule-master-resume.pdf`

Never add application records, private profile data, raw form captures, credentials, or encrypted private-workspace archives to this public repository.
