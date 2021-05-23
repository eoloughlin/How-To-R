#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform an ANOVA Test in R
#    Video Number: #89
#  Data File Used: 89_Data_File.csv
#
##########################################################
#
#        Null Hypothesis: Population Means are equal 
#   Alternate Hypothesis: At least two Population Means are not Equal
#
#        Alpha = 0.05
#
##########################################################
#
dietData <- read.csv(file = "89_Data_File.csv",
                       header = TRUE, sep = ",")
print(dietData)
#
# Calculate weight loss
weightLoss <- dietData$Weight.Week.1 - dietData$Weight.Week.8
#
# Visualize
boxplot(weightLoss ~ dietData$Diet, data = dietData,
        col="light gray", ylab = "Weight loss (kg)", xlab = "Diet type")
#
class(dietData$Diet)  # "integer"
dietData$Diet <- as.factor(dietData$Diet)  # coerce to a factor
#
# Perform ANOVA using "anova() with lm()"
anova(lm(weightLoss ~ dietData$Diet, dietData))
#
# Perform ANOVA using aov() function
table <- aov(weightLoss ~ dietData$Diet, data = dietData)
summary(table)   # ANOVA table
#
#    Report:  F(2, 75) = 6.551, p = 0.002
#  Decision: Reject Null Hypothesis at alpha = 0.05
#   Meaning: There is a difference between at least two of the diets
#