ques4Csv <- read.csv(file.choose(),header=TRUE, stringsAsFactors=FALSE)

y <- ques4Csv[,1]
x <- ques4Csv[,2]

#correlation between x and y
cor(x,y)

#least squares estimate of the slop and intercept
fit <- lm(y~x)
summary(fit)

#slope
summary(fit)$coefficients[2,1]
#intercept
summary(fit)$coefficients[1,1]

#anova table
anova(fit)

av4 <- anova(fit)
av4[1,5]

#summary(av3)

# test statistic
#summary(av3)[[1]][["F value"]]

# RR / P-Value
#summary(av3)[[1]][["Pr(>F)"]]


# Multiple Comparsion test
#TukeyHSD(av3, conf.level=0.90)
