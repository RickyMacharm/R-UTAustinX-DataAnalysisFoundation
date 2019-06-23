#require(SDSFoundations)
#library(SDSFoundations)

head(WorldRecords)

mens800 <- WorldRecords[WorldRecords$Event == 'Mens 800m', ]

linFit(mens800$Year, mens800$Record)

