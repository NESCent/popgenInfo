TARGETS := $(filter-out README.md, $(wildcard *.Rmd *.md))

all: clean html

SUBDIRS  := use install develop
export BUILDDIR := $(CURDIR)/build

html: cpsources $(SUBDIRS)
	$(MAKE) -C $(BUILDDIR) html

.PHONY: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ html

.PHONY: cpsources

cpsources: $(TARGETS)
	cp -p $^ $(BUILDDIR)

.PHONY: clean

clean:
	$(MAKE) -C $(BUILDDIR) distclean
