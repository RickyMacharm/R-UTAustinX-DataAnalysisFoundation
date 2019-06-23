# Download Data
library(SDSFoundations)
bull <- BullRiders

# who had at least 1 ride in 2014
newbull <- bull[bull$Rides14>0, ]

# Create a new variable or vector 
# for the average number of rides per event for each bull rider
RidesPerEvent14 <- newbull$Rides14/newbull$Events14

# a histogram of "rides per event" variable and find the five-number summary
hist(RidesPerEvent14)

fivenum(RidesPerEvent14)
min(RidesPerEvent14)
median(RidesPerEvent14)
summary(RidesPerEvent14)

plot(newbull$Rank14, RidesPerEvent14)
abline(lm(RidesPerEvent14 ~ newbull$Rank14))

cor(newbull$Rank14, RidesPerEvent14)

