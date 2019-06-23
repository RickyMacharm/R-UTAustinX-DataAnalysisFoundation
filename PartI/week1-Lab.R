# Import the BikeData dataset, name it "bike"
library(SDSFoundations)
bike <- BikeData

# Find the number of daily riders in the dataset
daily_riders = bike[bike$cyc_freq == 'Daily',]

# Find the number of Male and Female daily riders in the dataset
table(daily_riders$gender)

#Find average age of daily riders
mean(daily_riders$age)

#Find the number of female daily riders in the dataset
female_daily_riders = daily_riders[daily_riders$gender == 'F',]

#Find average age of female daily riders
female_daily_riders$age
mean(female_daily_riders$age)

#Find the number of male daily riders in the dataset
male_daily_riders = daily_riders[daily_riders$gender == 'M',]

#Find average age of male daily riders
mean(male_daily_riders$age)

#Find male daily riders older 30
male_thirty = male_daily_riders[male_daily_riders$age >= 30,]
