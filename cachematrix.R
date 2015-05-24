## Put comments here that give an overall description of what your
## functions do
##X is the matrix that would be used, 
## Write a short comment describing this function
## This function caches its inverse
makeCacheMatrix <- function(X) {
 i <- NULL
        set <- function(Y) {
                X <<- Y
                m <<- NULL
        }
        get <- function() X
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
## This function computes inverse of the matrix returned by above function. If inverse is not calculated it calculates it!
cacheSolve <- function(X) {
        ## Return a matrix that is the inverse of 'x'
		  i <- solve(X)
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- X$get()
        i <- solve(data)
        X$setinverse(i)
        i
}
