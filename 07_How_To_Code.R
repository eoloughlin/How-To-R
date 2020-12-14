#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Read a File in R
#  Video Number: #07
#     Data File: 07_Data_File.csv
# 
# Read the file 07_Data_File.csv
priceData <- read.csv(file = "07_Data_File.csv", header = TRUE, sep = ",")
#
# Check that data is being read correctly
head(priceData)  # Show first six rows
tail(priceData)  # Show last six rows
nrow(priceData)  # Count number of rows
#
# Display each variable
priceData$Oil 
priceData$Gold
#
# Can now use data, eg to calculate the mean prices
mean(priceData$Oil)
mean(priceData$Gold)
#
cor(priceData$Oil, priceData$Gold)
