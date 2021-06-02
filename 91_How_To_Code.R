#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform a Chi-square (One Factor) Test in R
#    Video Number: #91
#
#####################################################################
#
#        Null Hypothesis: There is no difference between Observed and Expected values 
#   Alternate Hypothesis: There is a difference between Observed and Expected values
#
#        Alpha = 0.05
#
#####################################################################
#
# Road Fatalities Data (Source: Irish Road Safety Authority, www.rsa.ie)
#
observed <- c(12, 16, 10, 11, 10, 12, 18)
expected <- c(1/7, 1/7, 1/7, 1/7, 1/7, 1/7, 1/7)
#
chisq.test(observed, p = expected)
#
#     Report: Chi (6) = 4.517, p = 0.607
#   Decision: Fail to reject Null Hypothesis
# Conclusion: There is no difference between Observed and Expected values
#