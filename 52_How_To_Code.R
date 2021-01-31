#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To...  Transpose a Matrix in R
#   Video Number: #52
# Data File Used: 52_Data_File.csv
# 
# Create a simple matrix
x <- matrix(1:12, nrow = 4, byrow = TRUE)      # 4 rows, 3 columns
print(x)
#
# transpose above matrix (swap columns and rows)
t(x)
#
salNBA <- read.csv(file = "52_Data_File.csv", 
                   header = TRUE, sep = ",",
                   check.names = FALSE,
                   row.names = 1)
print(salNBA)
#
# Transpose NBA Data
t(salNBA)
#
'