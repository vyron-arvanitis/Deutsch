.PHONY: sections pdf open

sections:
	sh scripts/update-sections.sh

pdf: sections
	mkdir -p out
	pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out main.tex

open: pdf
	open out/main.pdf