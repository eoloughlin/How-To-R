#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform an Independent Samples t Test (Unequal Variance) in R
#    Video Number: #87
#  Data File Used: 87_Data_File.csv
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
testResults <- read.csv(file = "87_Data_File.csv",
                        header = TRUE, sep = ",")
print(testResults)
#
# Check for normality
shapiro.test(testResults$Online)
shapiro.test(testResults$Classroom)
#
# Check for Equality of Variance
var.test(testResults$Online, testResults$Classroom)   # p < 0.05 (Variances are not equal)
#
# Perform Student's t Test
t.test(testResults$Online, testResults$Classroom, 
       alternative = "two.sided", paired = FALSE, var.equal = FALSE)
#
#    Report:  t(51) = -1.675, p = 0.100
#  Decision: Fail to reject Null Hypothesis at alpha = 0.05
#   Meaning: There is no difference between test results
#