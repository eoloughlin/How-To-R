#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Combine Two Data Frames in R
#    Video Number: #64
# Data Files Used: 64a_Data_File.csv, and 64b_Data_File.csv
#
# Load data files (Source: www.weather.com)
#
# Read in two weather file
MarchWeather <- read.csv("64a_Data_File.csv", header = TRUE, sep = ",")
print(MarchWeather)
AprilWeather <- read.csv("64b_Data_File.csv", header = TRUE, sep = ",")
print(AprilWeather)
#
rbind(MarchWeather, AprilWeather)    # Combines and displays new data frame
#
# Create a new data frame
newWeather <- rbind(MarchWeather, AprilWeather)
print(newWeather)
#