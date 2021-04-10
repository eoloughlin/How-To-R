#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To...  Perform Matrix Operations in R
#    Video Number: #56
# Data Files Used: 56a_Data_File.csv, and 56b_Data_File.csv
#   
# Read in NBA data and show Games Played data
gamesNBA <- read.table(file = "56a_Data_File.csv",
                       head = TRUE, sep = ",", 
                       check.names = FALSE, 
                       row.names = 1)
print(gamesNBA)
#
# Read in NBA data and show Fields Goals data
fieldgoalsNBA <- read.table(file = "56b_Data_File.csv",
                            head = TRUE, sep = ",", 
                            check.names = FALSE, 
                            row.names = 1)
print(fieldgoalsNBA)
#
# How many Field Goals does each player score per games played?
fieldgoalsNBA / gamesNBA
#
# Round output for easier viewing
round(fieldgoalsNBA / gamesNBA, 1)
#
