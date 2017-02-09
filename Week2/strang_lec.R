#lec2
A <- matrix(c(1,2,1,3,8,1,0,4,1), 3, byrow=TRUE)
b <- matrix(c(2,12,2))

# find Ax=b 
print (solve(A,b))

Aug <- cbind(A,b)

#what matrix will create row two pivot?
E_32 <- matrix(c(1,0,0,-3,1,0,0,0,1), 3, byrow=T)
t <- E_32 %*% A
#what matrix will create row 3 pivot after E_32 applied?
E_21 <- matrix(c(1,0,0,0,1,0,0,-2,1), 3, byrow=T)
E_21 %*% E_32 %*% A 

#inverse matrix gets you from A = U * A'


#lec3