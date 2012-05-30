\name{foodweb}
\alias{foodweb-package}
\docType{package}
\title{
Visualisation and Analysis of Food Web Networks
}
\description{
Calculates twelve commonly-used, basic measures of food web network structure from binary, predator-prey matrices: species richness, connectance, total number of links, link density, number of trophic positions, predator:prey ratio, and fraction of cannibals, herbivores, top species and intermediate species.  Employs food web language in the code and output, translates between a couple of common food web formats, can handle food webs consisting of multiple levels, and can automate the analysis for a large number of webs. The program produces 3-dimensional graphs of high quality that can be customized by the user.
}
\details{
\tabular{ll}{
Package: \tab foodweb\cr
Version: \tab 1-0\cr
Depends: \tab rgl\cr
License: \tab GPL  (>=  2)\cr
Collate: \tab "functions.R" "Asym to Sym.R" "Calculations.R" "Network plot.R"\cr
}
The package's contains 5 functions: analyse.single, analise.list, analyse.seq, mat.2.list and plotweb. See their helpfiles for more information on how to use them.

}
\author{
Giselle Perdomo

Maintainer: Giselle Perdomo <gisselle_p@yahoo.com>
}
\references{
Perdomo G., Sunnucks P. and Thompson R.M. (submitted). food web: an open-source program for the visualisation and analysis of compilations of complex food webs. Environmental Modelling and Software.
}
\keyword{ package }
\seealso{
\code{\link{analyse.single}}
\code{\link{analyse.list}}
\code{\link{analyse.seq}}
\code{\link{plotweb}}
\code{\link{mat.2.list}}
}
