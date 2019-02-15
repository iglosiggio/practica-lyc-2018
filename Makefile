TMPFILES=*.log *.aux
RESUELTOS=resuelto1.pdf resuelto2.pdf resuelto3.pdf

all: $(RESUELTOS) index.html

%.pdf: %.tex
	pdflatex $(LATEXFLAGS) $<

index.html: index.html.sh
	./index.html.sh $(RESUELTOS) > index.html

clean:
	rm -f *.pdf index.html $(TMPFILES)

cleantmp:
	rm -f $(TMPFILES)
