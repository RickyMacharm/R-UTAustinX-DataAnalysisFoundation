library(SDSFoundations)
WR <- WorldRecords

head(WR)
table(WR$Event)

# Create a subset of the dataset that contains only the World Record cases for men’s shotput.
m_shotput <- WR[WR$Event == 'Mens Shotput', ]

# Create a subset that contains only the World Record cases for women's shotput. 
w_shotput <- WR[WR$Event == 'Womens Shotput', ]

# Create a scatterplot of year and record shotput distance: one for men and one for women. 
plot(m_shotput$Year, m_shotput$Record, xlab = 'Year', ylab = 'Record', main = 'Mens Shotput Record for Years')
plot(w_shotput$Year, w_shotput$Record, xlab = 'Year', ylab = 'Record', main = 'Womens Shotput Record for Years', pch=18)

cor(m_shotput$Year, m_shotput$Record)
cor(w_shotput$Year, w_shotput$Record)

#Run linear models
linFit(m_shotput$Year, m_shotput$Record, xlab = 'Year', ylab = 'Mens Record')
linFit(w_shotput$Year, w_shotput$Record, xlab = 'Year', ylab = 'Womens Record')
