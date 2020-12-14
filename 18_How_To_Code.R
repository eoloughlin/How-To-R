#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Specify Integer Data Types in R
#  Video Number: #18
#
x <- 10
print(x)
#
# Check data type
class(x)                # numeric
#
# Check if data type is integer
is.integer(x)           # False
#
# Change numeric variable to an integer
x <- as.integer(x)
#
# Check data type again
class(x)                # integer
#
# Check if data type is integer
is.integer(x)           # True
