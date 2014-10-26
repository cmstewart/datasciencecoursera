## this function first checks to see if the inverse of a matrix is
## already defined. if so it returns the cached inverse, if not 
## it computes the inverse in the "inver <- solve(data, ...)"
## line, then returns the inverse.

cacheSolve <- function(x, ...) {
  inver <- x$getinv()
  if(!is.null(inver)) {
    message("getting cached data")
    return(inver)
  }
  data <- x$get()
  inver <- solve(data, ...)
  x$setinv(inver)
  inver
}