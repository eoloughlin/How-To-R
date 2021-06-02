#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform a Chi-square Test (Two Factors) for Independence in R
#    Video Number: #92
#
#####################################################################
#
#        Null Hypothesis: Gender and Voting Preferences are Independent
#   Alternate Hypothesis: Gender and Voting Preferences are not Independent
#
#        Alpha = 0.05
#
#####################################################################
#
pollingData <- as.table(rbind(c(190, 155, 55), c(240, 290, 70)))
dimnames(pollingData) <- list(gender = c("Male", "Female"), 
                              treatment = c("Left Wing", "Centre", "Right Wing"))
pollingChi <- chisq.test(pollingData)
print(pollingChi)
#
# Check Observed and Expected values
pollingChi$observed                      # observed counts
pollingChi$expected                      # expected counts

#     Report: Chi (2) = 8.926, p = 0.012
#   Decision: Reject Null Hypothesis
# Conclusion: There is a relationship between voting preference and gender
#   Decision: Fail to reject Null Hypothesis
# Conclusion: There is no difference between Observed and Expected values
#