## Following funttion create inverse of a square matrix and cache the same

## Folliwng fuction have Getter & Setter to set and retrive a inverse matrix from cache to 

makeCacheMatrix <- function(x = matrix()) {
  
  invMat <- NULL
  mat <- x
  
  set <- function(x) {
    mat <- x
    invMat<<- NULL
  }
  
  get <- function() mat
  
  setInv <- function(i) {
    invMat <<- i
  }
  
  getInv <- function() {
    invMat 
  }
  
  list(get = get,setInv = setInv, getInv = getInv)
  
}


## Folliwng function retrives a inverse matrix from cache if it is exists 
## else create the inverse of matrix 

cacheSolve <- function(x, ...) {
 
  i<-x$getInv()
  
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }

  inverse <- solve(x$get())
  x$setInv(inverse)
  inverse
}
