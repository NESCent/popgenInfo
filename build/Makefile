HTML_FILES := $(patsubst %.Rmd, %.html, $(wildcard *.Rmd))
HTML_FILES := $(HTML_FILES) $(patsubst %.md, %.html, $(wildcard *.md))

all: clean html

html: $(HTML_FILES)

%.html: %.Rmd
	Rscript -e "rmarkdown::render('$<')"

%.html: %.md
	Rscript -e "rmarkdown::render('$<')"

.PHONY: clean distclean

clean:
	$(RM) $(HTML_FILES)

distclean: clean
	$(RM) *.Rmd
	$(RM) *.md
