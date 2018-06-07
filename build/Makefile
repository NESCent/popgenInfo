HTML_FILES := $(patsubst %.Rmd, %.html, $(wildcard *.Rmd))
HTML_FILES := $(HTML_FILES) $(patsubst %.md, %.html, $(wildcard *.md))
HTML_DIRS  := $(patsubst %.Rmd, %_files, $(wildcard *.Rmd))
HTML_DIRS  := $(HTML_DIRS) $(patsubst %.md, %_files, $(wildcard *.md))

DATADIR ?= $(CURDIR)/../data

ARCHIVEDIR = ../archive

all: clean html

html: $(HTML_FILES)

%.html: %.Rmd
	Rscript -e "rmarkdown::render('$<')"

%.html: %.md
	Rscript -e "rmarkdown::render('$<')"

deploy: html
	mkdir $(ARCHIVEDIR)
	tar cf $(ARCHIVEDIR)/site.tar include libs *.html *_files

.PHONY: clean distclean

clean:
	$(RM) $(HTML_FILES)
	$(RM) -r $(HTML_DIRS)

distclean: clean
	$(RM) *.Rmd *.md
	$(RM) $(ARCHIVEDIR)/site.tar
