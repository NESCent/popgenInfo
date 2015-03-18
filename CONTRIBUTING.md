#Creating and submitting workflow vignettes

##What is a workflow vignette?
Workflow vignettes are documents that outline a population genetics based bioinformatics workflow involving one or more R packages. These workflows are based around biological questions/topics and the type of data used and are generally more extensive than those found in package vignettes. They are intended to provide R users with the necessary code and examples to solve biological questions that they have. 

The analysis outlined in the vignettes should be fast to run, ideally approximately two minutes or less. For example, if you are running permutations, set these to a small number in the workflow and encourage the user to increase the number themselves, in order to reduce the time required. 

##Who should contribute?
Anyone who is confident in population genetics analysis in R is encouraged to contribute.

##How do I write a workflow vignette?
Write the workflow vignette in [R markdown] (http://rmarkdown.rstudio.com/). The workflow should include example analysis and explanations using data that can be readily accessed in the public domain e.g. the data that comes as part of some packages so that users can replicate the analysis themselves. 

##How do I submit a workflow?
Submit the workflow by issuing a pull request to include your file in the 'use' directory in this repository. New github users can find a tutorial on getting started with github [here] (https://guides.github.com/activities/hello-world/). Once the request is approved, the file will be automatically sent to a remote server that compiles the document into a html file. Then open the WORKFLOW.md file using the edit button if on the github website (or open a pull request if it has been cloned and altered on your own machine) and add the name of your tutorial along with a link to the tutorial e.g. the link will be like 'use/Tutorial_name.html'. Finally click `Propose file change` to have the file changes included and then `Create pull request`.


