#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Write a Function to convert Farenheit to Celcius in R
#    Video Number: #67
#
#   Formula to convert degrees Farenheit to degrees Celcius
#       C = 5/9 (F - 32)
#
fahr2Cel <- function(x){
  x <- (5/9) * (x - 32)
  return(x)
}
#
# Check using 98.6 degrees Farenheit
fahr2Cel(98.6)                     # Answer = 37
