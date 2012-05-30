\name{analyse.list}
\alias{analyse.list}
\title{
Calculate Network Parameters from Multiple, Binary, Predator-prey Matrices Whose Names Are Provided in a List
}
\description{
Calculates species richness, connectance, total number of links, link density, number of trophic positions, prey:predator ratio, and fraction of cannibals, herbivores, top species and intermediate species. If asymmetrical matrices are provided for analysis, they will be made symmetrical if species names have been provided in the first row and column. Absence of a species from the columns of a matrix is taken to mean that it does not consume any species. Absence of a species from the rows is taken to mean that it is not consumed by any species.
}

\usage{
analyse.list(list, maxlevels=8, sym = c("FALSE", "TRUE"), output="Results.csv", 
problem="Problem.csv", separator=",", sp.names = c("FALSE", "TRUE"))
}

\arguments{
  \item{list}{
Full name of the file that contains the foodweb matrix file names. Individual matrix files should conform to standards of the files used in the function analyse.single(). See analyse.single() helpfile for details. 
}
  \item{maxlevels}{Optional. An integer indicating the maximum number of trophic levels expected to be represented in the food web matrix provided. Defaults to 8. Decreasing this number may make calculation faster.}
  
  \item{sym}{If TRUE, the matrix used for calculations is generated as output. This may be useful when the matrix provided was not symmetrical. The symmetrical matrix will be provided in a .csv file. Its name is that of the original matrix, followed by the suffix "-sym". Defaults to FALSE.}
  
  \item{output}{Optional. The full name of the output file in which results will be written. Defaults to Results.csv.}
  
  \item{problem}{Optional. The full name of the output file in which the names of food web matrix files with data other than zeroes and ones will be written. Defaults to Problem.csv.}
  
  \item{separator}{Optional. The character that separates values in the food web matrices provided. Defaults to comma.If separator="" is specified, the separator is 'white space', that is: one or more spaces, tabs, newlines or carriage returns separate the values. The matrices are imported via read.table(). Therefore, if you are having trouble, check that your matrices are read correctly by that function.}
  \item{sp.names}{Should be set to TRUE if species names are provided in the matrix files.}
}

\value{
  \item{}{A .csv file with the calculated network parameters of all the adequately formated matrices provided}
  \item{}{Where problems in the matrices were found, a file with the name of the problematic matrix(ces) listed.}
  \item{}{Optionally, binary, symmetrical, predator:prey matrices of each file provided can be generated as output.}
}
\references{
Perdomo G., Sunnucks P. and Thompson R.M. (submitted). food web: an open-source program for the visualisation and analysis of compilations of complex food webs. Environmental Modelling and Software.
}
\author{
Giselle Perdomo
}

\seealso{
  \code{\link{analyse.single}}
  \code{\link{analyse.seq}}
  \code{\link{plotweb}}
  \code{\link{mat.2.list}}
  }

\examples{
\dontrun{
data(moss)
write.table(moss,file="Web1.csv", append=FALSE,sep=",", row.names=FALSE, col.names=FALSE)
write.table(moss[-(2:4), -(8:10)],file="Web2.csv", append=FALSE,sep=",", 
row.names=FALSE, col.names=FALSE)
write.table(rbind("Web1.csv", "Web2.csv"), file="Mylist.csv", append=FALSE, sep=",", 
row.names=FALSE, col.names=FALSE)
analyse.list(list="Mylist.csv", maxlevels=4, sp.names="FALSE")

}}