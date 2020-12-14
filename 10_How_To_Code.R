#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Install and Load a Library in R
#  Video Number: #10
#
# Some Basic Statistics (mean and skewness)
oil <- c(50, 46, 54, 55, 55, 52, 53, 51, 47, 49, 51, 55)
mean(oil)         # works
skewness(oil)     # does not work
#
library()   # Check packages already installed
#
# Install 'moments' package
install.packages("moments")
#
# Load 'moments' package
library(moments)
#
# Recalculate skewness
skewness(oil)     # works
