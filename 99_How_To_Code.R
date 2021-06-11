#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Plot a Correlation Matrix in R
#    Video Number: #99
#
# Load Marketing Data Set from datarium package
library(datarium)
#
# View first six  lines
head(marketing)
#
# Create simple correlation matrix
cormat <- cor(marketing)
#
# Visualize using simple matrix plot
plot(marketing)
#
# visualize with ggplot
library(ggplot2)
library(reshape2)
#
melted_cormat <- melt(cormat)
ggplot(data = melted_cormat, 
       aes(x = Var1, y = Var2, fill = value)) + geom_tile()
#