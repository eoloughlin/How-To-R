#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Make a Prediction using a Multiple Linear Regression Model in R
#    Video Number: #102
#
# Load Marketing Data Set from datarium package
library(datarium)
#
# View first six lines
head(marketing)
#
# Dependent variable: sales
# Independent variables: youtube, facebook, and newspaper
#
# Check for multicollinearity
cor(marketing, method = "pearson")   # none found
#
# Create model 
salesModel <- lm(sales ~ youtube + facebook + newspaper, data = marketing)
summary(salesModel)
#
# Model can be written as: 
# 
# sales = 3.526667 + 0.045765 * youtube + 0.188530 * facebook - 0.001037 * newspaper
#
# Manual Prediction
youtube <- 100
facebook <- 50
newspaper <- 75
#
sales <- 3.526667 + 0.045765 * youtube + 0.188530 * facebook - 0.001037 * newspaper
print(sales)
#
# What are predicted values for each of the 200 Sales figures?
predict(salesModel)
#
predict(salesModel, data.frame(youtube = 100, facebook = 50, newspaper = 75))
