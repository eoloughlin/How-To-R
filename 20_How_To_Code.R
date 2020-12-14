#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Specify Logical Data Types in R
#  Video Number: #20
#
# Create two simple numeric vectors
x <- 1
y <- 2
#
# Compare two vectors and store result in a new vector
z <- x > y
print(z)
#
# Check Data Type
class(z)             # logical
#
# Check if data type is logical
is.logical(z)        # True
