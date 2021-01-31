#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Test the Law of Large Numbers in R
#   Video Number: #49
#
# Empirical Rule: 68.3% of values fall between -1 and +1
#
# Initialize a counter
counter <- 0
#
# Decide on number of random numbers to use
randNum <- 1000    # experiment with this number, eg 100, 1000, 10000
#
# for statement with embedded if
for(i in rnorm(randNum)){
  if (i > -1 & i < 1){
    counter <- counter + 1
  }
}
#
# Check results
answer <- (counter/randNum) * 100
print(answer)                     # How close to 68.3%?
