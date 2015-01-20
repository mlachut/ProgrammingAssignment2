## Put comments here that give an overall description of what your
## functions do

## This function below will allow to define a matrix and output functions to store its inverse

makeCacheMatrix <- function(x = matrix()) {

  Inv <- NULL
  set <- function(y) {
    x <<- y
    Inv <<- NULL
  }
  get <- function() x
  setInv <- function(Inv) Inv <<- solve(x)
  getInv <- function() Inv
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
