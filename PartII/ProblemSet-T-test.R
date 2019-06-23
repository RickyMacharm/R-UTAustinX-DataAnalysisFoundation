bull <- BullRiders

earnings12 <- bull$Earnings12[bull$Earnings12>0]
numEvents12 <- bull$Events12[bull$Events12>0]

earnings_per <- earnings12/numEvents12
hist(earnings_per)

logearnings_per <- log(earnings_per)
hist(logearnings_per, col = 'yellow')

logearnings_per

mu <- mean(logearnings_per)
sigma<- sd(logearnings_per)

z <- abs(qt(0.025, df = 28))

mu + z*sigma/sqrt(29)
mu - z*sigma/sqrt(29)

exp(mu + z*sigma/sqrt(29))
exp(mu - z*sigma/sqrt(29))

t.test(logearnings_per)


