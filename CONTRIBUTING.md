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

 
 
## Step-by-step Process for submission

1. Set up a GitHub account if you don't already have one, see [here](https://guides.github.com/activities/hello-world/) for a quick tutorial on using GitHub. Download an appropriate Git client for your computer, see [here](https://help.github.com/articles/set-up-git/), and set it up.
2. Fork the [source repository](http://github.com/NESCent/popgenInfo) on GitHub using the `Fork` button. 
3. Clone the repository to your machine using `git clone https://github.com/YourAccount/popgenInfo.git` on the command line. The URL used here is in the HTTPS clone url section on the popgenInfo GitHub page. Keep your clone synced up by following Step 3 of [this tutorial](https://help.github.com/articles/fork-a-repo/). 
4. Then, from the command line, move to the popgenInfo directory using `cd popgenInfo`.
5. Create a branch for your changes using `git checkout -b Your_branch_name`.
6. Move your  vignette in `.Rmd` format into the **use/** directory.
8. Add the file to git using `git add use/yourfilename.Rmd`.
9. Then commit this using `git commit` and add some short text describing what your file is.
10. Then run `git push origin Your_branch_name`.
11. To do a pull request, navigate to your branch on GitHub. Click `Compare & review` or the pull request icon.
12. Once you have reviewed the changes, click `Create pull request`. Once the request is approved, the file will be automatically sent to a remote server that compiles the document into a html file.

## Guidelines for approval

 - Vignette must be able to successfully run examples with available packages and data (this is automatically checked)
 - At least two people other than the vignette writer must approve the pull request

## Best practices

 - Use the [template](https://github.com/nescent/popgenInfo/tree/master/TEMPLATE.Rmd) to get started
 - Give your vignette a unique name by using the date of your first commit (e.g. `2015-06-16_Parentage_Microsatellite.Rmd`) would be a vignette that was started on June 16th, 2015) 
 - List authors at the bottom of the vignette
 - Use small examples and encourage readers to explore with bigger examples
 - Submit your vignette early to get feedback

# How do I submit datasets?

We encourage contributors to use existing data sets for their vignettes. If uploading your data set to this repository, submit data files to the **data/** directory in your branch in the same way as for your R markdown file. The data set used in a vignette should be **< 200kb** in size. If your data set is larger and your analysis will make sense on a subset of the data set, then please subset it to a smaller size for both submission and use in the vignette. 
