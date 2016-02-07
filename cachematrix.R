## Put comments here that give an overall description of what your
## functions do
##X is the matrix that would be used, 
## Write a short comment describing this function
## This function creates a matrix for inversion which is actually a list. It sets the value of matrix, gets the values, set value of inverse and gets value of inverse.
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function
## This function returns the inverse of the matrix. It first checks if the inverse has already been calculated. If inverse is already calclated, it gets the result and skips subsequent lines of code. If inverse not calculated already, it calculates it and sets the value in the cache via setinverse function.

cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}
