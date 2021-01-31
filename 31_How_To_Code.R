#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Draw a Labelled Box Plot in R
#  Video Number: #31
#
# Use the "iris" dataset
iris
head(iris)
#
boxplot(iris$Sepal.Length)                     # One variable at a time
boxplot(iris$Sepal.Length, horizontal = TRUE)  # Flip chart
boxplot(iris$Sepal.Length, 
        iris$Sepal.Width,
        iris$Petal.Length,
        iris$Petal.Width)                      # Plot all four variables
# 
# Plot by Species
boxplot(iris$Sepal.Length ~ Species, data = iris)
#
# Add titles and colour
boxplot(iris$Sepal.Length ~ Species, data = iris,
        main = "Iris Data",
        ylab = "Sepal length",
        col = "Red")
