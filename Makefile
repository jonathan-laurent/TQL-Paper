MAIN=main
TEX=*.tex
BIB=main.bib
LATEX=pdflatex

all : $(MAIN).pdf

$(MAIN).pdf : $(MAIN).tex $(TEX) $(BIB)
	$(LATEX) $<
	bibtex $(MAIN)
	$(LATEX) $<
	$(LATEX) $<

.PHONY: clean
clean:
	rm -f *.aux *.pdf *.out *.log *~ *.bbl *.blg
	rm -f _region_.tex
