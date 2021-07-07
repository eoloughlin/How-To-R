#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Calculate Effect Size with Cohen's d in R
#    Video Number: #105
#  Data File Used: 105_Data_File.csv
#
#
##########################################################
#
#        Null Hypothesis: Population Means are equal 
#   Alternate Hypothesis: Population Means are not Equal
#
#        Alpha = 0.05
#
##########################################################
#
bodyTemp <- read.csv(file = "105_Data_File.csv",
                     header = TRUE, sep = ",")
print(bodyTemp)
#
# Visualize
hist(bodyTemp$Men, main = "Body Temperature Male v Female",
     xlab = "Temperature")
hist(bodyTemp$Women, col = "Red", add = TRUE)
#
# Perform Student's t Test
t.test(bodyTemp$Men, bodyTemp$Women, alternative = "two.sided", 
       paired = FALSE, var.equal = TRUE)
#
#    Report:  t(122) = -2.4331, p = 0.01642
#  Decision: Reject Null Hypothesis at alpha = 0.05
#   Meaning: Mean body temperatures of Men and Women are different
#
library(effsize)
#
cohen.d(bodyTemp$Men, bodyTemp$Women)
##