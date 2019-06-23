str(acl)

acl$Recent[acl$Year < 2012] <- 0 
acl$Recent[acl$Year >= 2012] <- 1

summary(acl)
recent_tab = table(acl$Recent, acl$Gender)
recent_tab
summary(recent_tab)


# Generate expected counts
chisq.test(recent_tab, correct=FALSE)$expected

# Run test of independence
chisq.test(recent_tab, correct=FALSE)
