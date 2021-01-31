#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Reference Data in a Matrix in R
#   Video Number: #50
# 
# Create a simple matrix
x <- matrix(1:12, nrow = 4, byrow = TRUE)      # 4 rows, 3 columns
print(x)
#
# Reference every point of the matrix
#
# Rows
x[1, ]            # 1st row only
x[3, ]            # 3rd row only
x[5, ]            # Does not exist -> error
#
# Columns
x[ , 1]           # 1st column only
x[ , 3]           # 3rd column only
x[ , 4]           # Does not exist -> error
#
# Select multiple rows
x[c(1, 3), ]      # Rows 1 and 3 only
#
# Select multiple columns
x[, c(1, 3)]      # Rows 1 and 3 only
#
# Select individual cells
x[3, 2]           # Row 3 and column 2
x[4, 3]           # Row 4 and column 3
x[5, 5]           # Does not exist -> error
#

