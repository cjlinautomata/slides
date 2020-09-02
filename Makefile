# FILES = chap0.pdf chap1_DFA.pdf chap1_NFA.pdf chap1_regexp.pdf chap1_pumpinglemma.pdf chap2.pdf chap3.pdf chap4.pdf chap7.pdf

FILES = $(addsuffix .pdf, $(basename $(wildcard *.tex)))

all:	$(FILES)

LATEX ?= latex
PDFLATEX ?= pdflatex
BIBTEX ?= bibtex

# rules

TEX_DEPS = *.tex *.sty *.bib

CLEAN_FILES += *.log *.aux *.out *.ilg *.ind *.lof *.lot *.toc \
		*.bbl *.blg \
		*.dvi *.ps *.pdf \
		*.nav *.snm *.vrb

.SUFFIXES: .tex .dvi .ps .pdf

.tex.pdf: 
	pdflatex --shell-escape $<
	-bibtex $*
	pdflatex --shell-escape $<
	pdflatex --shell-escape $<
	pdflatex --shell-escape $<

clean:
	rm -f $(CLEAN_FILES)

