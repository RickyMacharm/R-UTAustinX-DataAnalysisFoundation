#Download Data
library(SDSFoundations)

#Create a variable assosiated with data frame
animals <- AnimalData
head(animals)

#Create a table to show how many adult (at intake) 
#cats and dogs are in the dataset. 
#An animal is considered an adult if it is at least one year of age. 

#Choose adult animals
adult_animals <- animals[animals$Age.Intake>0, ]

#Create table of adult cats and dogs
table(adult_animals$Animal.Type)

# A histogram of weight for both adult dogs and cats.
adult_cat_weight = adult_animals$Weight[adult_animals$Animal.Type == 'Cat']
adult_dog_weight = adult_animals$Weight[adult_animals$Animal.Type == 'Dog']

hist(adult_cat_weight, col = 'Cyan')
hist(adult_dog_weight, col = 'Yellow')
boxplot(adult_dog_weight, col = 'Yellow')

#Calculate the appropriate measures of center and spread for each distribution.
fivenum(adult_dog_weight)
summary(adult_dog_weight)

summary(adult_cat_weight)

fivenum(adult_dog_weight)[3]
fivenum(adult_dog_weight)[4]-fivenum(adult_dog_weight)[2]

mean(adult_cat_weight)
sd(adult_cat_weight)

#z-score of a 13 pound adult cat
which(adult_cat_weight == 13)
adult_cat_weight13 = adult_cat_weight[which(adult_cat_weight == 13)]
adult_cat_weight13
z = (adult_cat_weight13 - mean(adult_cat_weight))/sd(adult_cat_weight)
z
1-pnorm(z)

max(adult_dog_weight)
