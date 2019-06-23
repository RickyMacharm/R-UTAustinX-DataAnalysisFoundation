#Download Data
library(SDSFoundations)

#Create a variable assosiated with data frame
animals <- AnimalData
head(animals)

#Find the number of animals that were adopted 
table(animals$Outcome.Type)

#Pull out only adopted animals
adopted <- animals[animals$Outcome.Type=="Adoption",]

#Pull out just the days in shelter for the adopted animals
daystoadopt <- adopted$Days.Shelter

#Visualize and describe this variable
hist(daystoadopt)
fivenum(daystoadopt)
mean(daystoadopt)
sd(daystoadopt)
which(animals$Days.Shelter==max(daystoadopt))

