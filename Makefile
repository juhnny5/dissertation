
WORKDIR                 = $(CURDIR)
PANDOC                 ?= docker run --rm -v $(WORKDIR):/pandoc pandoc-thesis pandoc
META                    = md/metadata.yaml

SRC                     = md/introduction.md       \
                          md/relatedwork.md        \
                          md/concept.md            \
                          md/realisation.md        \
                          md/conclusion.md

BIBFILE                 = references.bib
APPENDIX                = md/appendix.md
TARGET                  = thesis.pdf

TITLEPAGE               = titlepage.tex
FRONTMATTER             = frontmatter.tex
BACKMATTER              = backmatter.tex
REFERENCES              = references.md

TMP1                    = $(TITLEPAGE:%.tex=__%.filled.tex)
TMP2                    = $(FRONTMATTER:%.tex=__%.filled.tex)
TMP3                    = $(BACKMATTER:%.tex=__%.filled.tex)
TMP                     = $(TMP1) $(TMP2) $(TMP3)

AUX_OPTS                = --wrap=preserve
OPTIONS                 = -f markdown
OPTIONS                += --pdf-engine=pdflatex
OPTIONS                += --standalone
OPTIONS                += -M lang=de-DE
OPTIONS                += --metadata-file=$(META)
OPTIONS                += --include-in-header=$(TMP1)
OPTIONS                += --include-before-body=$(TMP2)
OPTIONS                += --include-after-body=$(TMP3)
OPTIONS                += --citeproc
OPTIONS                += -M bibliography=$(BIBFILE)
OPTIONS                += -M link-citations=true
OPTIONS                += --listings
OPTIONS                += -V documentclass=scrbook
OPTIONS                += -V papersize=a4
OPTIONS                += -V fontsize=11pt
OPTIONS                += -V classoption:open=right
OPTIONS                += -V classoption:twoside=true
OPTIONS                += -V classoption:cleardoublepage=empty
OPTIONS                += -V classoption:clearpage=empty
OPTIONS                += -V geometry:top=30mm
OPTIONS                += -V geometry:left=25mm
OPTIONS                += -V geometry:bottom=30mm
OPTIONS                += -V geometry:width=150mm
OPTIONS                += -V geometry:bindingoffset=6mm
OPTIONS                += --toc
OPTIONS                += --toc-depth=3
OPTIONS                += --number-sections
OPTIONS                += -V colorlinks=true
OPTIONS                += -V book=true
OPTIONS                += -V titlepage=true
OPTIONS                += -V toc-own-page=true


TEMPLATE_DL_DIR         = .tmp_template_dl
TEMPLATE_FILES          = $(EISVOGEL_TEMPLATE) $(CLEANTHESIS_TEMPLATE)

## Simple book layout
simple: $(TARGET)

## Build docker image ("pandoc-thesis") containing pandoc and TeX-Live
docker:
	cd docker && make

## Clean-up: Remove temporary (generated) files and download folder
clean:
	rm -rf $(TMP) $(TEMPLATE_DL_DIR)

## Clean-up: Remove also generated thesis and template files
distclean: clean
	rm -f $(TARGET) $(TEMPLATE_FILES)

## Download template files
$(TEMPLATE_FILES):
	rm -rf $(TEMPLATE_DL_DIR)
	git clone --quiet --single-branch --branch master --depth 100 $(TEMPLATE_REPO) $(TEMPLATE_DL_DIR)
	cd $(TEMPLATE_DL_DIR) && git checkout --quiet $(TEMPLATE_VERSION)
	cp $(TEMPLATE_DL_DIR)/$(TEMPLATE_FILE) ./$(TEMPLATE_FILE)
	rm -rf $(TEMPLATE_DL_DIR)

## Build thesis
${TARGET}: $(SRC) $(REFERENCES) $(APPENDIX) $(META) $(BIBFILE) $(TMP)
	$(PANDOC) ${OPTIONS} -o $@ $(SRC) $(REFERENCES) $(APPENDIX)

## Build auxiliary files (title page, frontmatter, backmatter, references)
$(TMP): __%.filled.tex: %.tex $(META)
	$(PANDOC) $(AUX_OPTS) --template=$< --metadata-file=$(META) -o $@ $<

.PHONY: simple cleanthesis docker clean distclean
