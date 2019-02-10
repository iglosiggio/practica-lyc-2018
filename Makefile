%.pdf: %.tex
	pdflatex $< -o $@

TMPFILES=*.log *.aux

all: practica_1.pdf

clean:
	rm -f *.pdf $(TMPFILES)

cleantmp:
	rm -f $(TMPFILES)
