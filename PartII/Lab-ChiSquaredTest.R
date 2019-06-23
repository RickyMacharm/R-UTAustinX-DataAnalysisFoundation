str(acl)

## Question 1 (Goodness of Fit)
# Create a table of counts for Gender
genre_tab <-table(acl$Genre)
genre_tab
summary(genre_tab)


# Create vector of expected proportions
ExpGenre <- c(.25, .25, .25, .25)

# Check expected counts assumption
chisq.test(genre_tab, p=ExpGenre)$expected

# Run goodness of fit
chisq.test(genre_tab, p=ExpGenre)


## # Create two-way table
genre_twi <-table(acl$Genre, acl$Twitter.100k)
summary(genre_twi)
genre_twi


# Generate expected counts
chisq.test(genre_twi, correct=FALSE)$expected

# Run test of independence
chisq.test(genre_twi, correct=FALSE)
