#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To...  Change a value in a Matrix in R
#   Video Number: #55
# Data File Used: 55_Data_File.csv
# 
# Read in NBA salary data file with a zero value for LeBron James
salNBA <- read.csv(file = "55_Data_File.csv", 
                   header = TRUE, sep = ",",
                   check.names = FALSE,
                   row.names = 1)
print(salNBA)
#
# Need to add "20644400" value for 2014 for LeBron James
#
# Identify cell in matrix with zero value by number
salNBA[3, 7]
#
# change zero value to $20,644,400 (actual salary for 2014)
salNBA[3, 7] <- 20644400
#
# Check results
print(salNBA)
