film <- Film
summary(Film)

# Calculate avg film budget of each group
aggregate(Days~Studio,film,mean)

# Calculate sd of film budget within each group
aggregate(Days~Studio,film,sd)

# Visualize the group means and variability
boxplot(Days~Studio,data = film, main= "Film Studios by Days",
        ylab= "Days", xlab= "Studios")

# Run ANOVA
modelbud <- aov(Days~Studio,data = film)
summary(modelbud)

# Run post-hoc test if F statistic is significant
TukeyHSD(modelbud)

# Calculate avg IMDB score of each group
aggregate(Pct.Dom~Studio,film,mean)

#Calculate sd of IMDB scores within each group
aggregate(Pct.Dom~Studio, film, sd)

# Visualize the group means and variability
boxplot(film$IMDB~film$Rating, main= "IMDB Scores by Rating",
        ylab= "IMDB Score", xlab= "MPAA Rating")

# Run ANOVA
modelscore <- aov(Pct.Dom ~ Studio, data = film)
summary(modelscore)

# Run post-hod text if F statistic is significant
TukeyHSD(modelscore)
