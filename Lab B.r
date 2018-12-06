library(readxl)
data <- read_excel(file.choose(), sheet = 1)
kl = data$klasse
ei = data$einkm
# H0 kl and ei are independant
chisq.test(kl, ei)
# pvalue < 0.05 => the data is in favor of H1
# the values are dependant
plot(kl, ei)
