#TeX Makefile
FILE=jloiseau_these

all: $(FILE).pdf

view: $(FILE).pdf display

display:
	open $(FILE).pdf

.PHONY: clean

clean:
	rm -rf *~ *.idx *.lot *.toc *.lof *.aux *.blg *.out *.bbl *.log *.pdf

$(FILE).pdf: $(FILE).tex chapters/part1/*.tex chapters/part2/*.tex chapters/part3/*.tex 
	pdflatex $(FILE)
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)