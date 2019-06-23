library(SDSFoundations)
WR <- WorldRecords

head(WR)
table(WR$Event)

# Create a subset of the data that contains World Record cases for the men’s Mile event.
m_mile <- WR[WR$Event == 'Mens Mile', ]

# Create a subset of the data that contains World Record cases for the women's Mile event. 
w_mile <- WR[WR$Event == 'Womens Mile', ]

# Create a scatterplot for each relationship of Mile time and year: one for men and one for women.  

plot(m_mile$Year, m_mile$Record, xlab ='Year', ylab ='Mens Mile Record', pch = 7)
plot(w_mile$Year, w_mile$Record, xlab ='Year', ylab ='Womens Mile Record', pch = 5)

linFit(m_mile$Year, m_mile$Record, xlab ='Year', ylab ='Mens Mile Record')
linFit(w_mile$Year, w_mile$Record, xlab ='Year', ylab ='Womens Mile Record')



