#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Draw a Labelled Scatter Plot in R
#  Video Number: #30
#
# Use the "cars" dataset
cars
head(cars)
#
# Simple plot of "speed" vs "dist"
plot(cars)
#
# Add main heading
plot(cars, main = "Speed vs Stopping Distance")
#
# Add axis labels
plot(cars, main = "Speed vs Stopping Distance",
     xlab = "Speed (MPH)",
     ylab = "Stopping Distance (ft)")
#
# Change colour of data points
plot(cars, main = "Speed vs Stopping Distance",
     xlab = "Speed (MPH)",
     ylab = "Stopping Distance (ft)",
     col = "Blue")
#
# Change shape of data points
plot(cars, main = "Speed vs Stopping Distance",
     xlab = "Speed (MPH)",
     ylab = "Stopping Distance (ft)",
     col = "Blue",
     pch = 19)
