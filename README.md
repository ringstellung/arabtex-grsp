# arabtex-granada

`arabtex-granada` is a maintained, self-contained distribution derived from
Klaus Lagally's ArabTeX. It generates Arabic script from transliterated input,
adds the transcription convention used by the School of Arabists of Granada,
and makes the historical runtime compatible with current LaTeX package hooks.

Version: 1.0.0 (2026-08-15)

## Authors and maintenance

- Klaus Lagally is the original author and copyright holder of ArabTeX.
- Francisco M. García is the author of the `arabtex-granada` adaptation and its
  current maintainer: <https://github.com/ringstellung>.

Please report issues with this derived distribution at
<https://github.com/ringstellung/arabtex-grsp/issues>. Do not ask Klaus
Lagally to support `arabtex-granada`. The GitHub repository still uses its
previous URL until it is renamed separately.

The original ArabTeX distribution is available from
<https://ctan.org/pkg/arabtex>.

## Installation and usage

`arabtex-granada` includes the ArabTeX runtime, metrics, Type 1 fonts, Metafont
sources, and font map that it needs. The CTAN `arabtex` package is therefore
not a dependency and should not be loaded alongside this package.

For a manual TDS installation, copy:

- `arabtex-granada.sty` and `vendor/texinput/` to
  `tex/latex/arabtex-granada/`;
- `vendor/tfm/` to `fonts/tfm/public/arabtex-granada/`;
- `vendor/type1/` to `fonts/type1/public/arabtex-granada/`;
- `vendor/metafont/` to `fonts/source/public/arabtex-granada/`; and
- `vendor/map/arabtex.map` to `fonts/map/dvips/arabtex-granada/`.

Refresh the TeX filename database and enable `arabtex.map` using the tools
provided by your TeX distribution. CTAN, TeX Live, and MiKTeX installations
normally perform these steps automatically.

Load the package with:

```tex
\usepackage{arabtex-granada}
```

To select the Granada transcription convention, use:

```tex
\settrans{spanish}
```

The convention inherits ArabTeX's ZDMG transcription and changes these
mappings:

| ArabTeX input | Granada output |
| --- | --- |
| `^g` | `ŷ` |
| `_h` | `j` |
| `.g` | `g` |

See `examples/arabtex-granada-example.tex` for a complete document.
The package guide is available as `arabtex-granada-doc.pdf`, with its editable
LaTeX source in `arabtex-granada-doc.tex`.

## Building the CTAN upload

Run:

```sh
make build
```

This builds the PDF guide and creates `dist/arabtex-granada.zip`. The Makefile stages only the files in
the new distribution, puts them below the required top-level
`arabtex-granada/` directory, and runs `unzip -t` to verify the archive. Use
`make clean` to remove generated build and distribution directories.

## What differs from ArabTeX

The public project and package name is `arabtex-granada`. Its private `vendor/`
tree contains byte-identical runtime and font files from the original ArabTeX
distribution; those historical files retain Klaus Lagally's authorship and
copyright. Three renamed derived loader files keep every internal load inside
that tree even when upstream ArabTeX is also installed. The files are bundled
so that `arabtex-granada` is a standalone package rather than a plug-in that
depends on a separately installed `arabtex`.

The new entry package makes two changes around that private runtime:

1. It preserves the LaTeX kernel definitions of `\begin` and `\end` on
   modern formats. ArabTeX's 2003 replacements leave `\begin{document}` in a
   group while deferred package hooks run, which causes packages such as
   `graphicx` to fail with `Loading a class or package in a group`.
2. It registers `\settrans{spanish}` for the School of Granada convention,
   mapping `^g` to `ŷ`, `_h` to `j`, and `.g` to `g`.

Older LaTeX formats that do not provide the modern hook interface retain
ArabTeX's historical environment behavior.

## License

This derived work is distributed under the LaTeX Project Public License,
version 1.3c or (at your option) any later version. Its LPPL maintenance status
is `maintained`, and its Current Maintainer is Francisco M. García. See
`lppl.txt` for the license text.

The bundled original files are copyright Klaus Lagally and were released
under LPPL version 1 or, at the user's option, any later version. Their source,
authorship, and history are identified in `vendor/README.md` and
`vendor/ORIGINAL_README.txt`. Francisco M. García's copyright applies only to
the `arabtex-granada` adaptation, documentation, packaging, and new Granada
convention—not retroactively to the original ArabTeX code.

## CTAN archive

The upload archive should contain one top-level directory named
`arabtex-granada` and the files listed in `MANIFEST`. The older top-level source
tree retained in this repository is development history and is not part of
the new package archive.
