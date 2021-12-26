## Hi,everyone this is my programimg assignment2 : Lexical Scoping on Coursera : R programming week3
## functions do

## My first function is makeCacheMatrix. This function create matrix object for cache its inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
    m<- NULL
    setmatrix <- function(y){
        x<<-y
        m<<- NULL
        
    }
    getmatrix <- function(){ x
    }
    setinverse <- function(inverse) { m <<-inverse
    }
    getinverse <- function(){ m
    }
    list(setmatrix = setmatrix,
         getmatrix = getmatrix,
         setinverse = setinverse,
         getinverse = getinverse)
    
}


## My second function is cacheSolve. Which computes the inverse matrix of the matrix that created by makeCacheMatrix function above.
## if the inverse  matrix has already been calculated before ,it will retrieve the inverse from the cache.###

cacheSolve <- function(x, ...) { 
    m<-x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$getmatrix()
    m<- solve(data, ...)
    x$setinverse(m)
    m
    
    
}
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
