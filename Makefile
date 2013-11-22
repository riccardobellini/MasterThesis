# Riccardo Bellini <riccardo.bellini1988@gmail.com>
# Thesis makefile

PROJECT=tesi
TEX=pdflatex
BIB=bibtex
OPTIONS=--shell-escape -interaction=nonstopmode

all:	distclean tesi.pdf

tesi.pdf: tesi.tex tesi.bib
	$(TEX) $(OPTIONS) $<
	$(BIB) $(PROJECT)
	$(TEX) $(OPTIONS) $<
	$(TEX) $(OPTIONS) $<

.PHONY: distclean clean
distclean: clean
	rm -rf *.pdf *.dvi

clean:
	rm -rf *.aux *.log *.out

