#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Plot a Simple Pie Chart in R
#   Video Number: #41
#
# Set grades and Names
grades <- c(5, 22, 18, 8, 1)                 # total = 54
names(grades) <- c("A", "B", "C", "D", "F")
#
pie(grades) # default colours
#
# Add title and colours
pie(grades, main = "Student Grades",
    col = c("Red", "Blue", "Green", "Pink", "Cyan"))
# 
# 3D version with "pizza" slices
library(plotrix)
#
# Plot the chart
pie3D(grades,labels = names(grades),
      main = "Pie Chart of Grades",
      explode = 0.1)
#