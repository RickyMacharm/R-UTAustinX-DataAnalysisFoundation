#Download Data
library(SDSFoundations)

#assign dataframe to bull
bull <-BullRiders

#How many of the first 10 riders in the dataset have been pro for 10 years or more?
tmp <-bull[1:10,]
tmp<-tmp[tmp$YearsPro>=10, ]
tmp

#Create a subset of the data which contains only those riders that have participated 
#in at least one event in 2013.
riders_particip13 = bull[bull$Events13 > 0, ]

# Visualize and describe the first variable of interest
hist(riders_particip13$Rides13)
fivenum(riders_particip13$Rides13)
mean(riders_particip13$Rides13)
sd(riders_particip13$Rides13)
summary(riders_particip13$Rides13)

# Visualize and describe the second variable of interest
riders_particip13$Top10_13
hist(riders_particip13$Top10_13)
fivenum(riders_particip13$Top10_13)
summary(riders_particip13$Top10_13)
mean(riders_particip13$Top10_13)
sd(riders_particip13$Top10_13)

# Create a scatterplot
plot(riders_particip13$Rides13,riders_particip13$Top10_13)

# Add line of best fit
abline(lm(riders_particip13$Top10_13~riders_particip13$Rides13))

# Calculate the correlation coefficient
cor(riders_particip13$Rides13,riders_particip13$Top10_13)

# Create a correlation matrix 
vars = c("Rides13", "Top10_13")
cor(riders_particip13[,vars] )

#identify a specific record
which(riders_particip13$Top10_13==2 & riders_particip13$Rides13==22)
riders_particip13[riders_particip13$Top10_13==2 & riders_particip13$Rides13==22, ]
