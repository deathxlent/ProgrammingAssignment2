## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inversed<-NULL
  set <- function( matrix ) {
    x <<- matrix
    inversed<<- NULL
  }
  get <- function() {
    x
  }
  setInverse <- function(inverse) {
    inversed <<- inverse
  }
  getInverse <- function() {
    inversed
  }
  list(set = set, 
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  cc<-x$class
  inversed <- x$getInverse()
  if(!is.null(inversed)) {
    message("getting cached data")
    return(inversed)
  }
  data <- x$get()
  inversed <- solve(data, ...)
  x$setInverse(inversed)
  inversed  
}
