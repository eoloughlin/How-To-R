#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform a Dependent Samples t Test in R
#    Video Number: #88
#  Data File Used: 88_Data_File.csv
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
testResults <- read.csv(file = "88_Data_File.csv",
                        header = TRUE, sep = ",")
print(testResults)
#
# Perform Student's t Test
t.test(testResults$Pre.Test, testResults$Post.Test, 
       alternative = "two.sided", paired = TRUE)
#
#    Report:  t(29) = -2.943, p = 0.006
#  Decision: Reject Null Hypothesis at alpha = 0.05
#   Meaning: There is a difference between test results
#