#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Check for Multicollinearity in R
#    Video Number: #100
#
# Load Marketing Data Set from datarium package
library(datarium)
#
# View first six  lines
head(marketing)
#
# Dependent variable: sales
# Independent variables: youtube, facebook, and newspaper
#
# Look for high correlations between independent variables
cor(marketing, method = "pearson")
#


