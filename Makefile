TEX = paper.tex

CLS = acmsmall.cls

STY = acmcopyright.sty

PDF = ${TEX:%.tex=%.pdf}

all:
	pdflatex paper
	bibtex paper
	pdflatex paper
	while ( grep -q '^LaTeX Warning: Label(s) may have changed' $*.log)\
	do pdflatex paper; done

clean:
	rm -f *.aux *.log *.blg *.bbl
