#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Recognise Missing Data in a Dataset  in R
#    Video Number: #72
#  Data File Used: 72_Data_File.csv
#
salesData <- read.csv(file = "72_Data_File.csv", header = TRUE, sep = ",")
print(salesData)
#
# Calculate mean values of "Sales" and "Revenue" variables
mean(salesData$Sales)      # mean = 4967.3
mean(salesData$Revenue)    # returns "NA"
#
# "NA" value does not allow calculations
#
# View missing values by line
salesData[4, ]     # missing State code
salesData[5, ]     # missing Revenue value
#
# Use "is.na()" function to check for missing values in each variable
is.na(salesData$Date)         # All FALSE
is.na(salesData$State)        # All FALSE
is.na(salesData$State.Code)   # All FALSE (missing value not found)
is.na(salesData$Sales)        # All FALSE
is.na(salesData$Revenue)      # All One TRUE value
#

