#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Embed an if Statement in a for Loop in R
#   Video Number: #46
#
# Create a vector with a mix if even and uneven numbers
x <- c(2, 5, 3, 9, 8, 11, 6)
#
count <- 0                # Initialize counter
#
for (val in x){
  if(val %% 2 == 0)       # Use modulo operator
    count = count + 1     # increment counter
}
print(paste("The amount of even numbers is:", count))              # Display result
#
