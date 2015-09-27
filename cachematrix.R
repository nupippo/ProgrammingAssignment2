## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix use for set and get matrix's value and set and get inverse matrix.
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() 
  x
  setIn <- function(inverse) 
    inv <<- inverse
  getIn <- function() 
    inv
  list(set = set,get = get,setIn = setIn,getIn = getIn)
}


## Write a short comment describing this function
# inverse matrix

# This function create inverse of matrix from makeCahceMatrix. if already inverse calculated they will get inverse from cache

cacheSolve <- function(x, ...) {
  inv <- x$getIn()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setIn(inv)
  inv
}
