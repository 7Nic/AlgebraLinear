#Este trabalho est� licenciado sob a Licen�a Creative Commons Atribui��o-CompartilhaIgual 3.0 N�o Adaptada. Para ver uma c�pia desta licen�a, visite http://creativecommons.org/licenses/by-sa/3.0/ ou envie uma carta para Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.

########################################
#
# ATEN��O
#
# POR SEGURAN�A, N�O EDITE ESTE ARQUIVO.
#
########################################

pdf: livro.tex
	cp config-pdf.knd config.knd
	pdflatex livro
	pdflatex livro	
	pdflatex livro

html: livro.html

livro.html: livro.tex
	rm -f html/*
	cp config-html.knd config.knd
	mkdir -p html
	latex livro
	latex livro
	latex livro
	mk4ht htlatex livro "myconfig,3,notoc*" "" "-d./html/"
	cp config-pdf.knd config.knd

.PHONY: clean

clean:
	rm -f *.aux *.log *.out *.toc *.bbl \
	*.idx *.ilg *.ind *.blg *.backup \
	*.4tc *.lg *.tmp *.xref *.png *.html \
	*.4ct *.css *.idv *.maf *.mtc *.mtc0 \
	*.xml

