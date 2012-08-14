MAIN=sup
MPDIR=mp

all: $(MPS)
	latex $(MAIN).tex
	latex $(MAIN).tex
	latex $(MAIN).tex
	dvipdf -dAutoRotatePages=/None $(MAIN).dvi



clean:
	rm -f *.aux *.dvi *.log *.pdf *.mpx *.[1-9]
