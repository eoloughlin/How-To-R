#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To...  Add a Legend to a Matrix Plot in R
#    Video Number: #58
# Data Files Used: 58_Data_File.csv
# 
#
# Read in NBA data and show Fields Goals data
fieldgoalsNBA <- read.table(file = "58_Data_File.csv",
                            head = TRUE, sep = ",", 
                            check.names = FALSE, 
                            row.names = 1)
print(fieldgoalsNBA)
#
t(fieldgoalsNBA)       # transpose Field Goals table (switch rows/cols)
#
# Plot matrix
matplot(t(fieldgoalsNBA), type="b", pch=15:18, col=c(1:4,6))
#
# Need to add player names to a vector for this next bit
playersNBA <- c("Kobe Bryant", "Joe Johnson", "LeBron James", "Carmelo Anthony",
                "Dwight Howard", "Chris Bosh", "Chris Paul", "Kevin Durant",
                "Derrick Rose", "Dwayne Wade")
#  
# Add a legend
legend("bottomleft", 
       inset = 0.01, 
       legend = playersNBA, 
       pch = 15:18, 
       col =c (1:4, 6), 
       horiz = FALSE, 
       cex = 0.5)
#