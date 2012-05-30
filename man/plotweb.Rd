\name{plotweb}
\alias{plotweb}
\title{Plot a Food Web Analysed Using the analyse.single() Function
}
\description{Produces a three dimensional, coloured plot from data provided as a binary, ordered predator-prey matrix. The matrix needs to have been analysed with the function analyse.single() in order for this function to work.}

\usage{
plotweb(cols, radii)
}

\arguments{
  \item{cols}{a list of colours, one per trophic level in the food web. Any colour name found is colours() or colors() is allowed. See colours() and colors()}
  \item{radii}{a list of radii, one per trophic level in the food web.}
}
\details{
Angle of orientation of the plot can be manipulated by click, drag and drop operations directly on the graphics device. Zoom can be manipulated with the mouse wheel while the graphics device is active.}
\value{
A three dimensional plot of a food web network, as generated using plot3d of the package rgl.
}
\references{
Perdomo G., Sunnucks P. and Thompson R.M. (submitted). food web: an open-source program for the visualisation and analysis of compilations of complex food webs. Environmental Modelling and Software.
}
\author{
Giselle Perdomo
}
\seealso{
\code{\link{analyse.single}}
\code{\link{analyse.list}}
\code{\link{analyse.seq}}
\code{\link{mat.2.list}}
}

\examples{ 
\dontrun{
data(moss)
write.table(moss, file = "moss.csv", append=FALSE, sep=",", col.names=FALSE, row.names=FALSE)
analyse.single(filename="moss.csv")
plotweb(col=c("red", "green", "blue", "yellow"), radii=c(5,10,12,12))
}}

