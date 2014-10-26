## this function initializes the variable that will eventually store
## the matrix inverse, then sets the value of that variable to "y" if
## the set function is called. finally "inver" is set to the value
## passed in as the argument of "setinv" via superassign so that it's
## available in the parent function's environment. that is then 
## returned in "getinv" and makeCacheMatrix's variables are then 
## stored in a list so that they are available to cacheSolve.

makeCacheMatrix <- function(x) {
  
  inver <- NULL
  set <- function(y) {
    x <<- y
    inver <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inver <<- solve
  getinv <- function() inver
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}