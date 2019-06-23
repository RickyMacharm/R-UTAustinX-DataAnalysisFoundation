library(SDSFoundations)

WBD <- WorldBankData
head(WBD)

# Data on Brazil
BR <- WBD[WBD$Country == 'Brazil', ]

# Data in Brazil since 1995
BR95 <- BR[BR$year >= 1995, ]

# Time variable that shows "years since 1995"
time <- BR95$year - 1995

# Mobile users in Brazil since 1995 (in mlns)

mu <- BR95$mobile.users/1000000

# the number of mobile users in Brazil (in millions) in 2000
BR95$mobile.users[BR95$year == 2000]/1000000

# In what year did Brazil first record more than 100 million mobile users
BR95$year[BR95$mobile.users > 100000000][1]


# Scatterplot for Internet users in Denmark since 1990
plot(time, mu)

# Models for Mobile users in Brazil since 1995
linFit(time, mu)
expFit(time, mu)
logisticFit(time, mu)

tripleFit(time, mu)

# Using the best???fitting model, predict the number of mobile users (in millions) in Brazil in 2025. 
logisticFitPred(time, mu, 2025-1995)

