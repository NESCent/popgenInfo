HTML_FILES := $(patsubst %.Rmd, %.html, $(wildcard *.Rmd))
HTML_FILES := $(HTML_FILES) $(patsubst %.md, %.html, $(wildcard *.md))
HTML_DIRS  := $(patsubst %.Rmd, %_files, $(wildcard *.Rmd))
HTML_DIRS  := $(HTML_DIRS) $(patsubst %.md, %_files, $(wildcard *.md))

DATADIR ?= $(CURDIR)/../data
SITEARCH = ../site.tar

all: clean html

html: dockerImage $(HTML_FILES)

%.html: %.Rmd
	docker run -v $(REPODIR):/repo -w /repo/build rocker/popgen Rscript -e "rmarkdown::render('$<')"

%.html: %.md
	docker run -v $(REPODIR):/repo -w /repo/build rocker/popgen Rscript -e "rmarkdown::render('$<')"

deploy: html
	tar cf $(SITEARCH) include libs *.html *_files
## The following shouldn't have to be run from within Docker, but
## there is a weird permission error for .png images (rendered plots)
## on the Circle CI server if run outside of the container.
	docker run -v $(REPODIR):/repo -w /repo/build rocker/popgen make distclean

.PHONY: dockerImage

dockerImage: 
	docker build -t rocker/popgen - < Dockerfile

.PHONY: clean distclean

clean:
	$(RM) $(HTML_FILES)
	$(RM) -r $(HTML_DIRS)

distclean: clean
	$(RM) *.Rmd *.md
