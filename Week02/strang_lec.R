##lec2
A <- matrix(c(1,2,1,3,8,1,0,4,1), 3, byrow=TRUE)
b <- matrix(c(2,12,2))

# find Ax=b 
#print (solve(A,b))
Aug <- cbind(A,b)

#what matrix will create row two pivot?
E_32 <- matrix(c(1,0,0,-3,1,0,0,0,1), 3, byrow=T)
t <- E_32 %*% A
#what matrix will create row 3 pivot after E_32 applied?
E_21 <- matrix(c(1,0,0,0,1,0,0,-2,1), 3, byrow=T)
E_21 %*% E_32 %*% A 

#inverse matrix gets you from A = U * A'

##lec4

A <- matrix(c(2,1,8,7), 2, byrow=T)
E_21 <- matrix(c(1,0,-4,1), 2, byrow=T)
U <- E_21 %*% A

# A = LU
# L is = E_21^-1 (or the inverse of the elimination matrix that gets U)
L <- solve(E_21)
#confirm this is "A"
L %*% U

#LDU -, D is just the pivot or (2,0,0,3) which makes U now (1,.5,0,1)
#  A = LDU

#larger than 2*2
# E_32 *E_31 *E_21 * A = U
# so L = E_32^-1 *E_31^-1 *E_21^-1

## lec 5
