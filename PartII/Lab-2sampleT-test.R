post <- PostSurvey
str(post)
table(post$greek)
# Make a vector of sleep time on Sat in greek and not greek
greek_sleep_Sat <- post$sleep_Sat[post$greek == 'yes']
nogreek_sleep_Sat <- post$sleep_Sat[post$greek == 'no']

# Check the normality assumption
hist(greek_sleep_Sat, xlab='Greek', main = 'Sleep time on Sat')
hist(nogreek_sleep_Sat, xlab='Non-Greek', main =  'Sleep time on Sat')

# Run independent t-test
t.test(greek_sleep_Sat, nogreek_sleep_Sat, alternative = 'less')


# Make a vector of difference scores
post$diff_hw <- post$hw_hours_college - post$hw_hours_HS

# Check the normality assumption
hist(post$diff_hw, xlab= 'Difference in time on homework per week in college and high school', main = 'College-High school')

# Run dependent t-test
t.test(post$hw_hours_college, post$hw_hours_HS, paired=T)
