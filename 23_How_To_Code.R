#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Save Output to a File in R
#  Video Number: #23
#
# Create two vectors
data1 <- c(50, 46, 54, 55, 55, 52, 53, 51, 47, 49, 51, 55)
data2 <- c(54, 51, 53, 49, 59, 54, 60, 56, 53, 54, 49, 61)
#
sumData <- data1 + data2  # Create new combined vector
print(sumData)
#
# Write output to a file
write.csv(sumData, file = "000sum.csv", row.names = FALSE)
read.csv("000sum.csv")
#
# What happens if row.names set to TRUE
write.csv(sumData, file = "000sum.csv", row.names = TRUE)
read.csv("000sum.csv")
