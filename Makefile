PROJECTNAME=latex-homework

.PHONY: all clean

all:
	mkdir -p out out/include
	latexmk -pdf -cd --silent -outdir=../out -jobname=$(PROJECTNAME) ./tex/main
	mv out/$(PROJECTNAME).pdf pdf/$(PROJECTNAME).pdf

clean:
	rm -rf ./out

dist-clean: clean
	rm -f hierarchical_runtime_verification.pdf