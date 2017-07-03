## Put comments here that give an overall description of what your
## functions do

## This function returns a list of function that create metrix

makeCacheMatrix <- function(x = matrix()) {
 y <- NULL
 setmatrix <- function(a){
   x <<- a
   y <<- NULL
 }
 getmatrix <- function() x
 setinverse <- function(b) y <<- b
 getinverse <- function() y
 list(setmatrix = setmatrix,
      getmatrix = getmatrix,
      setinverse = setinverse,
      getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  y <- x$getinverse()
  if(!is.null(y)) {
    message("getting cached data")
    return(y)
  }
  mat <- x$getmatrix()
  y <- solve(mat, ...)
  x$setinverse(y)
  y
}
