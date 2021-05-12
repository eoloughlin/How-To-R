#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Replace Missing Values with Factual Analysis Method in R
#    Video Number: #75
#  Data File Used: 75_Data_File.csv
#
salesData <- read.csv(file = "75_Data_File.csv", header = TRUE, sep = ",",
                      na.strings = c(""))
print(salesData)
#
# Show all records with missing values
salesData[!complete.cases(salesData), ]   # Two missing values
#
# Show Colorado missing values only
salesData[is.na(salesData$Code) & salesData$State == "Colorado",]
#
# Assign "CO" as Sate Code for missing value in Code variable
salesData[is.na(salesData$Code) & salesData$State == "Colorado", "Code"] <- "CO"
#
# Check if replacement worked
salesData[4, ]
#