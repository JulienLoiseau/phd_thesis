all: part3.pdf chap1.pdf chap2.pdf

view: part3.pdf display

display:
	open part3.pdf

.PHONY: clean

clean:
	rm -rf *~ *.idx *.lot *.toc *.lof *.aux *.blg *.out *.bbl *.log *.pdf


chap1.pdf: chap1.tex ../../chapters/part3/chap1.tex
	pdflatex -halt-on-error $<
	bibtex chap1
	pdflatex $<
	pdflatex $<

chap2.pdf: chap2.tex ../../chapters/part3/chap2.tex
	pdflatex -halt-on-error $<
	bibtex chap2
	pdflatex $<
	pdflatex $<

part3.pdf: part3.tex ../../chapters/part3/*.tex
	pdflatex -halt-on-error $<
	bibtex part3
	pdflatex $<
	pdflatex $<

