# Import thedataset, name it "acl"
library(SDSFoundations)
acl <-AustinCityLimits

head(acl)

# Create a subset of the data for artists age 30 or older
acl_30 <- acl[acl$Age >= 30, ]

# Create a table to show the marginal distribution for each variable
table(acl_30$Gender, acl_30$Genre)

table(acl_30$Gender)
table(acl_30$Genre)

# Calculate P(A):  the probability of each type of music (genre) being played.
prop.table( table(acl_30$Genre) )

# Calculate P(A|B):  the probability of each genre, given the artist’s gender.
prop.table( table(acl_30$Gender, acl_30$Genre), 1 )

#===================================================
#prop.table( table(acl_30$Gender, acl_30$Genre) )
#prop.table( table(acl_30$Gender, acl_30$Genre), 2 )

# Make a bar chart to better visualize how many male and female artists played in each genre.
barplot(table(acl_30$Gender, acl_30$Genre), legend = T, main = 'Music Preference by Gender', xlab = 'Kind of Music', beside = T)

