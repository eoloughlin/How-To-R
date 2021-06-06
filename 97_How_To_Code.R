#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform a Kruskal-Wallis Test in R
#    Video Number: #97
# Data File Used: 97_Data_File.csv
#
#####################################################################
#
#       Null Hypothesis: The mean ranks of the groups are the same 
#  Alternate Hypothesis: The mean ranks of the groups are not the same
#
#    Alpha = 0.05
#
#####################################################################
#
sprayData <- read.csv(file = "97_Data_File.csv", header = TRUE, sep = ",")
print(sprayData)
#
# Check for Normality
shapiro.test(sprayData$Type.A)
shapiro.test(sprayData$Type.B)
shapiro.test(sprayData$Type.C)
shapiro.test(sprayData$Type.D)
shapiro.test(sprayData$Type.E)
shapiro.test(sprayData$Type.F)
#
# Visualise
boxplot(sprayData)``
#
# run K-W test
#
kwTest <- kruskal.test(sprayData)  
kwTest      # should report Chi-Square value of "54.691" and tiny p value
#
#     Report: H = 54.691, p < 0.001
#   Decision: Reject Null Hypothesis
# Conclusion: There is a difference in mean ranks between at least two groups
#
