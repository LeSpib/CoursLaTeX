doc = cours
clean:
	rm -f  \
		$(doc).aux \
		$(doc).bbl \
		$(doc).blg \
		$(doc).cfg \
		$(doc).glo \
		$(doc).gls \
		$(doc).idx \
		$(doc).ind \
		$(doc).ilg \
		$(doc).lof \
		$(doc).log \
		$(doc).lot \
		$(doc).out \
		$(doc).exa \
		$(doc)$(doc).exa \
		$(doc).maf \
		$(doc).cdx \
		$(doc).cod \
		$(doc).pdx \
		$(doc).mtc* \
		$(doc).cnd \
		$(doc).pnd \
    $(doc).toc \
		./chapitres/*.aux
