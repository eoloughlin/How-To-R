#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Predict using a Linear Regression Model in R
#    Video Number: #81
#  Data File Used: 81_Data_File.csv
#
salesData <- read.csv(file = "81_Data_File.csv", header = TRUE, sep = ",")
print(salesData)
#
# Check correlation coefficient
cor(salesData$Sales, salesData$Revenue, method = "pearson")
#
# Visualise
plot(salesData$Sales, salesData$Revenue,
     main = "Sales vs Revenue",
     xlab = "Number of Sales", ylab = "Revenue ($)")
#
#   Use lm() function to perform linear regression
#   Format: lm(dependent variable ~ independent variable, data = dataset)
#
salesModel <- lm(Revenue ~ Sales, data = salesData)
salesModel    
# 
# Linear model:  y = 5478.75 + (5.75 * x)
#
# What are predicted values for each of the 10 Sales figures?
predict(salesModel)
#
# Predict Revenue based on Sales figure of 5000
predict(salesModel, data.frame(Sales = 5000))
#
# What are predcicted Revenues for Sales of 3000, 5000, and 7000
rangeRev <- data.frame(Sales <- c(3000, 5000, 7000))
predict(salesModel, rangeRev)
#
