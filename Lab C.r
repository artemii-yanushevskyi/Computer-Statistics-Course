library(readxl)
data <- read_excel(file.choose(), sheet = 1)

scatter.smooth(x=data$NW, y=data$R, main='R ~ NW')
scatter.smooth(x=data$ED, y=data$R, main='R ~ ED')

cor(data$NW, data$R, method='spearman')
cor(data$ED, data$R, method='spearman')
# there is correlation

# H0: R is independent of ED and NW
linear_model = lm(R ~ ED + NW, data = data)
summary(linear_model)
# neither coefficient is zero, R depends on ED and NW
# p-value is 0.005033 < 0.05 => alternative
# therefore R depends on NW and ED 