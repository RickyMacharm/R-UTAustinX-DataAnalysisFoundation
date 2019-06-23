survey <- StudentSurvey
hist(survey$name_letters)
summary(survey$name_letters)
mean(survey$name_letters)
sd(survey$name_letters)

# Draw 1,000 samples of n=5 and find the mean of each sample.

xbar5 <- rep(NA, 1000)
for (i in 1:1000) {
  x<-sample(survey$name_letters, size = 5)
  xbar5[i] <- mean(x)
}

hist(xbar5, xlab = 'Sample Means', main = 'Sample size n = 5', col = 'blue', xlim = c(2,10))

mean(xbar5)
sd(xbar5)
sd(survey$name_letters)/sqrt(5)

# Draw 1,000 samples of n=15 and find the mean of each sample.
xbar15 <- rep(NA, 1000)
for (i in 1:1000) {
  x<-sample(survey$name_letters, size = 15)
  xbar15[i] <- mean(x)
}

hist(xbar15, xlab = 'Sample Means', main = 'Sample size n = 15', col = 'red', xlim = c(2,10))

mean(xbar15)
sd(xbar15)
sd(survey$name_letters)/sqrt(15)

# Draw 1,000 samples of n=25 and find the mean of each sample.

xbar25 <- rep(NA, 1000)
for (i in 1:1000) {
  x<-sample(survey$name_letters, size = 25)
  xbar25[i] <- mean(x)
}

hist(xbar25, xlab = 'Sample Means', main = 'Sample size n = 25', col = 'cyan', xlim = c(2,10))

mean(xbar25)
sd(xbar25)
sd(survey$name_letters)/sqrt(25)


