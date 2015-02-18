## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#1. set the value of the matrix
#2. get the value of the matrix
#3. set the value of the inverted matrix
#4. get the value of the inverted matrix

makeCacheMatrix <- function(x = matrix()) {

        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)

}


## Write a short comment describing this function
#The following function calculates a matrix that is the inverse of 'x' and that was created in the makeCacheMatrix function.  It first checks to see if the matrix has already been calculated and if so it gets the inverted matrix from the cache.  If the matrix doesn't exist in the catch, it calculates the inverted matrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	
	m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m
}
