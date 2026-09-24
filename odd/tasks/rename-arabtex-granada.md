# Rename arabtex-grsp to arabtex-granada

Objective: Rename the public LaTeX package and CTAN project without changing the bundled historical ArabTeX distribution.

Problem: The package entry point, private derived loaders, archive, example, and documentation currently use the old public name.

Scope: Tracked package-owned files and references only. Preserve upstream ArabTeX identities, unrelated work, the GitHub remote, and the current workspace directory.

Authorized scope: Local rename requested by the user. No remote operations.

Acceptance criteria: `\usepackage{arabtex-granada}` loads private runtime; CTAN ZIP has one `arabtex-granada/` root; example compiles; stale old-name references remain only for historical records or the not-yet-renamed GitHub URL.

TDD: Off (no project/session TDD configuration found). Runner: `make build`, `pdflatex` example.

Delivery strategy: ask-on-risk. Forecast: under 400 authored changed lines. Route: delegated writer (multiple non-trivial files; task assigned to this agent).

- [x] T1 Rename package entry point, derived private loaders, and package references. Verify with example compilation and archive build. Work-unit commit pending; validation: `make build` passed, `latex` source and staged example each produced a one-page DVI with `TEXFONTS` and `TEXINPUTS` set. `pdflatex` parsing passed but PDF output could not find `xnsh14` Type 1 map in this environment.

Rollback boundary: Package-owned entry, derived loader, example, packaging, documentation, and this task document. Historical ArabTeX files remain untouched.

Next step: Commit this verified work unit; record its hash. GitHub repository and checkout directory remain under the old name.
