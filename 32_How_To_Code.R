#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Draw a Labelled Bar Plot in R
#  Video Number: #32
#
# Create a vector with average monthly temperature for Dublin
temp <- c(5, 5, 7, 8, 11, 14, 16, 16, 14, 11, 8, 7)
#
# Create a bar plot of temperature data
barplot(temp)
#
# Add main and axis titles
barplot(temp, main = "Average Monthly Temperatures (Dublin)",
        xlab = "Month",
        ylab = "Celcius")
#
# Add month names for each bar
barplot(temp, main = "Average Monthly Temperatures (Dublin)",
        xlab = "Month",
        ylab = "Celcius",
        names.arg = c("Jan", "Feb", "Mar", "Apr", 
                      "May", "Jun", "Jul", "Aug", 
                      "Sep", "Oct", "Nov", "Dec"))
#
# Add colour
barplot(temp, main = "Average Monthly Temperatures (Dublin)",
        xlab = "Month",
        ylab = "Celcius",
        col = "Red",
        names.arg = c("Jan", "Feb", "Mar", "Apr", 
                      "May", "Jun", "Jul", "Aug", 
                      "Sep", "Oct", "Nov", "Dec"))
#
