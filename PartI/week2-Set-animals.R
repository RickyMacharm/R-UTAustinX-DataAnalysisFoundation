#Download Data
library(SDSFoundations)

#Create a variable assosiated with data frame
animals <- AnimalData
head(animals)

#dogs in the schelter
dogs = animals[animals$Animal.Type == 'Dog',]

#dogs brought to the shelter as an owner surrender
dogs_sur = dogs[dogs$Intake.Type == 'Owner Surrender', ]

#proportion of dogs were brought to the shelter as an owner surrender
#отданых владельцами собак 81б всего собак в приюте 291 
proportion = 81/291

#Of the dogs that were brought to the shelter as an owner surrender, 
#how many were returned to their owner?
table(dogs_sur$Outcome.Type)
mean(dogs_sur$Days.Shelter[dogs_sur$Outcome.Type == 'Return to Owner'])
