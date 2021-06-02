#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform an ANOVA Post-Hoc Test in R
#    Video Number: #90
#  Data File Used: 90_Data_File.csv
#
#####################################################################
#
#        Null Hypothesis: Population Means are equal 
#   Alternate Hypothesis: At least two Population Means are not Equal
#
#        Alpha = 0.05
#
#####################################################################
#
dietData <- read.csv(file = "90_Data_File.csv",
                       header = TRUE, sep = ",")
print(dietData)
#
# Visualize
boxplot(dietData$Weight.Loss ~ dietData$Diet, data = dietData,
        col="light blue", ylab = "Weight loss (kg)", xlab = "Diet type")
#
dietData$Diet <- as.factor(dietData$Diet)  # coerce to a factor
#
# Perform ANOVA
table <- aov(dietData$Weight.Loss ~ dietData$Diet, data = dietData)
summary(table)   # F(2, 75) = 5.551, p = 0.002
#
# Perform Tukey Post-Hoc Test
TukeyHSD(table)                # Differences found between diets 1-3, and 2-3
#
# Visualize Means and Confidence Levels
plot(TukeyHSD(table))
#
