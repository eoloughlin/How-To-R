#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Read Variables from a File in R
#  Video Number: #08
#     Data File: 08_Data_File.csv
# 
# Read the file 08_Data_File.csv
priceData <- read.csv(file = "08_Data_File.csv", header = TRUE, sep = ",")
#
# Check the data
head(priceData)  # Show first six rows
#
# Display each variable
priceData$Oil    # Show Oil data only
priceData$Gold   # Show Gold data only
#
# Can now use data, eg to calculate the mean prices
mean(priceData$Oil)
mean(priceData$Gold)
#
# Is there a correlation between the price of gold and oil?
cor(priceData$Oil, priceData$Gold)
