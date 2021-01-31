#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Draw  Q-Q Plot in R
#   Video Number: #39
# Data File Used: 39_Data_File.csv
# 
# Data source: Sokal & Hunter (1955)
#
# Read data file
lengthWings <- read.csv(file="39_Data_File.csv", 
                   head=TRUE, sep=",")
head(lengthWings)
#
# Draw Q-Q Plot for Normal Data
qqnorm(lengthWings$Length)
qqline(lengthWings$Length)    # add line to chart
#
# Draw Q-Q Plot for Non-normal Data
mtcars
qqnorm(mtcars$disp)
qqline(mtcars$disp)    # add line to chartw