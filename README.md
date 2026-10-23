# Haagerup–Izumi Vertex Operator Algebras

**David E. Evans and Andrew Riesen**

Research manuscripts on vertex operator algebra constructions associated with untwisted and twisted cyclic Haagerup–Izumi categories.

**Working manuscripts.** These are the authors’ current working manuscripts. The authors intend to continue refining the arguments, notation, organization, and exposition to make the work easier for human readers to understand and verify. Mathematical feedback and corrections are welcome.

## Manuscripts

| Paper | Date | Read | Source |
| --- | --- | --- | --- |
| Vertex operator algebra realizations of untwisted cyclic Haagerup–Izumi centers | 23 October 2026 | [PDF](untwisted/Untwisted_HI_Working_Manuscript.pdf) | [LaTeX](untwisted/Untwisted_HI_Working_Manuscript.tex) |
| Vertex Operator Algebra Realizations of Twisted Haagerup–Izumi Doubles | 22 October 2026 | [PDF](twisted/Twisted_HI_Working_Manuscript.pdf) | [LaTeX](twisted/Twisted_HI_Working_Manuscript.tex) |

Each LaTeX source is self-contained and includes its bibliography.

Andrew Riesen used generative AI in these investigations and in preparing the manuscripts; each paper contains its own AI disclosure.

## Build

Install a LaTeX distribution with pdfLaTeX, `latexmk`, and the packages listed in [`BUILDING.md`](BUILDING.md), together with GNU Make. Then run:

```sh
make                 # build both manuscripts
make untwisted       # build the untwisted paper only
make twisted         # build the twisted paper only
make verify          # verify the manuscript file checksums
```

Generated files go in `build/untwisted/` and `build/twisted/`.
