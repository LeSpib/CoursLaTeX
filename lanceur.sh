xelatex -synctex=1 -interaction=nonstopmode cours.tex
xelatex -synctex=1 -interaction=nonstopmode cours.tex
bibtex cours
makeindex -s styleindex.ist cours.idx
makeindex -s styleindex.ist -o cours.pnd cours.pdx
makeindex -s styleindex.ist -o cours.cnd cours.cdx
xelatex -synctex=1 -interaction=nonstopmode cours.tex
xelatex -synctex=1 -interaction=nonstopmode cours.tex
make clean
