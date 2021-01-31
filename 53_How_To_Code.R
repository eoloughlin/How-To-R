#
#         Author: Dr Eugene O'Loughlin
#    Video Title: How To...  Add Row Names to a Matrix in R
#   Video Number: #53
# 
# Create a simple matrix
newMat <- matrix(1:20, nrow = 4, byrow = TRUE)      # 4 rows, 3 columns
print(newMat)
#
#  Add country names
rownames(newMat) <- c("Ireland", "Canada", "India", "USA")
print(newMat)
#
