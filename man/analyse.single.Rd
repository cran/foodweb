\name{analyse.single}

\alias{analyse.single}

\title{Calculate Network Parameters from One Binary Predator-prey Matrix}

\description{
Calculates species richness, connectance, total number of links, link density, number of trophic positions, prey:predator ratio, and fraction of cannibals, herbivores, top species and intermediate species.
}

\usage{analyse.single(filename, omn = c("FALSE", "TRUE"), cann = c("FALSE", "TRUE"), 
positions=c("FALSE", "TRUE"), matrix=c("FALSE", "TRUE"), 
sp.names = c("FALSE", "TRUE"), maxlevels=8)}

\details{
Basal species are those that do not consume others. Intermediate species are species that consume and are consumed by other species. Top species are those not consumed. Cannibals those that consume species from the same trophic position. Predator:prey ratio is calculated as the number of basal and intermediate species divided by the number of predatory and intermediate species. Connectance is calculated as the total number of links divided by the square of species richness. Species richness is the number of species in the food web. Link density is the number of links per species.
}

\arguments{
    \item{filename}{Full name of the comma-delimitted text file containing a binary, ordered predator-prey food web matrix.  All species present in the food web must be represented, including basal resources. A zero denotes the absence of a trophic interaction. A one denotes that the species in the column consumes the species in the row.  Column n must represent the same species as row n, unless an asymmetrical matrix is supplied. Asymmetrical matrices, i.e. matrices where basal resource species are not included in the columns and top predators are not included in the rows, will be turned into symmetrical matrices and ordered, prior to analysis. To do this, species names must be supplied in the first row and first column of the matrix. See matrix.}
    \item{omn}{A logical value. If TRUE, a list of omnivorous species will be generated as output: Omnivores.csv. Defaults to FALSE.}
    \item{cann}{Optional. A logical value. If TRUE, a list of cannibal species will be generated as output: Cannibals.csv. Defaults to FALSE.}
    \item{positions}{Optional.A logical value. If TRUE, a list indicating trophic positions of the food web and the species in them is generated: Trophic positions.csv. Defaults to FALSE.}
    \item{matrix}{Optional.A logical value. If TRUE, the matrix used for calculations is generated as output. This may be useful when the matrix provided was not symmetrical. Defaults to FALSE.}
    \item{sp.names}{A logical value. If TRUE, the first row and column will be considered to contain species names. These rows will not be used for calculations. Defaults to FALSE.}
    \item{maxlevels}{Optional. An integer indicating the maximum number of trophic levels expected to be represented in the food web matrix provided. Defaults to 8. Decreasing this number may make calculation faster.}
    }

\value{A file in the current working directory is generated, containg the network parameters calculated. The name of the output file will be Results- followed by the name of the file provided for analysis. If omn, cann, positions and/or matrix were set to TRUE, the following files are also generated as output: Omnivores.csv, Cannibals.csv, Trophic positions.csv and/or Symmetrical matrix.csv, respectively (see Arguments section of this help page).}

\references{
Perdomo G., Sunnucks P. and Thompson R.M. (submitted). food web: an open-source program for the visualisation and analysis of compilations of complex food webs. Environmental Modelling and Software.
}

\seealso{
  \code{\link{analyse.list}}
  \code{\link{analyse.seq}}
  \code{\link{plotweb}}
  \code{\link{mat.2.list}}
}

\examples{
\dontrun{
data(moss)
write.table(moss,file="Myfoodweb.csv", append=FALSE,sep=",", row.names=FALSE, col.names=FALSE)
analyse.single(filename="Myfoodweb.csv")
}}