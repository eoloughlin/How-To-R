#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Write a while statement in R
#   Video Number: #48
#
# Initialize counter to 1
counter <- 1
#
# Display value of counter with while loop
while (counter < 6){
  print(counter)
  counter <- counter + 1
}
#
# Example: Ask user to enter a number - if it is not 99,
# keep asking for more numbers. Only stop when 99 is entered.
#
response <- as.integer(readline((prompt = "Enter a number: ")))
#
while(response != 99){
  response <- as.integer(readline((prompt = "Enter a number (type 99 to exit): ")))
}
#
# Experiment with different numbers and different outputs.


