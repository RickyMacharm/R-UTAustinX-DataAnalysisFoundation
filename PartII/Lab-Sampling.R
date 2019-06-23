survey<-StudentSurvey
hist(survey$happy, xlab = 'Persentage of time', main = 'Students happy', col = 'darkred', xlim = c(0,120))
summary(survey$happy)
mean(survey$happy)
sd(survey$happy)

xbar5 <- rep(NA, 1000)
xbar15 <- rep(NA, 1000)
xbar25 <- rep(NA, 1000)

for (i in 1:1000) {
  x5 = sample(survey$happy, size = 5)
  x15 = sample(survey$happy, size = 15)
  x25 = sample(survey$happy, size = 25)
  
  xbar5[i] = mean(x5)
  xbar15[i] = mean(x15)
  xbar25[i] = mean(x25)
}

hist(xbar5, xlab = 'Persentage of time', main = 'Sample size, n = 5', col = 'dark blue', xlim = c(40,120))
hist(xbar15, xlab = 'Persentage of time', main = 'Sample size, n = 15', col = 'dark green', xlim = c(40,100))
hist(xbar25, xlab = 'Persentage of time', main = 'Sample size, n = 25', col = 'dark grey', xlim = c(40,100))

mean(survey$happy)
sd(survey$happy)

mean(xbar5)
sd(xbar5)/sqrt(5)

mean(xbar15)
sd(xbar15)/sqrt(15)

mean(xbar25)
sd(xbar25)/sqrt(25)