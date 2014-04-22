

## Creates a Special matrix that can cache it own inverse matirx.

makeCacheMatrix <- function(x = matrix()) {
    InvMat<-NULL
    set<- function(y){
        x <<- y
        InvMat <<- NULL
    } 
    get <- function() x
    setinv<- function(Inv) InvMat <<- Inv # Setting a new inverse matrix
    getinv<- function() InvMat            # Retriving the inverse matrix
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Checks if the the inverse of the matrix x was allready computed, if so then 
## returns the cached matrix, if not then computs the inverse matrix and then
## returns it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        InVMat <- x$getinv()
        if(!is.null(InVMat)){
            message("getting cached data")
            return(m)
        }
        data<-x$get()
        InVMat<- solve(x)
        x$setinv(InVMat)
        InVMat
}
