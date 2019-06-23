#Download Data
library(SDSFoundations)

bull <-BullRiders

# scatter plot
plot(bull$YearsPro, bull$BuckOuts14, col ='red', xlab='Years Pro', ylab = 'Buckouts', main = 'Plot of Years Pro vs BuckOuts')

#regr line
abline(lm(bull$BuckOuts14~bull$YearsPro))

#correletaion
cor(bull$YearsPro, bull$BuckOuts14)

# scatter plot, regr line, correlation
plot(bull$Events14, bull$BuckOuts14, col ='red', xlab='Events', ylab = 'Buckouts', main = 'Events vs BuckOuts')
abline(lm(bull$BuckOuts14~bull$Events14))
cor(bull$Events14, bull$BuckOuts14)

#several variables, correlation
myvars = c('YearsPro', 'Events14', 'BuckOuts14')
cor(bull[, myvars])
