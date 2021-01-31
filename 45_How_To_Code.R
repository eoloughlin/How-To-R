#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Write a simple for loop in R
#   Video Number: #45
#
# Simplest for statement
for (i in 1:10){
  print("Hello")
}
#
# Use for simple calculation
#
# initialize x
x <- 0
#
for (i in 1:10){
  x <- x + 1
  print(x)
}
#
# Add text to output
for (year in 2010:2020){
  print(paste("The year is:", year))
}
