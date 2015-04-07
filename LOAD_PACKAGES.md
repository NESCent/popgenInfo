---
title: "Loading packages"
---

## Installing required R packages:

Before a package can be loaded, it needs to be installed. Use the
`install.packages()` function to install any packages that are on [CRAN](http://cran.r-project.org/).

```
install.packages("adegenet")  # to install a single package
install.packages(c("adegenet", "pegas", "poppr"))  # to install a group of packages
```

Once installed, you can make a package's functions available for use
by loading it using the `library()` function:
```
library("adegenet")
```



