## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function below creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(m = matrix()) {
        ##initialize the inverse property
        i<- NULL
        ## Now we set the matrix
        set<- function(matrix){
                x<<-matrix
                i<<- NULL
                }
        ##method to get the matrix
        get<- function()
        {
                #returns the matrix
                m
        }
        ##method to set the inverse of the matrix
        setinverse<-function(inverse){i<<- inverse}
        #method to get the inverse of the matrix
        getinverse<- function (){
        ##returns the inverse property
                i
        }
        ##returns a list of methods
        list(set=set, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function
## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m<- x$getinverse()
         ## Just return the inverse if its already set
        if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }
##get the matrix from our object
        data<- x$get()
        ##calcukate the inverse using matrix multiplication
        m <- solve(data) %*% data
        ##set the inverse to the object
        x$setinverse(m)
        ##return the matrix
        m
}
