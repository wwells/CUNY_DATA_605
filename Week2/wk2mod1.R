# 1
A <- matrix(seq(from=1,to=6), nrow=2, byrow=T)
B <- matrix(seq(from=12,to=7), nrow=2)
A + B
t(A) %*% B
A %*% t(B)

# 3 sq and inverses
I <- diag(3)
A %*% I
# AB = I then B=A^-1 or the Inverse of A

# 5 factor A into LU
A <- matrix(c(1,2,3,1,1,1,2,0,1),nrow=3)

E21 <- matrix(c(1,-2,0,0,1,0,0,0,1),nrow=3)
E31 <- matrix(c(1,0,-3,0,1,0,0,0,1),nrow=3)
E32 <- matrix(c(1,0,0,0,1,-2,0,0,1),nrow=3)

U <- E32 %*% E31 %*% E21 %*% A
L <- solve(E21) %*% solve(E31) %*% solve(E32)

# can find A=LDU'  Where U = DU'