#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Perform Coercion in R
#  Video Number: #22
#
x <- 1.234            # Create a numeric vector
#
class(x)              # Check data type
#
as.character(x)       # Coerce to a character
as.complex(x)         # Coerce to complex
as.numeric(x)         # Coerce to numeric
as.integer(x)         # Coerce to an integer
as.logical(x)         # Coerce to logical
#
# Store result in new vector
y <- as.integer(x)
#
# If a coercion works, you get what you expect
as.numeric("5.678")
as.integer("5.678")
as.character(5.678)
#
# When coercion does not work, you get "NA"
as.numeric("Hello")
#
# Mixed vectors
y <- c(1, 2, 3, 4, 5)  # Create simple numeric vector
print(y)
sum(y)
#
z <- c(y, "Hello")     # Combine simple vector with text
print(z)
sum(z)
