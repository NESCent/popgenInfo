---
title: Workflows For Developing R Packages
---

Introduction
=======

You are reading this introduction because you are interested in contributing an
R package to the population genetics community. You might have some R scripts
lying around that implement a specific calculation, or possibly a new
method of data visualization. Despite what you might have heard, developing a 
package is not as hard as it may seem. What's more, a new package implementing
your method will help the larger population genetics community. The following
series of tutorials will help point you toward the resources you need to get your
package up and running.

Table of Contents
=======

The following topics are covered. These will generally be short introductions 
utilizing examples from R packages currently available for population genetics
with links to longer discussions on specific subjects.

If you want to see a topic that is not 
covered, [contribute](CONTRIBUTING.html) or 
[submit an issue](https://github.com/NESCent/popgenInfo/issues). 

- [Population genetics packages in R](PACKAGES.html)
    - Types of analyses that they each perform
    - Types of genetic data that can be handled by each
    - [Classes implemented](DATAFORMATS.html)
    - Functions for conversion
- Package development
    - [Basics](package_basics.html)
    - Documentation
    - Tests
    - Compiled code
    - Class inheritance
      - S3 classes <!--(strataG example)-->
      - S4 classes <!--(genind example)-->
    - Submitting to CRAN
    
A word on modularity
=======

R is an open source language with a strong community of developers contributing
new methods and analyses. The population genetics community has worked hard to 
create data classes that can be used efficiently between packages, expanding the
number of analyses that can be done by users in a reproducible manner. Utilizing
common data types within your R package lowers the barrier between current
workflows and your new method or visualization. 

Resources for writing R packages
=======

Below are some resources that can get you started writing R packages. 

 - [Hadley Wickham's Guide For Creating R Packages](http://r-pkgs.had.co.nz/)
 - [Jeff Leek's R Package Development](https://github.com/jtleek/rpackages)
 - [S4 Classes in detail](http://adv-r.had.co.nz/S4.html)
 - [S3 Classes in detail](http://adv-r.had.co.nz/S3.html)
 - [A not so short introduction to S4](http://cran.r-project.org/doc/contrib/Genolini-S4tutorialV0-5en.pdf)

Contributing
=======

If you are a package developer and would like to contribute a workflow about
package development, classes, or methods to this website, please see our
documentation on [contributing workflow vignettes](CONTRIBUTING.html).
