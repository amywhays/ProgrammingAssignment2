## Put comments here that give an overall description of what your
## functions do

## This is a function sets and gets the value of the matrix and sets
## and gets the inverse of a matrix.

makeCacheMatrix <- function(x = matrix()) {
                c <- NULL
                set <- function(y) {
                        x <<- y
                        c <<- NULL
                }
                get <- function() x
                setinverse <- function(solve)  c <<- solve
                getinverse <- function() c
                list(set = set, get = get,
                     setinverse = setinverse,
                     getinverse = getinverse )
        
}


## This function checks to see if the inverse of the matrix 
## has been calculated and if not calculates the inverse.
## If it has been calculated before it retrieves the cached inverse calculation.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                c <- x$getinverse()
                if(!is.null(c)) {
                        message("getting cached data")
                        return(c)
                }
                data <- x$get()
                c <- solve(data, ...)
                x$setinverse(c)
                c        
        
}
