#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Plot a Simple Matrix in R
#   Video Number: #42
#
head(iris)
#
# Scatter plot (B&W) of all Iris data
plot(iris)
#
# Remove "Species" variable
plot(iris[1:4])
#
# Add labels and colour
plot(iris[1:4], 
     main = "Edgar Anderson's Iris Data", 
     pch = 21, 
     bg = c("red", "green3", "blue")[unclass(iris$Species)])
#
# Scatter Plot using pairs() function
pairs(iris[1:4], 
      main = "Edgar Anderson's Iris Data", 
      pch = 21, 
      bg = c("red", "green3", "blue")[unclass(iris$Species)])
#
