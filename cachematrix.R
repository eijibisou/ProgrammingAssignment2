## A script for a function able to cache matrices as well as the inverse of matrices

## makeCacheMatrix defines function for caching matrices

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function() {x}
	setInverse <- function(inverse) {inv <<- inverse}
	getInverse function() {inv}
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## cacheSolve defines the function for getting the inverse of matrices

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
	inv <- x$getInverse()
	if(!is.null(inv)) {
		message("Getting cached data")
		return(inv)
	}
	mat <- x$get()
	inv <- solve(mat, ...)
	x$setInverse(inv)
	inv
}
