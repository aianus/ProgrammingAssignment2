## Create an object encapsulating a matrix with a getter, setter, and memoized getInverse function
makeCacheMatrix <- function(x = matrix()) {
  inverse = NULL
  set = function(y) {
    x <<- y
    inverse <<- NULL
  }
  get = function() x
  getInverse = function() {
    if (is.null(inverse)) {
      inverse <<- solve(x)
    }
    inverse
  }
  list(set=set,
       get=get,
       getInverse=getInverse)
}

## I don't see the point of this function, but the assignment asked for it...
cacheSolve <- function(x, ...) {
  x$getInverse()
}
