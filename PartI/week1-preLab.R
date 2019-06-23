library(SDSFoundations)
bike <- BikeData
#-----------------------------
bike$age[7]

#-----------------------------
table(bike$gender)
bike$gender == 'F'
females <- bike[bike$gender == 'F',]
femalespeed <-bike$speed[bike$gender == 'F']
#------------------------------
table(bike$cyc_freq, bike$gender)
females$speed[females$cyc_freq == 'Less than once a month']
#------------------------------
table(bike$cyc_freq)
bike[1:10, ]
table(bike$cyc_freq[1:10])
#------------------------------
table(bike$student)
student <-bike[bike$student==1,]
table(student$cyc_fre)
distance <-student$distance
mean(distance)
#------------------------------
rider_times<-bike$time
rider_times
