#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform a Two-Way ANOVA in R
#    Video Number: #93
#
#####################################################################
#
#    Null Hypotheses: 
# 
#    H1: The means of observations grouped by one factor are the same
#    H2: The means of observations grouped by the other factor are the same
#    H3: There is no interaction between the two factors 
#
#    Alpha = 0.05
#
#####################################################################
#
# The Effect of Vitamin C on Tooth Growth in Guinea Pigs
ToothGrowth     # In-built data set in R
#
# Visualize with two plots
plot(len ~ supp + factor(dose), data = ToothGrowth) 
#
# Perform Two-Way ANOVA
twoANOVA <- aov(len ~ supp * factor(dose), data = ToothGrowth)
summary(twoANOVA)
#
