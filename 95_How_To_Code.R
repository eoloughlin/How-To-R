#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform a Mann-Whitney U Test in R
#    Video Number: #95
# Data File Used: 95_Data_File.csv
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
movieRating <- read.csv(file = "95_Data_File.csv", header = TRUE, sep = ",")
print(movieRating)
#
# Check for Normality
shapiro.test(movieRating$Male)     # p > 0.05, data are normal
shapiro.test(movieRating$Female)   # p < 0.05, data are not normal
#
# Perform Mann-Whitney Test using "wilcox.test()" function
wilcox.test(movieRating$Male, movieRating$Female, paired =  FALSE)
#
# Repeat test and swap variables
wilcox.test(movieRating$Female, movieRating$Male, paired = FALSE)
#
#     Report: U = 144.5, p = 0.137
#   Decision: Fail to reject Null Hypothesis
# Conclusion: No difference in rating ranks between Males and Females
#