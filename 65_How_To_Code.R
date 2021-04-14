#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Create a Data Frame from Vectors in R
#    Video Number: #67
#
# Create five separate vectors
Name <- c("Ali", "Lilly", "Mark", "Rafael", "Shanu", "Lucas", "Claudia")
Age <- c(25, 31, 23, 52, 76, 49, 26)
Height <- c(177, 163, 190, 179, 163, 183, 164)
Weight <- c(57, 69, 83, 75, 70, 83, 53)
Gender <- c("F", "F", "M", "M", "F", "M", "F")
#
# Combine five vectors into one data frame
studentData <- data.frame(row.names = Name, Age, Height, Weight, Gender)
print(studentData)
#
# Make deliberate error
Age <- c(25, 31, 23, 52, 76, 49)   # omit one value from "Age" vactor
#
# Recreate Data frame - an error is generated
studentData <- data.frame(row.names = Name, Age, Height, Weight, Gender)
#
