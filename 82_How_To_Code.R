#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Check for Normality in R
#    Video Number: #82
#  Data File Used: 82_Data_File.csv
#
studentData <- read.csv(file = "82_Data_File.csv", header = TRUE, sep = ",")
print(studentData)
#
# Visualise with Boxplots
boxplot(studentData$Mathematics, main = "Mathematics")
boxplot(studentData$History, main = "History")
boxplot(studentData$Geography, main = "Geography")
#
# Visualise with Histograms
hist(studentData$Mathematics, main = "Mathematics", xlab = "Score")
hist(studentData$History, main = "History", xlab = "Score")
hist(studentData$Geography, main = "Geography", xlab = "Score")
#
# Check Normality with Shapiro Wilk Test
shapiro.test(studentData$Mathematics)      # p < 0.05 Not normal
shapiro.test(studentData$History)          # p > 0.05 Normal
shapiro.test(studentData$Geography)        # p > 0.05 Normal
#
