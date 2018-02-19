all: chap1.pdf chap2.pdf

view: chap2.pdf display

display:
	open chap2.pdf

.PHONY: clean

clean:
	rm -rf *~ *.idx *.lot *.toc *.lof *.aux *.blg *.out *.bbl *.log *.pdf


chap1.pdf: chap1.tex ../chapters/part1/chap1.tex
	pdflatex -halt-on-error $<
	bibtex chap1
	pdflatex $<
	pdflatex $<

chap2.pdf: chap2.tex ../chapters/part1/chap2.tex
	pdflatex -halt-on-error $<
	bibtex chap2
	pdflatex $<
	pdflatex $<
