#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Read a File from the Internet in R
#  Video Number: #24
#     Data File: 24_Data_File.csv
#
# Read file from URL and store in a vector
priceData <- read.csv("https://raw.githubusercontent.com/eoloughlin/How-To-R/master/24_Data_File.csv")
#
# Check file read correctly
head(priceData)             # See first six lines
tail(priceData)             # See last six lines
print(priceData)            # See full file
names(priceData)            # Check variable names
