## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function has nothing to do with the lectures for the week.
## This creates a list function to set/get the value of the vector/matrix

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
## This function creates the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	mtrx <- x$getmtrx()
	if(!is.null(mtrx)) {
		message("getting cached data")
		return(mtrx)
	}
	data <- x$get()
	mtrx <- solve(data, ...)
	x$setmtrx(mtrx)
	mtrx
}
