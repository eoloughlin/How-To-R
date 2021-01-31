#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Control Number of Decimal Places in R
#  Video Number: #26
#
# Control digits in print output
x <- 10
y <- 3
z <- x/y
#
print(z)                 # Default number of digits (7)
print(z, digits = 4)     # Set number of digits to 4
print(z, digits = 11)    # Set number of digits to 11
#
# Rounding
round(3.333333, digits = 2)   # Round a number to two digits
round(5.555555, digits = 3)   # Round a number to three digits
#
# 
signif(6.666666, digits = 4)  # Retain 4 digits only
