#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Calculate the Coefficient of Determination for Multiple Linear Regression in R
#    Video Number: #103
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
# Coefficient of Determination = 0.8  972
#
# Almost 90% of the variation in the dependent 
# variable is explained by our model.
