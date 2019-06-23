survey<-StudentSurvey
mean(survey$austin)
sd(survey$austin)
hist(survey$austin)

xbar10 <- rep(NA, 1000)
for (i in 1:1000) {
  x <- sample(survey$austin, size = 10)
  xbar10[i] <- mean(x)
}

hist(xbar10, col = 'darkred')

mean(xbar10)
sd(xbar10)
sd(survey$austin)/sqrt(10)
