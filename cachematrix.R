## These functions create a "matrix" object that can cache the inverse
## of the matrix and either computes the inverse of the matrix or retrieve
## the inverse of the matrix from the cache if it has already be computed. 

## This function creates the matrix object that contains a list of four functions
## and cache's the inverse of the matrix 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function () x
        setinv <- function(solve) m <<- matr
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## This function computes the inverse of the matrix or retreives the inverse of 
## the matrix if it has already been computed

cacheSolve <- function(x, ...) {
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
        ## Return a matrix that is the inverse of 'x'
}

