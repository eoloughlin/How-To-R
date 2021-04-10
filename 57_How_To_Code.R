#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To...  Plot a Matrix in R
#    Video Number: #57
# Data Files Used: 57_Data_File.csv
# 
#
# Read in NBA data and show Fields Goals data
fieldgoalsNBA <- read.table(file = "57_Data_File.csv",
                            head = TRUE, sep = ",", 
                            check.names = FALSE, 
                            row.names = 1)
print(fieldgoalsNBA)
#
t(fieldgoalsNBA)       # transpose Field Goals table (switch rows/cols)
#
#
matplot(fieldgoalsNBA)       # basic plot not much use
#
# Add symbols and colour
matplot(t(fieldgoalsNBA), type="b", pch=15:18, col=c(1:4,6))
#
# See video #58 to learn how to add a legend to this chart