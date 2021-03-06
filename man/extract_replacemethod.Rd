% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/zbracket[.replacement.blockmatrix.R
\name{[<-.blockmatrix}
\alias{[<-,extract_replacemethod}
\alias{[<-.blockmatrix}
\title{\code{'[<-'} S3  Replacement method for \code{blockmatrix} object}
\usage{
\method{[}{blockmatrix}(M, i = 1:nrow(M), j = 1:ncol(M)) <- value
}
\arguments{
\item{M}{a \code{blockmatrix} object}

\item{i,j}{matrix indices (numerical or character)}

\item{value}{a \code{blockmatrix} object to be replaced}
}
\value{
The "replaced" \code{\link{blockmatrix}} object.
}
\description{
\code{'[<-'} S3  Replacement method for \code{blockmatrix} object
}
\note{
In case \code{i} is a character vector, the elements whose names is in \code{value} is replaced.
}
\examples{
rm(list=ls())
library(blockmatrix)
A <- array(rnorm(9,mean=1),c(3,3))
B <- 0 #array(rnorm(9,mean=2),c(3,3))
C <- 0
D <- array(rnorm(9,mean=4),c(3,3))
F <- array(rnorm(9,mean=10),c(3,3))
M <- blockmatrix(names=c("A","0","D","0"),A=A,D=D,dim=c(2,2))
E <- blockmatrix(names=c("0","F","D","0"),F=F,D=D,dim=c(2,2))
E[,1] <- M[,1]
}
\author{
Emanuele Cordano
}

