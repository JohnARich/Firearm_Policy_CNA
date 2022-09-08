library(QCApro)
library(cna)
ZZ <- (FIREARM_HOMICIDE_DATA_Github)
names(ZZ)

#Low Homicide Solution
#TWENTYONE + NORTHERN_GREAT_PLAINS + UBC*tp

S1 <- ZZ[, c(2,4,7,13,14)]
names(S1)
H1 <- cna(S1, con = .75, cov = .8, ordering = "Firearm_Hom_LOW",  suff.only = FALSE, strict = TRUE, maxstep=c(7,7,20))
H1

#Not Low Homicide Solution
#ubc*northern_great_plains

S2 <- ZZ[, c(2,13,14)]
names(S1)
H2 <- cna(S2, con = .8, cov = .8, ordering = "Firearm_Hom_LOW", notcols = "Firearm_Hom_LOW",  suff.only = FALSE, strict = TRUE, maxstep=c(7,7,20))
H2


