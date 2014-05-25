## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function has nothing to do with the lectures for the week.

makeCacheMatrix <- function(x = matrix()) {
	mtrx <- NULL
	set <- function(y) {
		x <<- y
		mtrx <<- NULL
	}
	get <- function() x
	setmtrx <- function() mtrx
	getmtrx <- function() mtrx
	list(set = set, get = get, setmtrx = setmtrx, getmtrx = getmtrx)

}


## Write a short comment describing this function
## Did I watch the lectures for the right class?

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	mtrx <- x$getmtrx()
	if(!is.null(mtrx)) {
		message("getting cached data")
		return(mtrx)
	}
	data <- x$get()
	mtrx <- mean(data, ...)
	x$setmtrx(mtrx)
	mtrx
}
