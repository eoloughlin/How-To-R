#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Replace Missing Values with Mean Imputation Method in R
#    Video Number: #77
#  Data File Used: 77_Data_File.csv
#
salesData <- read.csv(file = "77_Data_File.csv", header = TRUE, sep = ",",
                      na.strings = c(""))
print(salesData)
#
# Show all records with missing values
salesData[!complete.cases(salesData), ]   # Two missing values
#
# Attempt to calculate mean of Revenue variable
mean(salesData$Revenue)    # NA returned
#
# Exlude missing values with na.rm parameter and assign to a vector
meanRev <- mean(salesData$Revenue, na.rm = TRUE)
print(meanRev)      # mean = 32209.33
#
print(salesData)    # NA value still not present in dataframe
#
# Assign median value (medRev) to missing value in Revenue variable only
salesData[is.na(salesData$Revenue), "Revenue"] <- meanRev
print(salesData)    # NA replaced on line 5 by median value
#