#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To...  Add Column Names to a Matrix in R
#   Video Number: #54
# 
# Create a simple matrix
newMat <- matrix(1:20, nrow = 4, byrow = TRUE)      # 4 rows, 3 columns
print(newMat)
#
#  Add country names
rownames(newMat) <- c("Ireland", "Canada", "India", "USA")
print(newMat)
#
# Add years 2020 to 2024 as columns names
colnames(newMat) <- c("2020", "2021", "2022", "2023", "2024")
print(newMat)        
#
