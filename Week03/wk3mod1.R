# determinant

# 2*2
A <- matrix(c(1,2,3,4),2) 
determinant <- A[1,1] * A[2,2] - A[1,2] * A[2,1]
# or
determinant2 <- det(A)

# 3*3
B <- matrix(c(-2,2,-3,-1,1,3,2,0,-1),3,3)
detB <- B[1,1] * det(B[2:3,2:3]) -
    B[1,2] * det(B[2:3, c(1,3)]) + 
    B[1,3] * det(B[2:3, 1:2])
# or
detB2 <- det(B)

# If det(A) = 0, then A is singular. If det(A) 6= 0 then A is invertible.

# eigenvector / eigenvalues

A <- matrix(c(1,3,4,2),2)
