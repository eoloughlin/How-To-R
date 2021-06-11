#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Create a Correlation Matrix in R
#    Video Number: #98
#
# Load Marketing Data Set from datarium package
library(datarium)
#
# View first six  lines
head(marketing)
#
# Check individual correlations (six lines of code required)
cor(marketing$youtube, marketing$facebook)
cor(marketing$youtube, marketing$newspaper)
cor(marketing$youtube, marketing$sales)
cor(marketing$facebook, marketing$newspaper)
cor(marketing$facebook, marketing$sales)
cor(marketing$newspaper, marketing$sales)
#
# Create simple correlation matrix
cor(marketing)
#
# Specify type of correlation
cor(marketing, method = "pearson")   # Kendall and Spearman also could be used
#

