#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Compare Vectors in R
#  Video Number: #11
#
#        Comparison      Operator
#   ---------------------------------
#           Equals          ==
#         Not equals        !=
#         Less than          <
#       Greater than         >
#    Less than or equal     <=
#   Greater than or equal   >=
#   ---------------------------------
#
# Create two simple vectors
x <- 5
y <- 10
#
# Compare x and y using operators
x == y     # FALSE
x != y     # TRUE
x < y      # TRUE
x > y      # FALSE
x <= y     # TRUE
x >= y     # FALSE
#
# Compare entire vectors at once
a <- c(10, 20, 30)
b <- c(10, 25, 30)
#
a == b     # FALSE
a != b     # TRUE
a < b      # TRUE
a > b      # FALSE
a <= b     # TRUE
a >= b     # FALSE
