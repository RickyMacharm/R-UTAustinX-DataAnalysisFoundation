# Import thedataset, name it "acl"
library(SDSFoundations)
acl <-AustinCityLimits

head(acl)

# Proportion calculation
gtab <- table(acl$Grammy)
prop.table(gtab)

# Contingency table
gtab2 <- table(acl$Grammy, acl$Gender)

# Conditional probability on row
prop.table(gtab2, 1)

# Conditional probability on column
prop.table(gtab2, 2)

barplot(gtab2, legend = T, main = 'Gender by Grammy Winner', xlab = 'Gender', beside = T, col = c('dark red', 'dark grey'))
