TMPFILES=*.log *.aux
RESUELTOS=resuelto1.pdf resuelto3.pdf

%.pdf: %.tex
	pdflatex $(LATEXFLAGS) $<

index.html: index.html.sh
	./index.html.sh $(RESUELTOS) > index.html

all: $(RESUELTOS) index.html

clean:
	rm -f *.pdf index.html $(TMPFILES)

cleantmp:
	rm -f $(TMPFILES)
