#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform an Independent Samples t Test (Equal Variance) in R
#    Video Number: #86
#  Data File Used: 86_Data_File.csv
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
bodyTemp <- read.csv(file = "86_Data_File.csv",
                       header = TRUE, sep = ",")
print(bodyTemp)
#
# Check for Normality (alpha)
shapiro.test(bodyTemp$Men)     # p > 0.05, data are normal
shapiro.test(bodyTemp$Women)   # p > 0.05, data are normal
#
# Check for Equality of Variance
var.test(bodyTemp$Men, bodyTemp$Women)   # p > 0.05 (Variances are Equal)
#
# Perform Student's t Test
t.test(bodyTemp$Men, bodyTemp$Women, alternative = "two.sided", 
       paired = FALSE, var.equal = TRUE)
#
#    Report:  t(124) = -2.03, p = 0.0446
#  Decision: Reject Null Hypothesis at alpha = 0.05
#   Meaning: Mean body temperatures of Men and Women are different
#