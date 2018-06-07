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
## test the build by issuing 'make test', which at present is
## synonymous with 'make html'. I.e., the website build is tested by
## rendering all HTML content.
##
## The website is built in the build/ directory by first copying there
## all .md and .Rmd files from the root directory and a list of
## subdirectories, followed by running rmarkdown::render from within
## R.
##
## The deployment of the website, currently hosted on Github Pages, is
## initiated, but not completed by 'make deploy'. This will create a
## TAR archive of the website content in archive/site.tar. At present,
## pushing the archive contents to Github Pages is done by the Continuous
## Integration (CI) server (see .circle/circle.yml for details), though you
## may of course also do so by hand if you have the necessary permissions.
## 

TARGETS := $(filter-out README.md, $(wildcard *.Rmd *.md))

# the name of the docker container
CONTAINER ?= hlapp/rpopgen

# we run commands in the container under the same UID and GID as on the host
USERID ?= $(shell id -u)
GROUPID ?= $(shell id -g)

all: clean html

SUBDIRS  := use develop
BUILDDIR := build
DATADIR  := data
REPODIR  := $(CURDIR)

# We set HOME=/tmp for inside the container so that Rmarkdown is not
# confused into thinking that $HOME/opt/pandoc is the pandoc home when
# $HOME defaults to /, as it does for unknown users.

CONTAINERMAKE := $(SUDO) docker run --user="$(USERID):$(GROUPID)" -e "HOME=/tmp" -e "DATADIR=../$(DATADIR)" -v $(REPODIR):/repo -w /repo $(CONTAINER) make

html test: dockerImage cpsources $(SUBDIRS)
	$(CONTAINERMAKE) -C $(BUILDDIR) html

deploy: html
	$(CONTAINERMAKE) -C $(BUILDDIR) deploy

ci-test: cpsources $(SUBDIRS)
	$(MAKE) -C $(BUILDDIR) html

ci-deploy: ci-test
	$(MAKE) -C $(BUILDDIR) deploy

.PHONY: $(SUBDIRS) cpsources clean dockerImage

$(SUBDIRS):
	$(MAKE) -C $@ html

dockerImage:
	docker pull $(CONTAINER)

cpsources: $(TARGETS)
	cp -p $^ $(BUILDDIR)

clean:
	$(MAKE) -C $(BUILDDIR) distclean
