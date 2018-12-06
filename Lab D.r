library(readxl)
data <- read_excel(file.choose(), sheet = 1)
library(gplots)

# Y - Weight, G - SS
plotmeans(Weight~SS, data=data)

res.aov <- aov(Weight~SS, data=data) # fisher test
summary(res.aov)
# PR(>F) < 0.05 => means are not equal
plot(res.aov, 2)
# doesn't look normal while it should
library(car)

leveneTest(data$Weight, as.factor(data$SS))
# variances are not equall too

# neither variances nor means are equal