# Building the manuscripts

Both papers use pdfLaTeX and include their bibliographies directly in their `.tex` files. No external figures or bibliography databases are required.

## Requirements

- A LaTeX distribution with pdfLaTeX and `latexmk` (for example, TeX Live or MiKTeX).
- GNU Make for the convenience commands in the root README.
- LaTeX packages: `amsmath`, `amssymb`, `amsthm`, `array`, `bookmark`, `booktabs`, `enumitem`, `fancyhdr`, `fontenc`, `geometry`, `hyperref`, `inputenc`, `listings`, `lmodern`, `longtable`, `mathrsfs`, `mathtools`, `microtype`, `needspace`, `tabularx`, `xcolor`, and `xurl`.

A complete TeX Live installation supplies these packages. A smaller installation must include the packages named above.

## Compile

From the repository root, run `make`, `make untwisted`, or `make twisted`. `latexmk` repeats pdfLaTeX as needed to resolve cross-references and contents pages. Shell escape is disabled.

Without Make, run:

```sh
latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -latexoption=-no-shell-escape -outdir=build/untwisted untwisted/Untwisted_HI_Realization_v_46.tex
latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -latexoption=-no-shell-escape -outdir=build/twisted twisted/Twisted_Haagerup_Izumi_Hexagon.tex
```

The output PDFs have the same basenames as the sources and are placed in the corresponding `build/` subdirectories. The supplied manuscript PDFs remain unchanged. PDF bytes can differ across LaTeX installations because of fonts, package versions, and build metadata.

## Verify the supplied files

Run `make verify` or `sha256sum --check SHA256SUMS` at the repository root. On macOS without GNU `sha256sum`, use `shasum -a 256 -c SHA256SUMS`.

The checksums identify the four supplied manuscript files. When a manuscript is updated, keep its PDF and LaTeX source together and update the links and checksums in the same commit.
