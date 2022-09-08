library(QCApro)
library(cna)
ZZ <- (FIREARM_SUICIDE_DATA_Github)
names(ZZ)

#Low Firearm Suicide Solution
# UBC + TWENTYONE + JG 

S1 <- ZZ[, c(2,4,8,13)]
names(S1)
H1 <- cna(S1, con = .8, cov = .75, ordering = "FIREARM_SUI_LOW", suff.only = FALSE, strict = TRUE, maxstep=c(7,7,20))
H1


#Not Low Firearm Suicide Solution
# ubc*twentyone*jg

S2 <- ZZ[, c(2,4,8,13)]
names(S2)
H2 <- cna(S2, con = .87, cov = .9, ordering = "FIREARM_SUI_LOW", notcols = "FIREARM_SUI_LOW", suff.only = FALSE, strict = TRUE, maxstep=c(7,7,20))
H2


