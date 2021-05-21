#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform a Z Test in R
#    Video Number: #84
#  Data File Used: 84_Data_File.csv
#
##########################################################
#
#        Null Hypothesis: Population Mean >= 1,000 
#   Alternate Hypothesis: Population Mean < 1,000
#
#   Z Test Formula:       xbar - Population Mean
#                   -------------------------------------
#                   Standard Deviation * Square Root of n
#
##########################################################
#
wgtData <- read.csv(file = "84_Data_File.csv",
                       header = TRUE, sep = ",")
print(wgtData)
#

#   Assume Alpha value = 0.05
# 
zStat <- (mean(wgtData$Weight) - 1000) / (sd(wgtData$Weight) / sqrt(nrow(wgtData)))
print(zStat)      # z Statistic = -2.508974
#
pt(zStat, 13)     # p = 0.013 (Reject Null Hypothesis)

