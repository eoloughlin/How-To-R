#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Create  Subsets in R
#  Video Number: #29
#
# Display the Iris data set
iris        # There are three species
#
# Create subset of Iris setosa species only
setosaIris <- subset(iris, Species == "setosa")
setosaIris
nrow(setosaIris)
#
# Create subset of Iris versicolor species only
versicolorIris <- subset(iris, Species == "versicolor")
versicolorIris
nrow(versicolorIris)
#
# Create subset of Iris virginica species only
virginicaIris <- subset(iris, Species == "virginica")
virginicaIris
nrow(virginicaIris)
#
# Perform calculation on a subset only
mean(setosaIris$Sepal.Length)
mean(versicolorIris$Sepal.Length)
mean(virginicaIris$Sepal.Length)
