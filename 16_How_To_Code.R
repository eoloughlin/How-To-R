#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Calculate Body Mass Index in R
#  Video Number: #16
#
# Formula: BMI = Weight (kg) / Height (m) x Height (m)
#
# Ask user for their weight
wgt <- readline(prompt = "Enter your weight (kg): ")
#
# Ask user for their height
hgt <- readline(prompt = "Enter your height (m): ")
#
# Convert wgt and hgt to numeric values
wgt <- as.numeric(wgt)
hgt <- as.numeric(hgt)
#
# Use BMI formula
bmi <- wgt / (hgt * hgt)
bmi <- wgt / (hgt ^ 2)      # Alternative
#
# Output result to the user
print(paste("Your Body Mass Index is:", bmi))

      