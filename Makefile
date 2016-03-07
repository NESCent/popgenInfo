##
## Prerequisites and how this works ##
##
## Rendering the HTML files from .md and .Rmd input files will be run
## within a Docker container. The benefit of this is that the
## rendering will run in a software environment that is highly
## consistent between otherwise vastly different machines, and you do
## not need to worry about installing the numerous components (R, a
## variety of R packages, TeX/LaTeX, pandoc, etc) of this environment
## yourself. It does mean, however, that docker must be able to
## run. On non-Linux systems, this will require having VirtualBox or
## another VM hosting software installed and started up, which is
## typically accomplished through executing boot2docker. You may need
## to set some environment variables after that; your boot2docker
## program will usually tell you what to do.
##
## Once you have prepared your environment for running docker, you can
## test the build by issuing 'USERID=0 GROUPID=0 make test', which at 
## present is synonymous with 'make html'. I.e., the website build is 
## tested by rendering all HTML content. Note that USERID and GROUPID
## must be set to 0 or docker will not be able to process these files.
##
## The website is built in the build/ directory by first copying there
## all .md and .Rmd files from the root directory and a list of
## subdirectories, followed by running rmarkdown::render from within
## R.
##
## The deployment of the website, currently hosted on Github Pages, is
## initiated, but not completed by 'make deploy'. This will create a
## TAR archive of the website content. At present, pushing the archive
## contents to Github Pages is done by the Continuous Integration (CI)
## server (see circle.yml for details), though you may of course also
## do so by hand if you have the necessary permissions.
## 

TARGETS := $(filter-out README.md, $(wildcard *.Rmd *.md))

all: clean html

SUBDIRS  := use install develop
export BUILDDIR := $(CURDIR)/build
export DATADIR  := $(CURDIR)/data
export REPODIR  := $(CURDIR)

html test: cpsources $(SUBDIRS)
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
