#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Calculate Correlation Coefficients in R
#    Video Number: #79
#  Data File Used: 79_Data_File.csv
#
salesData <- read.csv(file = "79_Data_File.csv", header = TRUE, sep = ",")
print(salesData)
#
# Check scatter plot of "Sales" vs "Revenue"
plot(salesData$Sales, salesData$Revenue,
     main = "Sales vs Revenue",
     xlab = "Number of Sales", ylab = "Revenue ($)")
#
cor(salesData$Sales, salesData$Revenue)                       # Default
cor(salesData$Sales, salesData$Revenue, method = "pearson")   # Same as Default
#
# Other correlation coefficients
cor(salesData$Sales, salesData$Revenue, method = "kendall")   # Kendall's tau
cor(salesData$Sales, salesData$Revenue, method = "spearman")  # Spearman Rank
#
