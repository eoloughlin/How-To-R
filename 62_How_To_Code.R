#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Select Data Frame Columns by Position in R
#    Video Number: #62
#  Data File Used: 62_Data_File.csv
#
# Load data file (Source: www.weather.com)
#
weather <- read.csv("62_Data_File.csv", header = TRUE, sep = ",")
print(weather)
#
# Show column 2 only
weather[[2]]
#
# Note difference idf leave our on set of []
weather[2]
#
# Select more than one column
weather[c(2, 4)]
#
