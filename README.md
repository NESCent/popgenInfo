# Resources for Population Genetics in R

Build status: [![Circle CI](https://circleci.com/gh/NESCent/popgenInfo/tree/master.svg?style=svg)](https://circleci.com/gh/NESCent/popgenInfo/tree/master)

Archival copy: [![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.48274.svg)](http://dx.doi.org/10.5281/zenodo.48274)

## Introduction

This site provides resources for conducting population genetic analyses in R using existing packages. Any member of the R user community proficient in population genetics is welcome to contibute to this site. See [instructions](CONTRIBUTING.md) on how to contribute workflow vignettes using [R markdown](R_MARKDOWN.md).

Development of this site started at the [Population Genetics in R hackathon]
held at [NESCent] March 16-20, 2015.

## Prerequisites and how this works

### Building the Website with Docker

The content of this resource is authored in Markdown and [R markdown]
documents, which are rendered to HTML and published to a Github
Pages-hosted static website. The rendering requires a complex software
environment (R, a variety of R packages, TeX/LaTeX, pandoc, etc). To
allow this to run as consistently as possible between someone's local
machine and the Continuous Integration (CI) platform (currently
[Circle CI]) that automatically builds and deploys the website upon
changes, the rendering is done from within a [Docker] container that has
everything preinstalled (see the [Dockerfile](build/Dockerfile)).

As a consequence, contributors need not worry about installing the
numerous necessary software components themselves. However, to build the
site locally, one has to have docker set up to run. See
[Docker installation guides], then click on the "Installation" tab and
choose your OS to learn about how to get Docker installed and running
on your system.

In addition to Docker, building the HTML content locally requires the
ability to run GNU `make`.

For further details on the mechanics of the build and deploy process,
see the documentation in the top-level [Makefile](Makefile).

### Authoring/Running Vignettes (without Docker)

The vignettes presented on this website are authored in [R markdown] 
utilizing packages listed in the [DESCRIPTION](DESCRIPTION) file. If
you want to author a vignette and have a recent installation of R, 
but do not have the time or authorization to install and run [Docker],
you may obtain all the dependent packages by installing them from this
repository using the R package [devtools](http://cran.r-project.org/package=devtools):

```r
install.packages("devtools", repos = "https://cran.r-project.org")
source("https://bioconductor.org/biocLite.R")
biocLite(c("qvalue", "Biostrings"))
devtools::install_github("NESCent/popgenInfo")
```

## License and How to contribute

All content of this project is released under the MIT license. Please
see the file LICENSE for details.

We welcome contributions by the community. Please see the file
[CONTRIBUTING.md](CONTRIBUTING.md) for detailed instructions. Note
that this project has adopted a [Contributor Code of Conduct](CONDUCT.md).
By participating you agree to abide by its terms.

[NESCent]: http://nescent.org
[Population Genetics in R hackathon]: https://github.com/NESCent/r-popgen-hackathon
[R markdown]: http://rmarkdown.rstudio.com/
[Circle CI]: http://circleci.com
[Docker]: https://www.docker.com/whatisdocker/
[Docker installation guides]: https://docs.docker.com/
