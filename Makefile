GIT                     = git
DATE                    = date
YQ                      = yq
REVISION                = $(shell $(GIT) rev-parse main)
BUILDDATE1              = $(shell $(DATE) +%x)
BUILDDATE2              = $(shell $(DATE) +%T)

WORKDIR                 = $(CURDIR)
CHROMIUM                = chromium
PANDOC                 ?= docker run --rm -v $(WORKDIR):/pandoc pandoc-thesis pandoc
META                    = md/metadata.yaml

SRC                     = md/00_introduction.md       \
                          md/01_origines.md           \
                          md/02_decortiquer.md        \
                          md/03_business-impact.md    \
                          md/04_scenarios.md          \
                          md/05_exigences.md          \
                          md/06_architecture.md       \
                          md/07_codereview.md       \
                          md/08_secenv.md       \
                          md/08_pentest.md       \
                          md/09_monitoring_audit.md           \
                          md/10_cloud.md           \
                          md/11_containers.md           \
                          md/12_education.md           \
                          md/13_devsecops.md           \
                          md/inreallife.md            \
                          md/gofurther.md             \
                          md/conclusion.md

BIBFILE                 = references.bib

APPENDIX                = md/annexes.md           \
                          md/annexes/memoire.md   \
                          md/annexes/dread.md     \
                          md/annexes/golangandsonar.md

TARGET                  = build/mémoire-jbriault-$(REVISION).pdf

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
OPTIONS                += -V documentclass=report
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

# Defines the default target that `make` will to try to make,
# or in the case of a phony target, execute the specified commands
# This target is executed whenever we just type `make`
.DEFAULT_GOAL = help

.PHONY: help
help: ## Print help on Makefile
	@echo "Please use 'make <target>' where <target> is one of"
	@echo ""
	@grep -hE '^[ a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-17s\033[0m %s\n", $$1, $$2}'
	@echo ""
	@echo "Check the Makefile to know exactly what each target is doing."

simple: $(TARGET) ## Simple book layout (output: build/xxx.pdf)

openpdf:
	$(CHROMIUM) $(TARGET)

docker: ## Build docker image ("pandoc-thesis") containing pandoc and TeX-Live
	cd docker && make

clean: ## Clean-up: Remove temporary (generated)
	rm -rf $(TMP)

distclean: clean ## Clean-up: Remove also generated dissertation
	rm -f $(TARGET)
	rm -f build/slides.pdf

authors: ## Generate or update AUTHORS file
	bash scripts/docs/generate-authors.sh

${TARGET}: $(SRC) $(REFERENCES) $(APPENDIX) $(META) $(BIBFILE) $(TMP) ## Build dissertation
	$(YQ) eval -i 'with(.date ; . = "$(BUILDDATE1)" | . style="double")' $(META)
	$(YQ) eval -i 'with(.hour ; . = "$(BUILDDATE2)" | . style="double")' $(META)
	$(YQ) eval -i 'with(.revision ; . = "$(REVISION)" | . style="double")' $(META)

	$(PANDOC) ${OPTIONS} -o $@ $(SRC) $(REFERENCES) $(APPENDIX)

slides-pdf: ## Generate slides in PDF format
	$(PANDOC) -t beamer -s slides/main.md -o build/slides.pdf

$(TMP): __%.filled.tex: %.tex $(META) ## Build auxiliary files (title page, frontmatter, backmatter, references)
	$(PANDOC) $(AUX_OPTS) --template=$< --metadata-file=$(META) -o $@ $<

.PHONY: simple cleanthesis docker clean distclean
