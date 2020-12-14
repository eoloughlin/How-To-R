#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Specify Numeric Data Types in R
#  Video Number: #17
#
x <- 10.5               # Decimal value
print(x)
#
# Check Data Type
class(x)
#
# Check if data type is numeric
is.numeric(x)
#
# Check natural numbers
y <- 10                 # No decimal
is.numeric(y)           # also numeric
