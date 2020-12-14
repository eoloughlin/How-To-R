#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Select Vector Elements by Number in R
#  Video Number: #12
#
# Create a Vector (Fibonacci sequence)
fibSeq <- c(0, 1, 1, 2, 3, 5, 8, 13, 21, 34)
print(fibSeq)
#
fibSeq[1]      # 1st number in sequence
fibSeq[7]      # 8 th number in sequence
#
fibSeq[5:8]    # show 5th to 8th numbers
fibSeq < 20    # show all numbers less than 20
fibSeq > 5     # show all numbers greater than 5
#
fibSeq [25]    # Try to show number that does not exist
