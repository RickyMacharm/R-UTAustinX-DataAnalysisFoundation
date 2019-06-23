library(SDSFoundations)

WBD <- WorldBankData
head(WBD)

# Data on Denmark
d <- WBD[WBD$Country == 'Denmark', ]

# Data in Denmark since 1990
d <- d[d$year >= 1990, ]

# Time variable that shows period
time <- d$year - 1990

# Internet users in Denmark since 1990 (proportions to the population)
d$population
iu <- d$internet.users/d$population

# Scatterplot for Internet users in Denmark since 1990
plot(time, iu)

# Models for Internet users in Denmark since 1990
linFit(time, iu)
expFit(time, iu)
logisticFit(time, iu)

expFitPred(time, iu, 16.076)
logisticFitPred(time, iu, 12.76)

tripleFit(time, iu)


