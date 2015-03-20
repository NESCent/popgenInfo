TARGETS := $(filter-out README.md, $(wildcard *.Rmd *.md))

BUILDDIR ?= ../build

all: clean html

html: $(TARGETS)
	-cp -p $^ $(BUILDDIR)

.PHONY: clean

clean:
