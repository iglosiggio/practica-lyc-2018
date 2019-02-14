%.pdf: %.tex
	pdflatex $(LATEXFLAGS) $<

TMPFILES=*.log *.aux
RESUELTOS=resuelto1.pdf resuelto3.pdf

all: $(RESUELTOS)

clean:
	rm -f *.pdf $(TMPFILES)

cleantmp:
	rm -f $(TMPFILES)
