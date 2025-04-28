library(MASS)
library(lmtest)
library(car)

data <- read.csv("project_data.csv")

summary(data)

model_slr <- lm(log(gdp) ~ lit_rate, data = data)

summary(model_slr)

model_4v <- lm(log(gdp) ~ lit_rate + inflation_rate + urban_rate + export, data = data)

summary(model_4v)

model_6v <- lm(log(gdp) ~ lit_rate + inflation_rate + urban_rate + export + unemployment_rate + gov_spend, data = data)

summary(model_6v)

model_full <- lm(log(gdp) ~ lit_rate + inflation_rate + urban_rate + export + gov_spend + unemployment_rate + labor_rate + primary_rate, data = data)


print(bptest(model_4v))

vif_values <- vif(model_4v)

print(vif_values)


