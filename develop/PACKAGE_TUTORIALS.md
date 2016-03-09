---
title: "Writing R Packages"
---

# Introduction

The following tutorials are meant to give you a basic starting point that can
enable you to write packages for population genetic analysis. These are not 
designed to be a comprehensive guide for package development. There are MANY
tutorials available that describe development in detail (some examples are in
the dropdown menu). **The vignettes here are designed to show you how to develop
packages so that they can be easily integrated with the broader community of 
population genetics in R**. With these tools in R, population genetic analysis
can become more available and reproducible.

# A word on modularity 

R is an open source language with a strong community of developers contributing
new methods and analyses. The population genetics community has worked hard to 
create data classes that can be used efficiently between packages, expanding the
number of analyses that can be done by users in a reproducible manner. Utilizing
common data types within your R package lowers the barrier between current
workflows and your new method or visualization. 

# Resources for writing R packages

Below are some resources that can get you started writing R packages. 

 - [Hadley Wickham's Guide For Creating R Packages](http://r-pkgs.had.co.nz/)
 - [Jeff Leek's R Package Development](https://github.com/jtleek/rpackages)
 - [S4 Classes in detail](http://adv-r.had.co.nz/S4.html)
 - [S3 Classes in detail](http://adv-r.had.co.nz/S3.html)
 - [A not so short introduction to S4](http://cran.r-project.org/doc/contrib/Genolini-S4tutorialV0-5en.pdf)


# Tutorials

> A number of additional tutorials have been [tagged as candidates for community contribution](https://github.com/NESCent/popgenInfo/issues?utf8=✓&q=is%3Aopen+label%3A%22help+wanted%22+label%3Adocumentation).

If you are a package developer and would like to contribute a workflow about
package development, classes, or methods to this website, please see our
documentation on [contributing workflow vignettes](CONTRIBUTING.html).

## Basics

* [Creating a new R package for population genetics](package_basics.html)

