
## The "makeCacheMatrix" function shows a list of functions used by "cacheSolve"
## to set and get the matrix to be inverted. "set" creates the matrix.
## "get" stores the value of the matrix into the cache. "setinverse" inverts the
## matrix from the cache. "getinverse"gets inverted matrix from the cache. The
## created functions are then shown as a list.

makeCacheMatrix <- function(x = matrix()) {
  storage <- NULL
    set <- function(y) {
    x <<- y
    storage <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) storage <<- inverse
  getinverse <- function() storage
    list(set=set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## The "cacheSolve" calculates the inverse of the matrix created from the
## "makeCacheMatrix" function. The if statement makes sure to return
## the inverted matrix if it exists. The matrix is then created and stored
## in the "matrix" variable.
## Assumption: Matrx inputted is always invertible.

cacheSolve <- function(x, ...) {
  if (!is.null(cache)) {
    message("getting cached data")
    return(storage)
  }
    matrix <- x$get()
  x$setinverse(storage)
  storage
}
