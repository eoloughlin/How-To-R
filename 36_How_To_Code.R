#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Add a Legend to a Histogram in R
#   Video Number: #36
# Data File Used: 36_Data_File.csv
#
# Read data file
height <- read.csv(file="36_Data_File.csv", 
                   head=TRUE, sep=",")       # 50 men, 75 women
head(height)
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
# Create legend labels
labels <- c("Females", "Males")
#
# Create and add legend
legend("topright", legend = labels,
       cex = 0.8,                    # legend box size
       inset = 0.01,                 # distance from edge
       pch = 15,                     # shape of legend symbols
       col = c(rgb(1, 0, 0, 0.5),    # colours
       rgb(0, 0, 1, 0.5)))
#