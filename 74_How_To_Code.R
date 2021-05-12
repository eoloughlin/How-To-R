#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Remove records with missing data in R
#    Video Number: #74
#  Data File Used: 74_Data_File.csv
#
salesData <- read.csv(file = "74_Data_File.csv", header = TRUE, sep = ",",
                      na.strings = c(""))
print(salesData)
#
complete.cases(salesData)    # Returns FALSE for line 4 and 5
!complete.cases(salesData)   # Returns TRUE for line 4
#
salesData[complete.cases(salesData), ]    # Show all records with no missing values
salesData[!complete.cases(salesData), ]   # Show all records with missing values
#
# Now re-set salesData dataframe to have rows without missing values 
salesData <- salesData[complete.cases(salesData), ]
print(salesData)
 