#TeX Makefile
FILE=jloiseau_these

all: $(FILE).pdf

view: $(FILE).pdf display

display:
	open $(FILE).pdf

.PHONY: clean

clean:
	rm -rf *~ *.idx *.lot *.toc *.lof *.aux *.blg *.out *.bbl *.log *.pdf

$(FILE).pdf: $(FILE).tex chapters/*.tex
	pdflatex $(FILE)
	pdflatex $(FILE)
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)

chapter_1: chapters_alone/chapter_1.tex
	cd chapters_alone
	pdflatex $<
	pdflatex $<
	bibtex $<
	pdflatex $<
	pdflatex $<
