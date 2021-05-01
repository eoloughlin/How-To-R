#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Save a Function to a File in R
#    Video Number: #71
#
mtcars   # Dataset used in this video
#
# The following code has been saved to a file called "basicStats.R"
# 
# basicStats <- function(temp){
# titles <- c("Mean", "Median", "Variance", "Minimum", "Maximum")
# newDataFrame <- data.frame (1:5, row.names = titles)  
# names(newDataFrame)[1] <- "Basic Statistics"
# newDataFrame[1] <- c(mean(temp), median(temp), var(temp), min(temp), max(temp))
# newDataFrame
# }
#
# Read R code from a file
source("basicStats.R")   # read File from Working Directory
#
# Test function
basicStats(mtcars$disp)     # Basic stats for mtcars displacement (disp)
basicStats(mtcars$hp)       # Basic stats for mtcars horse-power (hp)
