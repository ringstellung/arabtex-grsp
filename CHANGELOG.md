# Changelog

All notable changes to `arabtex-granada` are documented here.

## Unreleased

- Renamed the public project, LaTeX package, private derived loaders, example,
  and CTAN upload archive from `arabtex-grsp` to `arabtex-granada`.

## 1.0.0 - 2026-08-15

- Published the maintained derived work under the distinct `arabtex-grsp`
  project and package name.
- Converted the project from an add-on into a standalone distribution by
  bundling byte-identical ArabTeX modules, metrics, font sources, Type 1 fonts,
  and font map in a private vendor tree. Renamed derived loaders prevent
  module resolution from escaping to an upstream installation. The CTAN
  `arabtex` package is no longer a runtime dependency.
- Added `\settrans{spanish}` for the School of Arabists of Granada convention,
  inheriting ZDMG and mapping `^g` to `ŷ`, `_h` to `j`, and `.g` to `g`.
- Restored the modern LaTeX kernel definitions of `\begin` and `\end` after
  loading the private runtime, preventing deferred package hooks from running
  inside the document environment group.
- Credited Klaus Lagally as the original ArabTeX author and Francisco M.
  García as the adaptation author and current maintainer, with support for the
  derived work redirected to its maintainer.
- Updated licensing and distribution metadata for an LPPL-compliant derived
  work.
- Added a `make build` target that creates and verifies the top-level
  `arabtex-grsp/` ZIP for CTAN upload.
