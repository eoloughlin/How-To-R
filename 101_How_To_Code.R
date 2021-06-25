#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Create a Multiple Linear Regression Model in R
#    Video Number: #101
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
# Create model using all three independent variables
salesModel <- lm(sales ~ youtube + facebook + newspaper, data = marketing)
summary(salesModel)
#
# Create model leaving out "newspaper" independent variable
salesModel <- lm(sales ~ youtube + facebook, data = marketing)
summary(salesModel)
#
# Model can be written as: 
# 
# sales = 3.5 + 0.045 * youtube + 0.187 * facebook
#