#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Display Several Figures on one page in R
#   Video Number: #40
#
iris  # Edgar Anderson's Iris Data         
head(iris)
#
par(mfrow = c(2, 2))
#
# Plot four separate histograms
hist(iris$Sepal.Length,
     main = "Edgar Anderson's Iris Data",
     xlab = "Sepal Length (mm)",
     col = "blue")
hist(iris$Sepal.Width,
     main = "Edgar Anderson's Iris Data",
     xlab = "Sepal Width (mm)", col = "blue")
hist(iris$Petal.Length,
     main = "Edgar Anderson's Iris Data",
     xlab = "Petal Length (mm)", col = "blue")
hist(iris$Petal.Width,
     main = "Edgar Anderson's Iris Data",
     xlab = "Petal Length (mm)", col = "blue")
#
