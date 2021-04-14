#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Add a Column to a Data Frame in R
#    Video Number: #61
# Data Files Used: 61a_Data_File.csv, and 61b_Data_File.csv
#
# Load data file (Source: www.weather.com)
#
# Read in weather file
weather <- read.csv("61a_Data_File.csv", header = TRUE, sep = ",")
print(weather)
#
wind <- read.csv("61b_Data_File.csv", header = TRUE, sep = ",")
print(wind)
#
newWeather <- cbind(weather, wind$Wind.Speed)
print(newWeather)
#
# Rename "wind$Wind.Speed" to "Wind.Speed"
names(newWeather)[names(newWeather) == "wind$Wind.Speed"] <- "Wind.Speed"
print(newWeather)
#