#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Reference Data in a Data Frame in R
#    Video Number: #59
# 
PlantGrowth  # Results from an Experiment on Plant Growth
#
# check data types
class(PlantGrowth$weight)    # numeric
class(PlantGrowth$group)     # factor (text. but nominal)
#
PlantGrowth[3,]              # Get 3rd row
PlantGrowth[27,]             # Get 27th row
#
# All following give same result
PlantGrowth[,1]              # Get first column
PlantGrowth[,"weight"]
PlantGrowth$weight
#
# All following also give same result
PlantGrowth[,2]              # Get second column
PlantGrowth[,"group"]
PlantGrowth$group
#
# Reference a particular value
PlantGrowth[5, 1]            # Row 5, Column 1
#
# Out of bounds data
PlantGrowth[35, 3]            # Row 35, Column 3 (does not exist)
