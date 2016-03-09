---
title: "Creating and submitting vignettes"
---

Vignettes are documents that outline topics in population genetics involving one or more R packages. These topics are based around biological questions and the type of data used in population genetics. They are generally more extensive than those found in package vignettes and are intended to provide R users with the necessary code and examples to solve biological questions. 

The analyses outlined in the vignettes should be fast to run, ideally approximately two minutes or less. For example, if you are running permutations, set these to a small number in the workflow and encourage the user to increase the number themselves in order to reduce the time required. 

# Who should contribute?

Anyone who is confident in population genetics analysis in R is encouraged to contribute.

## What vignettes should I contribute?

A good place to start is to examine all of the [GitHub issues labeld "Wishlist"](https://github.com/NESCent/popgenInfo/labels/Wishlist). Please comment on the issue if you wish to contribute so that we know who is taking responsibility.

# How do I write a vignette?

Contributed vignettes should be written in [R markdown](http://rmarkdown.rstudio.com/). A template can be found in [`TEMPLATE.Rmd`](https://github.com/nescent/popgenInfo/tree/master/TEMPLATE.Rmd) (See the [rendered example](TEMPLATE.html)). The vignette should include example analysis and explanations using data that can be readily accessed in the public domain, e.g., the data that comes as part of some packages, so that users can replicate the analysis themselves. If no public data is available to address a particular biological question that you want to write a vignette for, this data can be uploaded to this repository also.

# How do I submit a vignette?

Overall, vignette submission will follow the guidelines in [GitHub flow](https://guides.github.com/introduction/flow/index.html). Please create a new branch for each vignette to be submitted. 

Since this process requires git, if you are having trouble installing git or accessing your command line, please take a look at our detailed tutorial on using git through R: [Contributing with git2r](CONTRIBUTING_WITH_GIT2R.html).

 
## Setup for new contributors

If you are a new contributor, you will need to make sure you have git set up and a fork of this repository. Please follow these instructions carefully. If you have already set up your repository, go to the next section. 

1. Set up a GitHub account if you don't already have one, [see here for a quick tutorial on using GitHub](https://guides.github.com/activities/hello-world/). 
2. Download an appropriate Git client for your computer and set it up ([instructions to set up git](https://help.github.com/articles/set-up-git/)).
3. Fork the [source repository](http://github.com/NESCent/popgenInfo) on GitHub using the `Fork` button (See [GitHub's tutorial](https://help.github.com/articles/fork-a-repo/)). 
4. On the command line, clone the repository to your machine using    
`git clone https://github.com/YourAccount/popgenInfo.git`    
Note: the https protocol is easier to follow, [but it's possible to use ssh as well](https://help.github.com/articles/fork-a-repo/#step-2-create-a-local-clone-of-your-fork). 
5. Add the NESCent repository as upstream with     
`git remote add upstream https://github.com/NESCent/popgenInfo.git`    
to keep your fork up to date with the master repository. [See these instructions for details](https://help.github.com/articles/fork-a-repo/#step-3-configure-git-to-sync-your-fork-with-the-original-spoon-knife-repository)

## Step-by-step process for submission

If you have a vignette you would like to submit, please follow these instructions to submit it for review. 

1. Update your fork
    a. From the command line, move to the **popgenInfo** directory using `cd popgenInfo`
    b. Switch to your master branch with `git checkout master`
    c. Update with    
        ```sh
        git fetch upstream          # grab all the changes from NESCent
        git merge upstream/master   # add them to your local fork
        git push                    # push them up to your fork on github
        ```    

2. Create a branch for your changes using `git checkout -b Your_branch_name`.
3. Add your vignette
    a. If you are on windows or macintosh, you can open Rstudio by double-clicking on the **popgenInfo.Rproj** file in your file browser. If you are on linux, you can open it by typing `rstudio popgenInfo.Rproj`.
    b. If you haven't done so, create your vignette from the [`TEMPLATE.Rmd`](https://github.com/nescent/popgenInfo/tree/master/TEMPLATE.Rmd) file and move any associated data to the **data/** directory.
    c. Move your  vignette in `.Rmd` format into the **use/** directory.
    d. Add the file to git using `git add use/yourfilename.Rmd data/yourdata.txt`.
    e. Then commit this using `git commit` and add some short text describing what your file is.
4. Push to your fork and create a new pull request
    a. From the command line, run `git push --set-upstream origin Your_branch_name` to push your branch to your remote fork
    b. To do a pull request, navigate to your branch on GitHub. Click `Compare & review` or the pull request icon.
    c. Once you have reviewed the changes, click `Create pull request`. Once the request is approved, the file will be automatically sent to a remote server that compiles the document into a html file.

## Guidelines for approval

 - Vignette must be able to successfully run examples with available packages and data (this is automatically checked)
 - At least two people other than the vignette writer must approve the pull request

## Best practices

 - Use the [template](https://github.com/nescent/popgenInfo/tree/master/TEMPLATE.Rmd) to get started
 - Give your vignette a unique name by using the date of your first commit (e.g. `2015-06-16_Parentage_Microsatellite.Rmd`) would be a vignette that was started on June 16th, 2015) 
 - List authors at the bottom of the vignette
 - Use small examples and encourage readers to explore with bigger examples
 - Indicate whether or not your pull request is ready to be merged or if you want feedback

# How do I submit datasets?

We encourage contributors to use existing data sets for their vignettes. If uploading your data set to this repository, submit data files to the **data/** directory in your branch in the same way as for your R markdown file. The data set used in a vignette should be **< 200kb** in size. If your data set is larger and your analysis will make sense on a subset of the data set, then please subset it to a smaller size for both submission and use in the vignette. 

# Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.html). By participating in this project you agree to abide by its terms.
