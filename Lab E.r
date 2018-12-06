library(readxl)
data <- read_excel(file.choose(), sheet = 1)
# y TOTALINC
# X AGE_HEAD, SLIV

linearmodel <- lm(TOTALINC ~  AGE_HEAD + SLIV, data[data$COD_OBL=='Vinn',])
summary(linearmodel)
print(linearmodel)
# Totalinc doesn't depend on anything
dataobl = data[data$COD_OBL == 'Vinn',]

scatter.smooth(dataobl$)

plot(linearmodel,2)
