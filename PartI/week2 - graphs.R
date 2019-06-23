#Download Data
library(SDSFoundations)

#Create a variable assosiated with data frame
animals <- AnimalData

#View several first observatins on all variables in a data frame
head(animals)

#Categorical variable
table(animals$Sex)
table(animals$Animal.Type)
plot(animals$Animal.Type, main = 'Animal Type', xlab = 'Type', ylab='Quantity', col = 'magenta')

#Numeriacal variable
hist(animals$Age.Intake, col = 'red')

#Histograms by getGroup()
femaleage <- animals$Age.Intake[animals$Sex == 'Female']
maleage <- animals$Age.Intake[animals$Sex == 'Male']
hist(femaleage, breaks = 10, col = 'Yellow')
hist(maleage, breaks = 15, col = 'Green')