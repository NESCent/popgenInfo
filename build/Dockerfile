## Start with the hadleyverse image from Rocker, then add population
## genetics images on top.

FROM rocker/hadleyverse:latest
MAINTAINER Hilmar Lapp hilmar.lapp@duke.edu

## Install population genetics and related packages from CRAN
RUN rm -rf /tmp/*.rds \
&&  install2.r --error \
    ape \
    adegenet \
    hierfstat \
    knitcitations \
    pegas \
    mmod \
    genetics \
    phylobase \
    phytools \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds

## Install population genetics and related packages from Github
# RUN installGithub.r 
