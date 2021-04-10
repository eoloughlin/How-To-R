#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Edit a Data Frame in R
#    Video Number: #64
# Data Files Used: 64_Data_File.csv
#
# Load data file (Source: www.weather.com)
#
# Read in weather file
weather <- read.csv("64_Data_File.csv", header = TRUE, sep = ",")
print(weather)
#
edit(weather)              # Change a value
print(weather)             # But any changes made not saved
#
weather <- edit(weather)   # Edit and Update data frame
#
print(weather)             # Data frame now updated
#
