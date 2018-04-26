#TeX Makefile
FILE=jloiseau_these

all: $(FILE).pdf

view: $(FILE).pdf display

display:
	open $(FILE).pdf

.PHONY: clean

clean:
	rm -rf *~ *.idx *.lot *.toc *.lof *.aux *.blg *.out *.bbl *.log *.pdf

$(FILE).pdf: $(FILE).tex chapters/introduction.tex chapters/conclusion.tex biblio/*.bib chapters/part1/*.tex chapters/part2/*.tex chapters/part3/*.tex 
	pdflatex $(FILE)
	makeindex $(FILE).idx
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)

clean_all:
	$(MAKE) clean
	cd chapters_alone/part1 && $(MAKE) clean
	cd chapters_alone/part2 && $(MAKE) clean
	cd chapters_alone/part3 && $(MAKE) clean

make_all:
	$(MAKE) 
	cd chapters_alone/part1 && $(MAKE) 
	cd chapters_alone/part2 && $(MAKE) 
	cd chapters_alone/part3 && $(MAKE) 