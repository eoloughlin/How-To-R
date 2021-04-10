#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Add a Row to a Data Frame in R
#    Video Number: #60
#  Data File Used: 60_Data_File.csv
#
# Load data file (Source: www.weather.com)
#
weather <- read.csv("60_Data_File.csv", header = TRUE, sep = ",")
print(weather)
#
# Add data for next day:
#               Date = 11-Apr-2021
#   High temperature = 8
#    Low Temperature = 2
#         Conditions = Rain
#
# Creat a data frame for new date (one row)
newRow <- data.frame(Date = "11-Apr-2021", 
                     High.Temp = 8, 
                     Low.Temp = 2, 
                     Conditions = "Rain")
#
# Bind "newRow" data frame to "weather" data frame
weather <- rbind(weather, newRow)
print(weather)
#
# Check new line
weather[11, ]
