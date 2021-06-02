#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform a Wilcoxon Signed Rank Test in R
#    Video Number: #96
# Data File Used: 96_Data_File.csv
#
#####################################################################
#
#       Null Hypothesis: The median difference between pairs of observations is zero
#  Alternate Hypothesis: The median difference between pairs of observations is not zero
#
#    Alpha = 0.05
#
#####################################################################
#
# Laureysens (2004): Aluminium content (mg/g of wood) in Poplar tree clones
aluLevels <- read.csv(file = "96_Data_File.csv", header = TRUE, sep = ",")
print(aluLevels)
#
# Check for Normality
shapiro.test(aluLevels$August)     # p > 0.05, data are normal
shapiro.test(aluLevels$November)   # p < 0.05, data are not normal
#
# Perform Mann-Whitney Test using "wilcox.test()" function
wilcox.test(aluLevels$August, aluLevels$November, paired =  TRUE)
#
# Repeat test and swap variables
wilcox.test(aluLevels$November, aluLevels$August, paired = TRUE)
#
#     Report: W = 16, p = 0.040
#   Decision: Reject Null Hypothesis
# Conclusion: There is a difference in Aluminium levels between two types of tree
#