TARGETS := $(filter-out README.md, $(wildcard *.Rmd *.md))

all: clean html

SUBDIRS  := use install develop
export BUILDDIR := $(CURDIR)/build
export DATADIR  := $(CURDIR)/data
export REPODIR  := $(CURDIR)

html: cpsources $(SUBDIRS)
	$(MAKE) -C $(BUILDDIR) html

deploy: html
	$(MAKE) -C $(BUILDDIR) deploy

.PHONY: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ html

.PHONY: cpsources

cpsources: $(TARGETS)
	cp -p $^ $(BUILDDIR)

.PHONY: clean

clean:
	$(MAKE) -C $(BUILDDIR) distclean
