library(QCApro)
library(cna)

ZZ <- (FIREARM_SUICIDE_DATA_Github)
names(ZZ)

#Low Firearm Suicide Solution
Subset2 <- ZZ[, c(2,4,8,15)]
names(Subset2)
output_datasetS1_CNA3 <- cna(Subset2, con = .8, cov = .75, ordering = "FIREARM_SUI_LOW", suff.only = FALSE, strict = TRUE, maxstep=c(7,7,20), details = c("e", "f"))
output_datasetS1_CNA3


#Not Low Firearm Suicide Solution

Subset2 <- ZZ[, c(2,4,8,15)]
names(Subset2)
output_datasetS1_CNA3 <- cna(Subset2, con = .87, cov = .9, ordering = "FIREARM_SUI_LOW", notcols = "FIREARM_SUI_LOW", suff.only = FALSE, strict = TRUE, maxstep=c(7,7,20), details = c("e", "f"))
output_datasetS1_CNA3


