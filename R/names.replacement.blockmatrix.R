NULL
#' 
#'\code{names<-} S3 Replacement method for \code{blockmatrix} object
#'
#' @param x a \code{blockmatrix} object 
#' @param value character vector with the new names replacing the old names
#' @export
#' 
#' @return \code{x} with new names and replaced names in the \code{value} matrix.
#' 
#' @rdname names.replace
#' @method names<- blockmatrix
#### @S3method names<- blockmatrix
#' @aliases names<-
#' @author Emanuele Cordano 
#' @usage \method{names}{blockmatrix} (x) <- value
#'
#' @examples
#' 
#' library(blockmatrix)
#' 
#' M <- as.blockmatrix(array(rnorm(100),c(10,10)),nrow=2,ncol=2)
#' 
#'
#' pn <- paste("p",names(M),sep="")
#' names(M) <- pn
#' 
#' 
#' 
#' 
#' 
#'  



'names<-.blockmatrix' <- function (x,value)  {
	
	## TO DO 
	previous_names <- names(x)
	
	if (length(value)!=length(previous_names)) {
		
		stop("Mismatch in replacement with length of names vector!")
		
	}
	names(value) <- previous_names
	class(x) <- "list"
	names(x)[names(x)!="value"] <- value
	
	x$value[x$value %in% previous_names] <- value[x$value]
	class(x) <- "blockmatrix"

	return(x)
	
}