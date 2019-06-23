# Import the dataset
acl <- AustinCityLimits

head(acl)

table(acl$Facebook.100k)
table(acl$Age.Group)

table(acl$Facebook.100k, acl$Age.Group)

# For each age group, fill in the proportion of artists who have 100,000 or more likes on Facebook.
prop.table(table(acl$Facebook.100k, acl$Age.Group), 2)
