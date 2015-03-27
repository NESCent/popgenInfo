# Resources for Population Genetics in R

Build status: [![Circle CI](https://circleci.com/gh/NESCent/popgenInfo/tree/master.svg?style=svg)](https://circleci.com/gh/NESCent/popgenInfo/tree/master)

This site provides resources for conducting population genetic analyses in R using existing packages. 

| [Get started](GETSTARTED.md) | [Learn](LEARN.md)                         |
| :--------------:|:-------------------------:        |
| [**Using R**](USINGR.md)     | [**Developer**](DEVELOPER.md) |


Any member of the R user community proficient in population genetics is welcome to contibute to this site. See [here](CONTRIBUTING.md) for instructions on how to contribute workflow vignettes using [R markdown](R_MARKDOWN.md).

This site was developed during the [Population Genetics R hackathon] held at NESCent on March 16-20, 2015. 

## Prerequisites and how this works ##

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
numerous necssary software components themselves, but to build the
site locally, one has to have docker set up to run. See
[Docker installation guides], then click on the "Installation" tab and
choose your OS to learn about how to get Docker installed and running
on your system.

In addition to Docker, building the HTML content locally requires the
ability to run GNU `make`.

For further details on the mechanics of the build and deploy process,
see the documentation in the top-level [Makefile](Makefile).

[Population Genetics R hackathon]: https://github.com/NESCent/r-popgen-hackathon
[R markdown]: http://rmarkdown.rstudio.com/
[Circle CI]: http://circleci.com
[Docker]: https://www.docker.com/whatisdocker/
[Docker installation guides]: https://docs.docker.com/
