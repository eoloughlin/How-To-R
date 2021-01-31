#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Use an if statement to control output in R
#   Video Number: #44
#
# Use BMI calculation code from video #16
#
# Formula: BMI = Weight (kg) / Height (m) x Height (m)
#
# Ask user for their weight and height
wgt <- as.numeric(readline("Enter your weight in kilograms: "))
hgt <- as.numeric(readline("Enter your height in meters: "))
#
# Calculate BMI
bmi <- wgt / (hgt * hgt)
print(paste("Your BMI is:", bmi))   # check result
#
# Output result to the user
if(bmi < 18.5){
  print("You are underweight")
}else if(bmi < 25){
  print("You are normal weight")
}else if (bmi < 30){
  print("Your are overweight")
}else{
  print("You are obese")
}
