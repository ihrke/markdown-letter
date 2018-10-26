MD_FILES=letter_uit.md ## add more files here if needed
TEX_FILES:=$(MD_FILES:.md=.tex)
PDF_FILES:=$(MD_FILES:.md=.pdf)
TEMPLATE=templates/uitletter.latex
PANDOC=pandoc

## for a response to Reviewers
#MD_FILES=response_reviewers.md ## add more files here if needed
#TEX_FILES:=$(MD_FILES:.md=.tex)
#PDF_FILES:=$(MD_FILES:.md=.pdf)
#TEMPLATE=templates/uit_reply_reviewers.latex



all: $(PDF_FILES)


%.pdf: %.tex
	pdflatex $<

%.tex: %.md $(TEMPLATE)
	$(PANDOC) -s --template $(TEMPLATE) $< -o $@

watch: $(MD_FILES) $(BIBLIOGRAPHY)
	fswatch -o $^ | xargs -n1 -I{} make


.PHONY : clean
clean :
	-rm $(PDF_FILES) $(TEX_FILES) *.aux *.out *.log *.fdb_latexmk *.fls *.synctex.gz
