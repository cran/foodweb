\name{mat.2.list}
\alias{mat.2.list}
\title{Transform a Binary Predator:prey Food Web Matrix into an Interaction List
}
\description{
Takes a matrix of zeroes and ones, where ones represent consumption of the species in the row by the species in the column, and transforms it into a list of trophic interactions (i.e. a list of the pairs of species where the value in the matrix was equal to zero).
}

\usage{
mat.2.list(filename, output)
}
\arguments{
  \item{filename}{
Name of the file in the current working directory that contains the predator:prey matrix. This file must NOT contain species names. The output is generated on the basis of the column and row numbers.
}
  \item{output}{
Full name of the file in which the list of interactions should be written. The file will be saved in the current working directory.}
}

\value{
A file containing the list of trophic interactions specified in the food web matrix.
}

\references{
Perdomo G., Sunnucks P. and Thompson R.M. (submitted). food web: an open-source program for the visualisation and analysis of compilations of complex food webs. Environmental Modelling and Software.
}
\author{
Giselle Perdomo}

\seealso{
  \code{\link{analyse.single}}
  \code{\link{analyse.list}}
  \code{\link{analyse.seq}}
  \code{\link{plotweb}}
}
