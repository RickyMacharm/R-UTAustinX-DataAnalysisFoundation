# Download Data
library(SDSFoundations)

# assign dataframe to bull
bull <-BullRiders

# Create a new dataset for 2012
bul12 <- bull[bull$Events12 > 0, ]

# Visualize and desribe the Earnings for 2012
hist(bul12$Earnings12)
max(bul12$Earnings12)
median(bul12$Earnings12)
fivenum(bul12$Earnings12)
sd(bul12$Earnings12)

# Correlation matrix for Earnings12, RidePer12 and CupPoints12
vect <- c('Earnings12', 'RidePer12', 'CupPoints12')
cor(bul12[, vect])

# Sctterpolt for Earnings12, RidePer12
plot(bul12$RidePer12, bul12$Earnings12)
abline(lm(bul12$Earnings12~bul12$RidePer12 ))
cor(bul12$Earnings12, bul12$RidePer12)

# Sctterpolt for Earnings12, CupPoints12
plot(bul12$CupPoints12, bul12$Earnings12 )
abline(lm(bul12$Earnings12~bul12$CupPoints12))

# identify specific case
which(bul12$Earnings12 == max(bul12$Earnings12))

#Subset the data, remove outlier
bul12 <- bul12[bul12$Earnings12 < 1000000 ,] 

# Correlation matrix for Earnings12, RidePer12 and CupPoints12
vect <- c('Earnings12', 'RidePer12', 'CupPoints12')
cor(bul12[, vect])

# Sctterpolt for Earnings12, RidePer12
plot(bul12$RidePer12, bul12$Earnings12)
abline(lm(bul12$Earnings12~bul12$RidePer12 ))

# Sctterpolt for Earnings12, CupPoints12
plot(bul12$CupPoints12, bul12$Earnings12 )
abline(lm(bul12$Earnings12~bul12$CupPoints12))
