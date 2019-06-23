acl$Year[which(acl$Artist == 'Allen Toussaint')]
acl$Age[[which(acl$Artist == 'Allen Toussaint')]]
acl[which(acl$Artist == 'Allen Toussaint'), ]

str(acl)

## Question 1 (Goodness of Fit)
# Create a table of counts for Gender
gender_tab <-table(acl$Gender)
gender_tab
summary(gender_tab)


# Create vector of expected proportions
ExpGender <- c(.50, .50)

# Check expected counts assumption
chisq.test(gender_tab, p=ExpGender)$expected

# Run goodness of fit
chisq.test(gender_tab, p=ExpGender)


## # Create two-way table
gender_top10 <-table(acl$Gender, acl$BB.wk.top10)
summary(gender_top10)
gender_top10


# Generate expected counts
chisq.test(gender_top10, correct=FALSE)$expected

  # Run test of independence
chisq.test(gender_top10, correct=FALSE)
