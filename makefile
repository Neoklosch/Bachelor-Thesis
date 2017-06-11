FILENAME = Bachelorarbeit_-_Markus_Paeschke_s0531524

all: createpdf clean

createpdf:
	pdflatex -file-line-error -synctex=1 -interaction=nonstopmode  $(FILENAME).tex
	bibtex $(FILENAME)
	pdflatex -file-line-error -synctex=1 -interaction=nonstopmode  $(FILENAME).tex
	pdflatex -file-line-error -synctex=1 -interaction=nonstopmode $(FILENAME).tex

pdf:
	pdflatex -file-line-error -halt-on-error  $(FILENAME).tex

bib:
	bibtex $(FILENAME)

clean:
	rm -f *.aux *.log *.toc *.lof *.bak *.loa *.lot *.bbl *.blg *.idx *.ilg *.ind *.dvi *.out *.brf *.thm *.toc *.thumbs.db *.literatur-template.tex *.synctex.gz

rebuild: clean all
