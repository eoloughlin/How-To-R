# Date
# Author
# Version
#
basicStats <- function(temp){
  titles <- c("Mean", "Median", "Variance", "Min", "Max")
  newDataFrame <- data.frame(1:5, row.names = titles)
  names(newDataFrame)[1] <- "Basic Statistics"
  newDataFrame[1] <- c(mean(temp), median(temp), var(temp), 
                       min(temp), max(temp))
  newDataFrame
}