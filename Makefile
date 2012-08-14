MAIN=bioinformatics
MPDIR=mp
#INCLUDES=$(shell egrep '^[^%]*\\input' $(MAIN).tex | sed -e 's/.*{//;s/}.*//')
#MPS=$(shell egrep '^[^%]*\\includegraphics' $(MAIN).tex $(INCLUDES)| sed -e 's/.*{//;s/}.*//')

#MPS=$(shell ls -1 $(MPDIR)/*.mp)


	#mpost $(MPDIR)/$(MAIN)

all: $(MPS)
	latex $(MAIN).tex
	bibtex $(MAIN)
	latex $(MAIN).tex
	latex $(MAIN).tex
	dvipdf -dAutoRotatePages=/None $(MAIN).dvi

# make the supplement
	@$(MAKE) --no-print-directory --directory=supplemental/


clean:
	rm -f *.aux *.dvi *.log *.pdf *.mpx *.[1-9]
