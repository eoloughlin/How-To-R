#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Write a Function to convert Celcius to Farenheit in R
#    Video Number: #68
#
#   Formula to convert degrees Celcius to degrees Farenheit:
#       F = (9/5)C + 32
#
cel2Fahr <- function(x){
  x <- (9/5) * x + 32
  return(x)
}
#
# Check using 37 degrees Celcius
cel2Fahr(37)                     # Answer = 98.6
