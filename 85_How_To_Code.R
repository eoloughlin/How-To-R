#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Test for Equality of Variance in R
#    Video Number: #85
#  Data File Used: 85_Data_File.csv
#
##########################################################
#
#        Null Hypothesis: Sample Variances are Equal 
#   Alternate Hypothesis: Sample Variances are not Equal
#
#   F Test Formula:     Larger Sample variance
#                   F = -----------------------
#                       Smaller Sample Variance
#
#        Alpha = 0.05
#   F Critical = 1.525
#
##########################################################
#
bodyTemp <- read.csv(file = "85_Data_File.csv",
                       header = TRUE, sep = ",")
print(bodyTemp)
#
# Manual Calculation
F_Statistic <- var(bodyTemp$Men) / var(bodyTemp$Women, na.rm = TRUE)
print(F_Statistic)                       # F = 1.161743 (F Statistic < F Critical)
#
# Use var.test() function
var.test(bodyTemp$Men, bodyTemp$Women)   # F = 1.161743, p = 0.5579
#
# Fail to reject Null Hypothesis => Variances are Equal
#