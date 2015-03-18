#Creating and submitting workflow vignettes

##What is a workflow vignette?
Workflow vignettes are documents that outline a population genetics based bioinformatics workflow involving one or more R packages. These workflows are based around biological questions/topics and the type of data being used and are generally more extensive than those found in package vignettes. They are intended to provide R users with the necessary code and examples to solve any biological questions that they have. 

The analysis outlined in the vignettes should be fast to run, ideally approximately two minutes. For example, if you are running permutations, set these to a small number in the workflow and encourage the user to increase the number themselves, in order to reduce the time required. 

##Who should contribute?
Anyone who is confident in population genetics analysis in R is encouraged to contribute.

##How do I write a workflow vignette?
Write the workflow vignette in [R markdown] (http://rmarkdown.rstudio.com/). The workflow should include example analysis and explanations using data that can be readily accessed in the public domain e.g. the data that comes as part of some packages so that users can replicate the analysis themselves. 

##How do I submit a workflow?
Submit the workflow by issuing a pull request in the 'use' directory in this repository. Once the request is approved, the file will be automatically sent to a remote server that compiles the document into a html file. A link will then be added to the vignette on the main README.md page in the 'USE' table and it will also be linked in the 'use' directory README under the biological question and data type that it addresses. 
