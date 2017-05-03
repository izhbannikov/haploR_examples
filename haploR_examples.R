# Examples used in the paper "haploR: an R-package for querying web-based annotation tools"#

library(haploR)

# Example 1: input vector of SNPs #
res <- queryHaploreg(query=c("rs10048158","rs4791078"))
write.csv(res, "~/Dropbox/haploR/Manuscript/f1000research_submission/examples/example1.csv")

# Example 2: Input text file with SNPs #
res <- queryHaploreg(file=system.file("extdata/snps.txt", package="haploR"))
write.csv(res, "~/Dropbox/haploR/Manuscript/f1000research_submission/examples/example2.csv")

# Example 3: Using a particular study #
#Get a list of studies
studies <- getStudyList()
#Query Hploreg
res <- queryHaploreg(study=studies[[1]])
write.csv(res, "~/Dropbox/haploR/Manuscript/f1000research_submission/examples/example3.csv")

# Example 4: Querying RegulomeDB #
res <- queryRegulome(query=c("rs4791078","rs10048158"), format="full")
write.csv(res, "~/Dropbox/haploR/Manuscript/f1000research_submission/examples/example4.csv")
