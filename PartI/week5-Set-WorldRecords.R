library(SDSFoundations)
WR <- WorldRecords

head(WR)
table(WR$Event)

#  data frame of the world records in the men's pole vault event in years 1970 and later. 
m_polevault <- WR[(WR$Event == 'Mens Polevault' & WR$Year>=1970), ] 

max(m_polevault$Record)

plot(m_polevault$Year, m_polevault$Record, xlab = 'Year', ylab = 'Mens pole vault record, m', pch = 15)


linFit(m_polevault$Year, m_polevault$Record, xlab = 'Year', ylab = 'Mens pole vault record, m')
