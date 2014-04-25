## These two functions allow the user to create a matrix,
## cache (store) that matrix and compute the inverse of the matrix


## This function is called from the function "cacheSolve" and
## creates and caches the matrix
makeCacheMatrix <- function(x = matrix()) {
 makeMatrix <<- matrix(rnorm(x^2), x, x)
 print(makeMatrix)
}


## Type "cacheSolve" (where x is between 2 and 9 including)
## This creates and a square matrix (only square matrices can be inverted),
## invert it at store in under the name "invertedMatrix"
cacheSolve <- function(x, ...) {
       if (!(x %in% 2:9)) stop ("x must be 2 through 9")
       makeCacheMatrix(x)
       invertedMatrix <<- solve(makeMatrix)
       print(invertedMatrix)
}
