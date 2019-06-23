acl<-AustinCityLimits

# Subset the data (males only)
male_acl <-acl[acl$Gender == 'M',]

# Create a table to show the marginal distributions for Genre and Grammy
table(male_acl$Genre)
table(male_acl$Grammy)

# Create a contingency table to show the conditional distribution for Genre and Grammy
table(male_acl$Grammy, male_acl$Genre)

# Make a bar chart to better visualize how many artists in each Genre received a Grammy.
barplot(table(male_acl$Grammy, male_acl$Genre), main = 'Male Artists in each Genre with/without a Grammy', xlab = 'Kind of Music', legend = T, beside = T)

# Calculate P(A):  the probability of winning a Grammy.
prop.table(table(male_acl$Grammy))

# Calculate P(A|B): the probability of winning Grammy, given the artist's Genre.
prop.table(table(male_acl$Grammy, male_acl$Genre), 2)
