#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To...  Perform Logical Sub-setting in R
#   Video Number: #51
# Data File Used: 51_Data_File.csv
# 
# Create a simple matrix
x <- matrix(1:12, nrow = 4, byrow = TRUE)      # 4 rows, 3 columns
print(x)
#
# Check column 2 for values greater than 5
x[ , 2] > 5
#
# Check row 3 for values greater than or equal to 8
x[3 , ] >= 8
#
# Check columns 2 and 3for values greater than 5
x[ , 2:3] > 5
#
# Check rows 1 to 3 for values less than 5
x[1:3 , ] < 5
#
# Experiment with different matrices 
#
# Example: NBA data. Check for salaries greater than $15,000,000
#
salNBA <- read.csv(file = "51_Data_File.csv", 
                   header = TRUE, sep = ",",
                   check.names = FALSE,
                   row.names = 1)
print(salNBA)
#
salNBA[ , "2009"] > 15000000         # Check for salaries > 15m in 2009
#
salNBA["LeBronJames", ] > 15000000   # Check for salaries > 15 for LeBron James (all years)
#
