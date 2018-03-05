all: part2.pdf chap1.pdf chap2.pdf chap3.pdf

view: part2.pdf display

display:
	open part2.pdf

.PHONY: clean

clean:
	rm -rf *~ *.idx *.lot *.toc *.lof *.aux *.blg *.out *.bbl *.log *.pdf


chap1.pdf: chap1.tex ../../chapters/part2/chap1.tex
	pdflatex -halt-on-error $<
	bibtex chap1
	pdflatex $<
	pdflatex $<

chap2.pdf: chap2.tex ../../chapters/part2/chap2.tex
	pdflatex -halt-on-error $<
	bibtex chap2
	pdflatex $<
	pdflatex $<

chap3.pdf: chap3.tex ../../chapters/part2/chap3.tex
	pdflatex -halt-on-error $<
	bibtex chap3
	pdflatex $<
	pdflatex $<

part2.pdf: part2.tex ../../chapters/part2/*.tex
	pdflatex -halt-on-error $<
	bibtex part2
	pdflatex $<
	pdflatex $<

