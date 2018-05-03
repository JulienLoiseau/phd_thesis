#TeX Makefile
FILE=french_report

all: $(FILE).pdf

view: $(FILE).pdf display

display:
	open $(FILE).pdf

.PHONY: clean

clean:
	rm -rf *~ *.idx *.lot *.toc *.lof *.aux *.blg *.out *.bbl *.log *.pdf

$(FILE).pdf: $(FILE).tex jloiseau_these.toc.back 
	cp jloiseau_these.toc.back jloiseau_these.toc
	pdflatex $(FILE)
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)
