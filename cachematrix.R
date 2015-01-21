## Put comments here that give an overall description of what your
## functions do

## A matrix is input into the function below which outputs function that allow its inverse to be cached within 
## the a 'special' matrix
## Please note that the makeVector function from the example was modified accordingly to impliment the procedure described 
## above
  
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


## The function below will check if the input matrix has its inverse cached and returns it if TRUE
## Otherwise, it will solve for the inverse of the matrix, cache it into the matrix with setInv() and output the result
## Please note that the cachemean function from the example was modified accordingly to impliment the procedure described 
## above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  if (nrow(x$get()) == ncol(x$get())) {  ##check to see if the input matrix is squares
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
  else print("Matrix is not square so can't solve or cache inverse matrix")
}
