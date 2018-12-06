library(readxl)
data <- read_excel(file.choose(), sheet = 1)

X = as.numeric(data$Ch)
X = X[X<30] # kill the outlier

boxplot(X)

qqline(X, col='red')
hist(X, breaks = 35)

# H0: distribution is normal
shapiro.test(X)
# p value is less than 0.05
# the data is in favor of the alternative
