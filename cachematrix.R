## Ken Dye
## March 15, 2016
## Data Science R Programming
## Week 3 Programming project 2


## makeCacheMatrix creates a special Matrix containing a function to:
## 1. Set the value of the Matrix
## 2. Get the value of the Matrix
## 3. Set the value of the inverse Matrix
## 4. Get the value of the inverse Matrix

makeCacheMatrix <- function(x = matrix()){
        m <- NULL
        set <- function(y){
            x <<- y
            m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## cacheSolve:
## 1. Computes the inverse of the special Matrix returned by makeCacheMatrix
## 2. CHeck to see if inverse has already been solved, if solved and the Matrix
##    has not changed, cacheSolve retrieves the inverse from cache and returns
##    the result

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)){
            message("Getting cached data.")
            return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setinverse(m)4
        m
}