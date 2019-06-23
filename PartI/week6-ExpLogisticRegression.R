library(SDSFoundations)

WBD <- WorldBankData
head(WBD)

gbr <- WBD[WBD$Country == 'United Kingdom', ]
gbr <- gbr[gbr$year >= 2000 & gbr$year < 2010,]

time <- gbr$year - 2000
mv <- gbr$motor.vehicles
plot(time, mv)

linFit(time, mv)
expFit(time, mv)
logisticFit(time, mv)

tripleFit(time, mv)

expFitPred(time, mv, 12)

logisticFitPred(time, mv, 12)
