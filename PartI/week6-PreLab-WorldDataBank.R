library(SDSFoundations)

WBD <- WorldBankData
head(WBD)

# Data on USA
usa <- WBD[WBD$Country == 'United States', ]

# Internet users in USA in 2006 (in mlns)
usa_iu2006 <- usa$internet.users[usa$year == 2006]/1000000

# Data on USA for 1990 - 1999 
usa <- usa[usa$year >= 1990 & usa$year <= 1999,]

# Time variable that shows period
time <- usa$year - 1990

# Internet users in USA in 1990-1999 (in mlns)
iu <- usa$internet.users/1000000

# Scatterplot for Internet users in USA in 1990-1999
plot(time, iu)

# Models for Internet users in USA in 1990-1999
linFit(time, iu)
expFit(time, iu)
logisticFit(time, iu)

tripleFit(time, iu)

# Model predictions of internet users in 2006
expFitPred(time, iu, 16)
logisticFitPred(time, iu, 16)

# Exp and Logistic Residuals of Internet users in USA for 2006
usa_iu2006 - 3756.413
usa_iu2006 - 127.447
