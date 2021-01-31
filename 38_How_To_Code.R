#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Plot Multiple Data Sets on the Same Chart in R
#   Video Number: #38
# Data File Used: 38_Data_File.csv
# 
grades <- read.csv(file = "38_Data_File.csv", 
                      header = TRUE, sep = ",")
head(grades)
#
# Plot three separate charts
plot(grades$Student, grades$Prof.Grey, type = "l")
plot(grades$Student, grades$Prof.Green, type = "b")
plot(grades$Student, grades$Prof.Brown, type = "o")
#
# Plot data for Prof Grey 
plot(grades$Student, grades$Prof.Grey, 
     main = "Comparison of Grades",
     xlab = "Student",
     ylab = "Grades",
     type = "l",
     ylim = c(30, 100))
#
# Now add data for Prof Green
lines(grades$Student, grades$Prof.Green, 
      lty = "dashed")
#
# Now add data for Prof Brown
lines(grades$Student, grades$Prof.Brown, 
      lty = "dotted")
#
# Create legend labels
labels <- c("Prof Grey", "Prof Green", "Prof Brown")
#
# Create and add legend
legend("topright", legend = labels,
       cex = 0.6,                    # legend box size
       inset = 0.01,                 # distance from edge
       pch = NULL,                   # shape of legend symbols
       lty = c(1, 2, 3))             # line type in legend
#
