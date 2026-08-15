# Bundled ArabTeX runtime

This directory contains the ArabTeX runtime and font resources required by
`arabtex-grsp`. The historical files below `texinput/`, `tfm/`, `type1/`,
`metafont/`, and `map/` are byte-identical copies from the original ArabTeX
distribution available at <https://ctan.org/pkg/arabtex>.

ArabTeX was written by Klaus Lagally and is copyright Klaus Lagally. The
original distribution permits redistribution and modification under the
LaTeX Project Public License, version 1 or (at your option) any later version.
Its original README is preserved as `ORIGINAL_README.txt` and the complete
LPPL text is available as `../lppl.txt`.

These files are stored under a private path so `arabtex-grsp` can operate
without a separately installed `arabtex` package. They have not been modified
or renamed, and their inclusion does not transfer their authorship to the
author of the adaptation.

The three files whose names begin with `arabtex-grsp-` are renamed derived
loader files rather than original files. They force all internal module loads
to stay within this directory, including when the original `arabtex` package
is also installed. Their headers identify the original files from which they
were derived and the changes made, as required by the LPPL.

The `arabtex-grsp.sty` entry package, Granada transcription convention,
modern LaTeX compatibility handling, documentation, and packaging are by
Francisco M. García, the current maintainer of the derived work. Report issues
at <https://github.com/ringstellung/arabtex-grsp/issues>; do not request
support for this derived distribution from Klaus Lagally.
