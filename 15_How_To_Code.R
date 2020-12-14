#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Get and Use Input from a User in R
#  Video Number: #15
#
# Ask user for their name
name <- readline(prompt = "Enter your name: ")
#
# Ask user for their age
age <- readline(prompt = "Enter your age: ")
#
# Convert age to an integer
age <- as.integer(age)
#
# Output a message to the user
print(paste("Hi", name, "next year you will be", 
            age + 1, "years old."))
