## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse = NULL
  set = function(y) {
    x <<- y
    inverse = NULL
  }
  get <- function() x
  setinverse <- function(inverse) inverse <<- inverse
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse
       getinverse = getinverse)

}
##The above function provides
##the list of functions that will be used
##in the cacheSolve function


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv = x$getinverse()
  if (!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  mat.data <- x$get()
  inverse <- solve(mat.data, ...)
  x$setinverse(inverse)
  return(inverse)
        ## Return a matrix that is the inverse of 'x'
}
