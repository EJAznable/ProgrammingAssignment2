## Put comments here that give an overall description of what your
## functions do
## we set a matrix here and then get the matrix. Then, we set the inverse of the matrix and get the inverse of the matrix.

## Write a short comment describing this function

makeCacheMatrix < -function( x = matrix()) {
        m<-NULL
  	set<-function(y){
         	 x<<-y
         	 m<<-NULL
 	}
 	get<-function()x
  	setinverse<-function(inverse)m<<-inverse
  	getinverse<-function()m
  	list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)



}


## Write a short comment describing this function
## it is used to set the inverse of the matrix we have got. 
## first, check if the inverse is already got. If not, then get the inverse of the matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getinverse()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	data<-x$get()
  	m<-solve(data, ...)
  	x$setinverse(m)
 	m

}
