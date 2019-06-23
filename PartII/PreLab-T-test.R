bull <- BullRiders
USA <- bull[bull$Country == "USA",]
weight <- USA$Weight

mean(weight)
sd(weight)

hist(weight, main='Histogram of US Bull Rider Weights', xlab='Weights', col = 'DarkGreen', xlim = c(100,200))

t.test(weight, mu = 190)
