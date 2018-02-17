#TeX Makefile
FILE=jloiseau_these

all: $(FILE).pdf

view: $(FILE).pdf display

display:
	open $(FILE).pdf

.PHONY: clean

clean:
	rm -rf *~ *.idx *.lot *.toc *.lof *.aux *.blg *.out *.bbl *.log *.pdf

$(FILE).pdf: $(FILE).tex
	pdflatex $(FILE)
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)

chap1: chapters_alone/chap1.tex
	cd chapters_alone
	pdflatex $<
	bibtex $<
	pdflatex $<
	pdflatex $<
