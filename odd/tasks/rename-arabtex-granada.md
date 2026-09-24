# Rename arabtex-grsp to arabtex-granada

Objective: Rename the public LaTeX package and CTAN project without changing the bundled historical ArabTeX distribution.

Problem: The package entry point, private derived loaders, archive, example, and documentation currently use the old public name.

Scope: Tracked package-owned files and references only. Preserve upstream ArabTeX identities, unrelated work, the GitHub remote, and the current workspace directory.

Authorized scope: Local rename requested by the user. No remote operations.

Acceptance criteria: `\usepackage{arabtex-granada}` loads private runtime; CTAN ZIP has one `arabtex-granada/` root; example compiles; stale old-name references remain only for historical records or the not-yet-renamed GitHub URL.

TDD: Off (no project/session TDD configuration found). Runner: `make build`, `pdflatex` example.

Delivery strategy: ask-on-risk. Forecast: under 400 authored changed lines. Route: delegated writer (multiple non-trivial files; task assigned to this agent).

- [x] T1 Rename package entry point, derived private loaders, and package references. Verify with example compilation and archive build. Work-unit commit: `6da3ff49318f8766dce192a5861bc3ad0ce1cf6a`; validation: `make build` passed, `latex` source and staged example each produced a one-page DVI with `TEXFONTS` and `TEXINPUTS` set. `pdflatex` parsing passed but PDF output could not find `xnsh14` Type 1 map in this environment.
- [x] T2 Add package-specific PDF documentation and its LaTeX source to the CTAN archive. Route: delegated writer (documentation source plus build and manifest changes). Work-unit commit: `252bf47`. Validation: `make build` passed; ZIP contains both `arabtex-granada-doc.tex` and `arabtex-granada-doc.pdf`; the two PDF pages were rendered and visually checked with no overfull boxes; bundled example compiled to a one-page DVI with `TEXINPUTS` and `TEXFONTS` set. PDF example output was not retried (previously blocked by local font-map configuration). Runtime harness: N/A beyond the LaTeX example, since this task changes only documentation and packaging. Rollback boundary: documentation source/PDF and their Makefile, MANIFEST, and README references.

Rollback boundary: Package-owned entry, derived loader, example, packaging, documentation, and this task document. Historical ArabTeX files remain untouched.

Next step: GitHub repository and checkout directory remain under the old name and require separate renames. Native review and remote delivery are separate, pending steps.
