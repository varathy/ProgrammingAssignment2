## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## return: a list containing functions to get,set,getinvers,setinvers
 invers = NULL
 set = function(y) {
  ## << is used to assign object in a different environment from the current one
 x <<- y
invers <<- NULL
}
get = function() x
setinvers = function(inverse) inv <<- inverse 
getinvers = function() invers
list(set=set, get=get, setinvers=setinvers, getinvers=getinvers)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
invers = x$getinvers()
 ## Cached inverse that is already calculated
if (!is.null(invers)){
  message("getting cached data")
  return(invers)
}
 ## if not cached, it will get and cache the inverse of the matrix
  data = x$get()
  inv = solve(data, ...)
  x$setinvers(invers)
  return(invers)
}
