#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To... Add Lines to a Scatter Plot in R
#   Video Number: #37
# 
data()    # Use an in-built data set
pressure  # Vapour Pressure of Mercury as a Function of Temperature
#
head(pressure)
#
# Plot a simple scatter diagram
plot(pressure, main = "Vapour Pressure",
     xlab = "Temperature",
     ylab = "Pressure",
     type = "l")      # experiment with types: p, i, b, c, o, h, s, S, and n
#
