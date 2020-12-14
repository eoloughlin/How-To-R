#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Create a Sequence of Numbers in R
#  Video Number: #09
# 
# Simple sequence of 1 to 10
1:10  
#
# The seq function
seq(1, 10)                      # simple version
seq(from = 1, to = 10)          # same as above clearer syntax
seq(from = 1, to = 10, by = 2)  # every second number
seq(from = 0, to = 20, by = 5)
seq(from = 1, to = 2, length.out = 5)
#
# Store sequence in a vector
mySeq <- seq(from = 1, to = 100)
print(mySeq)
#
# Some useful sequences
seq(from = 1900, to = 1999)           # every year 20th century
seq(from = 1900, to = 1999, by = 10)  # Each decade
seq(from = 0, to = 100)               # Percent values
#
# Create a series of repeated values
rep(1, times = 5)    # Replicate a number
rep(1:10, 2)         # Replicate a sequence
rep(1:10, each = 2)  # Replicate elements by "each" number of times
#
# Repeat text
rep("Hello", 10)
