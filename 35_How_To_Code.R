#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Draw Overlapping Histograms in R
#   Video Number: #35
# Data File Used: 35_Data_File.csv
#
# Read data file
height <- read.csv(file="35_Data_File.csv", 
                   head=TRUE, sep=",")       # 50 men, 75 women
head(height)#
#
# Show histograms of two variables separately
hist(height$Male)
hist(height$Female)
#
# Plot histogram of female heights
hist(height$Female, main = "Height Histogram",      # Female histogram
     col = rgb(1, 0, 0, 0.5), 
     xlab = "Heights (cm)", 
     xlim = c(150,200),
     ylim = c(0,30))
#
#  Add male histogram
hist(height$Male, col = rgb(0, 0, 1, 0.5), add = TRUE)
#
