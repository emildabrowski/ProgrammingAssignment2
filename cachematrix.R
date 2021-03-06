## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mtx = matrix()) {
  inverse <- NULL
  set <- function(x) {
    mtx <<- x;
    inverse <<- NULL;
  }
  get <- function() return(mtx);
  setinv <- function(inv) inverse <<- inv;
  getinv <- function() return(inverse);
  return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}


## Write a short comment describing this function

cacheSolve <- function(mtx, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv <- mtx$getinv()
  if(!is.null(inv)) {
    message("Getting data...")
    return(inv)
  }
  data <- mtx$get()
  inv <- solve(data, ...)
  mtx$setinv(inv)
  return(inv)
}
		
}
