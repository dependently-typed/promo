.PHONY: publish pdf clean

COMMON_OPTIONS = -pdflatex="lualatex -interaction nonstopmode" -pdf -outdir=build

pdf:
	latexmk $(COMMON_OPTIONS) *.tex

watch:
	latexmk -pvc $(COMMON_OPTIONS) *.tex

publish: pdf
	cp build/presentation.pdf .

clean:
	rm -rf build
