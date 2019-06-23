film <- FilmData
summary(film)

#budget_category <-c()
film$budget_category[film$Budget < 100] <- 'low'
film$budget_category[film$Budget < 150 & film$Budget >= 100] <- 'medium'
film$budget_category[film$Budget >= 150] <- 'high'

table(film$budget_category)

# Calculate avg film budget of each group
aggregate(Pct.Dom ~ budget_category, film, mean)

# Calculate sd of film budget within each group
aggregate(Pct.Dom ~ budget_category, film, sd)

# Visualize the group means and variability
boxplot(Pct.Dom ~ budget_category, data = film)

# Run ANOVA
modelbud <- aov(Pct.Dom ~ budget_category, data = film)
summary(modelbud)


# Run post-hoc test if F statistic is significant
TukeyHSD(modelbud)
