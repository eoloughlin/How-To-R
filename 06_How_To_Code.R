#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Compute Basic Statistics in R
#  Video Number: #06
#
# Read in Sample Data
oil <- c(50, 46, 54, 55, 55, 52, 53, 51, 47, 49, 51, 55)
gold <- c(1267, 1238, 1157, 1192, 1234, 1231, 
          1267, 1246, 1260, 1237,1283, 1314)
#
# Calculate the Mean, Median, Standard Deviation, 
# Variance, and Correlation Coefficient of each vector
#
mean (oil)
median (oil) 
sd (oil)
var (oil)
cor (oil, gold)   # Default is Pearson's Correlation Coefficient
#
mean (gold)
median (gold)
sd (gold)
var (gold)
cor (gold, oil)   
