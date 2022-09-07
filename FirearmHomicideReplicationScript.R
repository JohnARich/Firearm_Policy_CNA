library(QCApro)
library(cna)
ZZ <- (FIREARM_HOMICIDE_DATA_Github)

#Low Homicide Solution

S1 <- ZZ[, c(2,4,7,15,16)]
H1 <- cna(S1, con = .75, cov = .8, ordering = "Firearm_Hom_LOW",  suff.only = FALSE, strict = TRUE, maxstep=c(7,7,20))
H1

frscored_cna(S1, type = "cs", fit.range = c(1, 0.7), granularity = 0.1,
             normalize = "truemax", ordering = "Firearm_Hom_LOW", strict = TRUE, print.all = TRUE)

#Not Low Homicide Solution
#UBC and Northern Great Plains

S2 <- ZZ[, c(2,15,16)]
H2 <- cna(S2, con = .8, cov = .8, ordering = "Firearm_Hom_LOW", notcols = "Firearm_Hom_LOW",  suff.only = FALSE, strict = TRUE, maxstep=c(7,7,20))
H2

frscored_cna(S2, type = "cs", fit.range = c(1, 0.7), granularity = 0.1,
             normalize = "truemax", ordering = "Firearm_Hom_LOW", notcols ="Firearm_Hom_LOW", strict = TRUE, print.all = TRUE)

