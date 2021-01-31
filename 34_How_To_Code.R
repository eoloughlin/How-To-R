#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Add a Curve to a Histogram in R
#   Video Number: #34
# Data File Used: 34_Data_File.csv
#
# Data source: Sokal & Hunter (1955)
#
# Read in data file
lengthWings <- read.csv(file = "34_Data_File.csv", 
                        header = TRUE,
                        sep = ",")
#
# Draw histogram with 20 bins
hist(lengthWings$Length, main = "Housefly Wing Lengths",
     xlab = "Wing lengths",
     col = "Pink", 20)
#
# Amend plot code
hist(lengthWings$Length, main = "Housefly Wing Lengths",
     xlab = "Wing lengths",
     col = "Pink", 20,
     prob = TRUE)
#
# Plot curve

lines(density(lengthWings$Length))
