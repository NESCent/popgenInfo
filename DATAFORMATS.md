---
title: "Data classes"
---

The following table describes specialized objects to store data represented in
population genetics packages. Conversion between all types is possible.

Anyone developing a package for population genetic analysis is encouraged to use or
build upon these data structures. If a new data structure is needed, please
provide a conversion method to one or more of the classes listed below.

|      Class {type} (*package*)     |      Strengths     |      Weaknesses     |
|-----------------------------------|--------------------|---------------------|
| **DNAbin** {S3} (*ape*) | stores all sets of sequences (aligned or not) | less compact than 2-bit coding (but by a factor 4 at most) |
| | uses matrices (aligned) or lists so usual R's commands (`names`, `rownames`, `[`, `[[`, `$`) can be used | |
| | many `as.DNAbin` methods in ape (inc. from BioConductor) | |
| | efficient functions in ape (`dist.dna`, `seg.sites`, `base.freq`, `read.FASTA`) and in pegas (`haplotype`) | |
| **loci** {S3} (*pegas*) | low memory usage | not really appropriate for some analyses (e.g., multivariate analyses)
| | all levels of ploidy and any number of alleles | needs to improve the treatment of NA's (especially when data are read with read.vcf() |
| | genotypes can be phased | |
| | any kind of individual data can be associated in the data frame | |
| | efficient to compute genotype and allele frequencies | |
| **genind** {S4} (*adegenet*) | stores allelic counts; ideal for multivariate analyses | requires more memory |
| | additional slots for individual data | less efficient to compute frequencies |
| | additional slot for population strata | |
| | all levels of ploidy | |
| **genpop** {S4} (*adegenet*) | equivalent to genind at group level; ideal for multivariate analysis | requires more memory |
| **genlight** {S4} (*adegenet*) | stores binary SNPs using bit-level coding; very memory efficient | more computationally intensive to handle; less functionalities |
| | additional slots for individual data and population strata | |
| | all levels of ploidy | assumes bi-allelic loci |
| **genclone** {S4} (*poppr*) | inherits genind object; gains all advantages | all the same weaknesses plus slightly more memory |
| | stores multilocus genotype/lineage definitions (`@mlg` slot) for clonal populations | |
| **snpclone** {S4} (*poppr*) | inherits genlight object; gains all advantages | all the same weaknesses plus slightly more memory |
| | stores multilocus genotype/lineage definitions (`@mlg` slot) for clonal populations | |
| **genambig** {S4} (*polysat*) | stores microsatellite data with ambiguous ploidy | does not handle any other data type |
| | exports to genpop objects | cannot easily be transferred to any other object |
| **phyDat** {S3} (*phangorn*) | very general inspired by R `data.frame`, `factor` and `contrasts`, can contain any discrete data type; nucleotides, amino acids and codons have some more support | designed having phylogenetic analysis in mind; requires alignments, where all sequences have same length |
| | can be converted to and from `DNAbin` objects (`as.DNAbin` / `as.phyDat`) | |
| | a few generic functions work on it: `c`, `unique`, `subset` and utility functions `baseFreq`, `allSitePattern`, etc. | data are not necessarily very memory efficient (as integer + contrast matrix), but stores only unique site patterns and their weights (as double) |
| | "efficient" maximum likelihood, maximum parsimony and distance functions in phangorn | |
| **gtype** {S3} (*strataG*) | a simple R `list` containing a `matrix` where the first column is a stratification scheme and columns afterward are either haplotypes or diploid loci. If haploid data, the `gtype` object can also contain a list of DNA sequences.| Can likely be made more efficient in terms of storage and preprocessing for other analytical routines in package |
| | can be converted to `data.frame` or `matrix` with appropriate `as.` functions. | |
| | has manipulation functions like `subset` which will select certain strata and/or loci, `merge` to combine mulitple `gtypes`, and `summary`. | |
| | can create input files for Genepop, STRUCTURE, fastsimcoal, Arlequin, MEGA, and PHASE | |
| **multiDNA** {S4} (*apex*) | stores multiple `DNAbin` objects from *ape* | |
| **multiPhyDat** {S4} (*apex*) | stores multiple `phyDat` objects from *phangorn* | |


