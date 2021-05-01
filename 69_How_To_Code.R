#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Create a Matrix using a Function in R
#    Video Number: #69
#
mtcars   # Dataset used in this video
#
#  Create a function to calculate Mean, Median, Variance, 
#  Minimum, and Maximum of the "disp" variable in "mtcars".
#
basicStats <- function(temp){
  newMatrix <- matrix (1:5, nrow = 1)
  colnames(newMatrix) <- c("Mean", "Median", "Variance", "Minimum", "Maximum")
  rownames(newMatrix) <- "Basic Statistics"
  newMatrix[1, ] <- c(mean(temp), median(temp), var(temp), min(temp), max(temp))
  newMatrix
}
#
# Test function
basicStats(mtcars$disp)        # Basic stats for mtcars displacement (disp)
basicStats(mtcars$hp)          # Basic stats for mtcars horse-power (hp)
#
# Try out on other datasets
basicStats(PlantGrowth$weight) # Basic stats for PlantGrowth Weight
#