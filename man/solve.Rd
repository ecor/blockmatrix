% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/solve.blockmatrix.R
\name{solve.blockmatrix}
\alias{solve}
\alias{solve.blockmatrix}
\title{solve}
\usage{
\method{solve}{blockmatrix}(a, b = NULL, as.blockmatrix = TRUE, ...)
}
\arguments{
\item{a}{a \code{blockmatrix} or numeric object}

\item{b}{a \code{blockmatrix} or numeric object. If omitted, it is \code{NULL}. See Details.}

\item{as.blockmatrix}{logical value. If \code{TRUE} (Default), the output is a \code{blockmatrix} object}

\item{...}{further arguments for method \code{solve}}
}
\value{
the object \code{x} such that \code{a * x = b} where \code{*} is the matrix product.
}
\description{
\code{dim} S3 solve for \code{blockmatrix} object
}
\note{
If \code{b} is missing, i.e. \code{NULL}, it will be replaced by the corresponding identity matrix. So \code{x} is calculated as the right inverse of \code{a}.
The matrix system must be nonsingular and nonhomogeneous.
}
\author{
Emanuele Cordano
}

