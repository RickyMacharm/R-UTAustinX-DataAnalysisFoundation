post <- PostSurvey

table(post$classification)

# Make a vector of happiness scores for each sample
underclass_happy <- post$happy[post$classification=='Freshman'|post$classification=='Sophomore']
upperclass_happy <- post$happy[post$classification=='Junior'|post$classification=='Senior']

# Check the normality assumption
hist(underclass_happy, xlab='Underclassman Happiness', main='Percent of Time Happy')
hist(upperclass_happy, xlab='Upperclassman Happiness', main='Percent of Time Happy')

# Run independent t-test
t.test(underclass_happy, upperclass_happy)


# Make a vector of difference scores
post$diff_happy <- post$happy - post$post_happy
str(post$diff_happy)

# Check the normality assumption
hist(post$diff_happy, xlab= 'Difference in Happiness over the Semester', main = 'Happy-Post Happy')

# Run dependent t-test
t.test(post$happy, post$post_happy, paired=T)