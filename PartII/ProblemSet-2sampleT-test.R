post <- PostSurvey
str(post)
table(post$greek)

# Make a vector of difference scores
post$diff_hw <- post$hw_hours_college - post$hw_hours_HS

# Create two vectors of those differences, one for nursing and biology
n_diff <- post$diff_hw[post$major == 'Nursing']
b_diff <- post$diff_hw[post$major == 'Biology']

# Check the normality assumption
hist(n_diff, xlab='Nursing', main = 'Time on HW in Coledge - HS')
hist(b_diff, xlab='Biology', main =  'Time on HW in Coledge - HS')

# Run independent t-test
t.test(n_diff, b_diff)
