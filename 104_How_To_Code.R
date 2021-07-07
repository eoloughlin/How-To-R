#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform Logarithmic Regression in R
#    Video Number: #104
#
# Read and display Tree Growth Data
treeGrowth <- read.csv(file = "104_Data_File.csv", 
                       header = TRUE, sep = ",")
print(treeGrowth)
#
# Visualize 
plot(treeGrowth, main = "Tree Growth by Year",
     xlab = "Age of Trees (Years)",
     ylab = "Height (Metres)",
     type = "b")
#
# Logarithmic Model: y = a + b * Log (x)
#
# Create the model
treeModel <- lm(treeGrowth$Height ~ log(treeGrowth$Age))
summary(treeModel)
#
# Fitted model is: y = 1.86051 + 1.86058 * ln(x)
#