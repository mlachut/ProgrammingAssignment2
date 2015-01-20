## Put comments here that give an overall description of what your
## functions do

## This function below will allow to define a matrix and output functions to allow its inverse to be cached within the matrix

makeCacheMatrix <- function(x = matrix()) {

  Ix <- NULL
  set <- function(y) {
    x <<- y
    Ix <<- NULL
  }
  get <- function() x
  setInv <- function(Inv) Ix <<- Inv 
  getInv <- function() Ix
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  Ix <- x$getInv()
  if(!is.null(Ix)) {
    message("getting cached inverse of matrix")
    return(Ix)
  }
  data <- x$get()
  Ix <- solve(data)
  x$setInv(Ix)
  Ix
  
}
