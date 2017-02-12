#lin_algebra / strang problems
#1.2
#1
u <- c(-.6, .8); v <- c(4, 3); w <- c(1, 2)
dotp <- function(a, b){
    round(a %*% b, 4)
}

dotp(u, v)
dotp(u, w)
dotp(u, (v+w))
dotp(w, v)

#2
veclength <- function(v){
    round(sqrt(sum(v^2)), 4)
}
abs(dotp(u,v)) <= veclength(u)*veclength(v)
abs(dotp(v,w)) <= veclength(v)*veclength(w)

#3
findtheta <- function(a, b) {
    acos(dotp(a, b) / (veclength(a) * veclength(b))) * 180/pi
}


#1.3