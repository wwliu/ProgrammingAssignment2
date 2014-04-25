## These two functions allow the user to create a matrix,
## cache (store) that matrix and compute the inverse of it
## Note: only square matrices can be inverted


## This function is called from the function "cacheSolve" and
## creates and caches the matrix to be inverted
makeCacheMatrix <- function(x = matrix()) {
 makeMatrix <<- matrix(rnorm(x^2), x, x)
 print(makeMatrix)
}


## Type "cacheSolve(x)" (where x is between 2 and 9, including)
## This creates a square matrix using the above function,
## invert it using this function and store it under the name "invertedMatrix"
cacheSolve <- function(x, ...) {
       if (!(x %in% 2:9)) stop ("x must be 2 through 9")
       makeCacheMatrix(x)
       invertedMatrix <<- solve(makeMatrix)
       print(invertedMatrix)
}
