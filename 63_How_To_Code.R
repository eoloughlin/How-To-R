#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Exclude Columns by Name in a Data Frame in R
#    Video Number: #65
# Data Files Used: 65_Data_File.csv
#
# Load data file (Source: www.weather.com)
#
# Read in weather file
weather <- read.csv("65_Data_File.csv", header = TRUE, sep = ",")
print(weather)
#
# Remove "Conditions" column from data frame
weather <- subset(weather, select = -Conditions)
#
# Check if "Conditions" column removed
print(weather)
