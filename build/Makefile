HTML_FILES := $(patsubst %.Rmd, %.html, $(wildcard *.Rmd))
HTML_FILES := $(HTML_FILES) $(patsubst %.md, %.html, $(wildcard *.md))

DATADIR ?= $(CURDIR)/../data
SITEARCH = ../site.tar

all: clean html

html: dockerImage $(HTML_FILES)

%.html: %.Rmd
	docker run -v $(DATADIR):/data -v $$(pwd):/build -w /build rocker/popgen Rscript -e "rmarkdown::render('$<')"

%.html: %.md
	docker run -v $(DATADIR):/data -v $$(pwd):/build -w /build rocker/popgen Rscript -e "rmarkdown::render('$<')"

deploy: html
	tar cf $(SITEARCH) include libs *.html *_files

.PHONY: dockerImage

dockerImage: 
	docker build -t rocker/popgen - < Dockerfile

.PHONY: clean distclean

clean:
	$(RM) $(HTML_FILES)
	$(RM) -r $(patsubst %.Rmd, %_files, $(wildcard *.Rmd))
	$(RM) -r $(patsubst %.md, %_files, $(wildcard *.md))

distclean: clean
	$(RM) *.Rmd
	$(RM) *.md
