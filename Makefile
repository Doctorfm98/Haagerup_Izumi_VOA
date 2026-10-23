LATEXMK ?= latexmk
LATEXFLAGS = -pdf -interaction=nonstopmode -halt-on-error -file-line-error -latexoption=-no-shell-escape

.PHONY: all untwisted twisted verify

all: untwisted twisted

untwisted:
	mkdir -p build/untwisted
	$(LATEXMK) $(LATEXFLAGS) -outdir=build/untwisted untwisted/Untwisted_HI_Working_Manuscript.tex

twisted:
	mkdir -p build/twisted
	$(LATEXMK) $(LATEXFLAGS) -outdir=build/twisted twisted/Twisted_HI_Working_Manuscript.tex

verify:
	sha256sum --check SHA256SUMS
