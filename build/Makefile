HTML_FILES := $(patsubst %.Rmd, %.html, $(wildcard *.Rmd))
HTML_FILES := $(HTML_FILES) $(patsubst %.md, %.html, $(wildcard *.md))
HTML_DIRS  := $(patsubst %.Rmd, %_files, $(wildcard *.Rmd))
HTML_DIRS  := $(HTML_DIRS) $(patsubst %.md, %_files, $(wildcard *.md))

DATADIR ?= $(CURDIR)/../data

# we run commands in the container under the same UID and GID as on the host
USERID ?= $(shell id -u)
GROUPID ?= $(shell id -g)

# we let this be a dotfile so that rm -r * won't match it
SITEARCH = ../.site.tar

all: clean html

html: dockerImage $(HTML_FILES)

# We set HOME=/tmp for inside the container so that Rmarkdown is not
# confused into think that $HOME/opt/pandoc is the pandoc home when
# $HOME defaults to /, as it does for unknown users.

%.html: %.Rmd
	$(SUDO) docker run --user="$(USERID):$(GROUPID)" -e "HOME=/tmp" -v $(REPODIR):/repo -w /repo/build rocker/popgen Rscript -e "rmarkdown::render('$<')"

%.html: %.md
	$(SUDO) docker run --user="$(USERID):$(GROUPID)" -e "HOME=/tmp" -v $(REPODIR):/repo -w /repo/build rocker/popgen Rscript -e "rmarkdown::render('$<')"

deploy: html
	tar cf $(SITEARCH) include libs *.html *_files

.PHONY: dockerImage

dockerImage: 
	docker build -t rocker/popgen - < Dockerfile

.PHONY: clean distclean

clean:
	$(RM) $(HTML_FILES)
	$(RM) -r $(HTML_DIRS)

distclean: clean
	$(RM) *.Rmd *.md
