# mod 1
v <- c(1,4,-3)
v2 <- 3 * v
w <- c(-2,5,7)

## linear combination
v + w
3*v - 2*w

## dot product
dot <- v %*% w

## vector length and angle
lv <- sqrt(sum(v^2))
lw <- sqrt(sum(w^2))
angle <- acos(dot / (lv*lw)) * 180/pi

## orthogonal (considered to be orthoganal if vectors are 90degrees apart
## / dot product is zero)
oy <- c(0, 10)
ox <- c(10, 0)
odot <- oy %*% ox