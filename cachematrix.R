## Put comments here that give an overall description of what your
## functions do
## I put two functions in this code to calculate the inverse a matrix

makeCacheMatrix <- function(x = matrix) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

chacehSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting the cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse()
  inv
}
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}
## This is for making the matrix

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
