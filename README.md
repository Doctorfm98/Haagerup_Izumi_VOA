# Haagerup–Izumi Vertex Operator Algebras

**David E. Evans and Andrew Riesen**

Research manuscripts on vertex operator algebra constructions associated with untwisted and twisted cyclic Haagerup–Izumi categories.

## Manuscripts

| Paper | Version | Read | Source |
| --- | --- | --- | --- |
| Vertex operator algebra realizations of untwisted cyclic Haagerup–Izumi centers | v46, 23 October 2026 | [PDF](untwisted/Untwisted_HI_Realization_v_46.pdf) | [LaTeX](untwisted/Untwisted_HI_Realization_v_46.tex) |
| Vertex Operator Algebra Realizations of Twisted Haagerup–Izumi Doubles | Hexagon manuscript, 22 October 2026 | [PDF](twisted/Twisted_Haagerup_Izumi_Hexagon.pdf) | [LaTeX](twisted/Twisted_Haagerup_Izumi_Hexagon.tex) |

Each LaTeX source is self-contained and includes its bibliography.

Andrew Riesen used generative AI in these investigations and in preparing the manuscripts; each paper contains its own AI disclosure.

## Build

Install a LaTeX distribution with pdfLaTeX, `latexmk`, and the packages listed in [`BUILDING.md`](BUILDING.md), together with GNU Make. Then run:

```sh
make                 # build both manuscripts
make untwisted       # build the untwisted paper only
make twisted         # build the twisted paper only
make verify          # verify the supplied PDF/source checksums
```

Generated files go in `build/untwisted/` and `build/twisted/`.
