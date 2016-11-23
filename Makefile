# Variables pour le codage 
latex = xelatex
doc = cours
styleind = styleindex
styleglo = gglo-fr

# Déclaration des actions (et dépendances) 
all: $(doc).pdf

$(doc).pdf: $(doc).tex
	$(latex) $(doc).tex
	bibtex $(doc).aux
	makeindex -s $(styleind).ist -o $(doc).ind $(doc).idx
	makeindex -s $(styleind).ist -o $(doc).pnd $(doc).pdx
	makeindex -s $(styleind).ist -o $(doc).cnd $(doc).cdx
	$(latex) $(doc).tex
	$(latex) $(doc).tex

# Nettoyage simple du répertoire
clean:
	rm -f  \
		$(doc).aux  \
		$(doc).bbl  \
		$(doc).blg  \
		$(doc).cdx  \
		$(doc).cnd  \
		$(doc).cod  \
		$(doc).cfg  \
		$(doc).exa  \
		$(doc).glo  \
		$(doc).gls  \
		$(doc).idx  \
		$(doc).ind  \
		$(doc).ilg  \
		$(doc).lof  \
		$(doc).log  \
		$(doc).lot  \
		$(doc).maf  \
		$(doc).mtc* \
		$(doc).out  \
		$(doc).pdx  \
		$(doc).pnd  \
		$(doc).toc  \
		$(doc)$(doc).exa
# Nettoyage complet
mrproper: clean
	rm -f $(doc).pdf
