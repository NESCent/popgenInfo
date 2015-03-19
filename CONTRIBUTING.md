#Creating and submitting workflow vignettes

##What is a workflow vignette?
Workflow vignettes are documents that outline a population genetics based bioinformatics workflow involving one or more R packages. These workflows are based around biological questions/topics and the type of data used. They are generally more extensive than those found in package vignettes and are intended to provide R users with the necessary code and examples to solve biological questions. 

The analysis outlined in the vignettes should be fast to run, ideally approximately two minutes or less. For example, if you are running permutations, set these to a small number in the workflow and encourage the user to increase the number themselves in order to reduce the time required. 

##Who should contribute?
Anyone who is confident in population genetics analysis in R is encouraged to contribute.

##How do I write a workflow vignette?
Write the workflow vignette in [R markdown] (http://rmarkdown.rstudio.com/). The workflow should include example analysis and explanations using data that can be readily accessed in the public domain  e.g. the data that comes as part of some packages so that users can replicate the analysis themselves. If no public data is available to address a particular biological question that you want to write a workflow for, this data can be uploaded to this repository also.

##How do I submit a workflow?
1. Set up a github account if you don't already have one (see [here](https://guides.github.com/activities/hello-world/)) for a quick tutorial on using Github. Download the appropriate Git for your computer, see [here](https://help.github.com/articles/set-up-git/) and set it up.
2. Fork this repository on Github using the `Fork` button. 
3. Clone the repository to your machine using `git clone https://github.com/NESCent/popgenInfo.git` on the command line. The URL used here is in the HTTPS clone url section on the popgenInfo github page. Keep your clone synced up by following Step 3 of [this tutorial](https://help.github.com/articles/fork-a-repo/). 
4. Then, move to the popgenInfo directory using `cd popgenInfo`.
5. Create a branch for your changes using `git checkout -b Your_branch_name`.
6. Move your file into the branches **use** directory using `cp yourfilename.Rmd Your_branch_name/`.
7. Add the file to git using `git add yourfilename.Rmd`.
8. Then commit this using `git commit` and add some short text describing what your file is.
9. Then run `git push origin`. **(Am I missing something here?)**
10. To do a pull request, navigate to your branch on github. Click `Compare & review`.
11. Once you have reviewed the changes, click `Create pull request`. Once the request is approved, the file will be automatically sent to a remote server that compiles the document into a html file.
12. Then open the [`WORKFLOWS.md`](WORKFLOWS.md) file using the edit button if on the github website ( or alter it in the repository has already been cloned on your own machine) and add the name of your tutorial along with a link to the tutorial e.g. the link will be 'use/Tutorial_name.html'. Finally click `Propose file change` and then `Create pull request` to request that the file changes be included if you are altering it on github.

##Submitting Data
**to do**
**Dataset needs to be < 200 kb in size. If it is larger and your analysis will make sense on a subset of the dataset, then please subset it to a smaller size for both submission and use in the workflow. 
