#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Select Random Samples in R
#    Video Number: #83
#
data <- 1:100
print(data)
#
# Sampling without replacement
sample(data, size = 10)
#
# Sampling with replacement
sample(data, size = 10, replace = TRUE)
#
# Pick a prize winner!
sample(c("Eugene", "Ali", "Joe", "Kim", "Shanu", 
         "Bina", "Maria", "Ling", "Musa", "Adriana"), 
         size = 1)
#