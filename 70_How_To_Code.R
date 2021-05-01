#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Create a Dataframe using a Function in R
#    Video Number: #70
#
mtcars   # Dataset used in this video
#
#  Create a function to calculate mean, median, variance, 
#  Minimum, and Maximun of the "disp" variable in "mtcars".
#
basicStats <- function(temp){
  titles <- c("Mean", "Median", "Variance", "Minimum", "Maximum")
  newDataFrame <- data.frame (1:5, row.names = titles)  
  names(newDataFrame)[1] <- "Basic Statistics"
  newDataFrame[1] <- c(mean(temp), median(temp), var(temp), min(temp), max(temp))
  newDataFrame
}
#
# Test function
basicStats(mtcars$disp)     # Basic stats for mtcars displacement (disp)
basicStats(mtcars$hp)       # Basic stats for mtcars horse-power (hp)
````