#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Create a Linear Regression Model in R
#    Video Number: #80
#  Data File Used: 80_Data_File.csv
#    Diagram used: 80_Diagram.jpg
#
salesData <- read.csv(file = "80_Data_File.csv", header = TRUE, sep = ",")
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
