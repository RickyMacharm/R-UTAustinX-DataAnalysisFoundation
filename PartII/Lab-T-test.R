bull <- BullRiders

riders <- bull[bull$Events14 >= 5, ]

mean(riders$RidePer14)
sd(riders$RidePer14)

hist(riders$RidePer14)

t.test(riders$RidePer14, mu = 0.5)

