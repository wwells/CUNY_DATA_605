#mod2
#library(matlib)
#A <- matrix(c(1,1,2,-1), 2, byrow=T)
#b <- c(1,2)
#solve(A,b)
#plotEqn(A,b)

A <- matrix(c(1,1,3,2,-1,5,-1,-2,4), 3, byrow=T)
b <- matrix(c(1,2,6))
pivots <- nrow(A)
col <- ncol(A)

## Pivot and Multiplya
#(1) Start with row 1 of the co-effcient matrix
#(2) Pivot: The first non-zero element in the row being evaluated
#(3) Multiplier: The element being eliminated divided by the Pivot
#(4) Subtract Multiplier times row n from row n+1
#(5) Advance to the next row and repeat

test <- matrix(c(0,1,3,0,0,2,1,2,3), 3, byrow=T)
rearrange <- function(A){
    B <- A
    if (B[2,2]==0){
        B[2,] <- A[3,]
        B[3,] <- A[2,]
    }
    if (B[3,3]==0){
        B[3,] <- A[1,]
        B[1,] <- A[3, ]
    }
    
    B
}

combine <- function(A,b){
    Aug <- cbind(A,b)
}

aug <- combine(A,b)

