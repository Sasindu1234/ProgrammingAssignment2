## This function creates a special "matrix" object that can cache its inverse.
## functions do

## Write a short comment describing this function
makeCacheMatrix<- function(x= matrix())
{
    inv<- NULL
    set<- function(y)
    {
      x<<- y
      inv<<- NULL
    }
    get <- function(){x}
    setinverse <- function(inverse){inv <<- inverse}
    getinverse<- function(){inv}
    list(set = set,get= get,setinverse=setinverse,getinverse=getinverse)
}

cacheSolve <- function(x,...)
{
   inv <- x$getinverse()
   if(!is.null(INV)){
        message("Geting cached Data")
        return(inv)
   }
   mat <- x$get()
   inv <- solve(mat,...)
   x$setinverse(inv)
   inv
   
}