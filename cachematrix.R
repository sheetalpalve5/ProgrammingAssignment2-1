#Solution by Sheetal

#The first function, makeVector creates a matrix
#Set the Matrix
#Then Get the Matrix
#Set the Inverse of the Matrix
#Get the Inverse of the Matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cacheSolve function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
#If the inverse has already been calculated, then function should retrieve the inverse from the cache
#Else it calculates the inverse of the matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if (!is.null(m)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}


#Validating the Output
M1 <- matrix(1:4,2,2)
M1

MATRIX_M1 <- makeCacheMatrix(M1)
INVERSE_MATRIX_M1 <- cacheSolve(MATRIX_M1)
INVERSE_MATRIX_M1
