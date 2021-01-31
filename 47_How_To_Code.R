#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Create Maths Tables in R
#   Video Number: #47
#
# Set "num" to value to create maths tables
num <- 5
#
# Sample output: "5 x 2 = 10"
#
# for statement
for (i in 1:12){
  print(paste(num, "x", i, "=", num * i))
}
#
# Experiment with different values for "num"
#
# Experiment with +, -, and / operators to create
# add, subtract, divide tables