#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Draw a Labelled Histogram in R
#   Video Number: #33
# Data File Used: 33_Data_File.csv
#
# Data source: Sokal & Hunter (1955)
#
# Read in data file
lengthWings <- read.csv(file = "33_Data_File.csv", 
                        header = TRUE,
                        sep = ",")
print(lengthWings)
#
# Plot simple histogram
hist(lengthWings$Length)
#
# Add title, labels, and colour
hist(lengthWings$Length, main = "Housefly Wing Lengths",
     xlab = "Wing lengths",
     col = "Red")
#
# Change number of bins
hist(lengthWings$Length, main = "Housefly Wing Lengths",
     xlab = "Wing lengths",
     col = "Red",
     20)
