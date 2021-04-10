#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Select Data Frame Columns by Name in R
#    Video Number: #61
#  Data File Used: 61_Data_File.csv
#
# Load data file (Source: www.weather.com)
#
# Read in weather file
weather <- read.csv("61_Data_File.csv", header = TRUE, sep = ",")
print(weather)
#
weather[ , 2]   # Columns can be refered to by number
#
# Check column names
names(weather)
#
# Display "Conditions" Column
weather["Conditions"]
#
# Display "High Temp" and "Low Temp" only
weather[c("High.Temp", "Low.Temp")]
