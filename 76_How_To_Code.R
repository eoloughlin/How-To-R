#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Replace Missing Values with Median Imputation Method in R
#    Video Number: #76
#  Data File Used: 76_Data_File.csv
#
salesData <- read.csv(file = "76_Data_File.csv", header = TRUE, sep = ",",
                      na.strings = c(""))
print(salesData)
#
# Show all records with missing values
salesData[!complete.cases(salesData), ]   # Two missing values
#
# Attempt to calculate median of Revenue variable
median(salesData$Revenue)    # NA returned
#
# Exlude missing values with na.rm parameter and assign to a vector
medRev <- median(salesData$Revenue, na.rm = TRUE)
print(medRev)   # median = 21000
#
print(salesData)    # NA value still not present in dataframe
#
# Assign median value (medRev) to missing value in Revenue variable only
salesData[is.na(salesData$Revenue), "Revenue"] <- medRev
print(salesData)    # NA replaced on line 5 by median value
#