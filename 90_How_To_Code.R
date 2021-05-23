#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform an ANOVA Post-Hoc Test in R
#    Video Number: #90
#  Data File Used: 90_Data_File.csv
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
dietData <- read.csv(file = "90_Data_File.csv",
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
# Perform ANOVA
table <- aov(weightLoss ~ dietData$Diet, data = dietData)
summary(table)   # F(2, 75) = 5.551, p = 0.002
#
# Perform Tukey Post-Hoc Test
TukeyHSD(table)                # Differences found betweens diets 1-3, and 2-3
#
# Visualize Means and Confidence Levels
plot(TukeyHSD(table))
#
