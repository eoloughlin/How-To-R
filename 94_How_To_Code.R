#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Draw Two-Way ANOVA Interaction Plots in R
#    Video Number: #94
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
# Perform Two-Way ANOVA
twoANOVA <- aov(len ~ supp * factor(dose), data = ToothGrowth)
summary(twoANOVA)
#
# Interaction plot for "supp"
interaction.plot(ToothGrowth$supp, factor(ToothGrowth$dose), ToothGrowth$len)
#
# Interaction plot for "dose"
interaction.plot(factor(ToothGrowth$dose ), ToothGrowth$supp, ToothGrowth$len)
#
# Interpretation: Lines are not parallel, therefore there is 
#                 some evidence that an interaction is present
#
