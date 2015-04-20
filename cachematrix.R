## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inversed<-NULL
  set <- function( matrix ) {
    m <<- matrix
    inversed<<- NULL
  }
  get <- function() {
    m
  }
  setInverseMatrix <- function(inverse) {
    inversed <<- inverse
  }
  getInverSematrix <- function() {
    inversed
  }
  list(set = set, 
       get = get,
       setInverseMatrix = setInverseMatrix,
       getInverSematrix = getInverSematrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inversed <- x$getInverSematrix()
  if(!is.null(inversed)) {
    message("getting cached data")
    return(inversed)
  }
  data <- x$get()
  inversed <- solve(data, ...)
  x$setInverseMatrix(inversed)
  inversed  
}
