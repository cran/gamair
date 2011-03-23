\name{gamair-package}
\alias{gamair-package}
\alias{gamair}
\docType{package}
\title{
Data + scripts for `GAMs: An Introduction with R'
}
\description{
This package contains the data sets used in the book
\emph{Generalized Additive Models: An Introduction with R}, which covers linear and
generalized linear models, GAMs as implemented in package \code{mgcv} and
mixed model extensions of these.

The script files for the book can be found in the 'scripts' folder of 
the 'inst' folder of the source package. They have been modified slightly to 
work with recent versions of mgcv (e.g. >= 1.7-0).
}
\details{

Each dataset has its own help page, which describes the dataset, and
gives the original source and associated references. All datasets have been
reformatted into standard R data frames. Some smaller datasets from the book
have not been included. Datasets from other R packages have not been
included, with the exception of a distillation of one set from the 
\code{NMMAPSdata} package.

Index:
\preformatted{
bird                    Bird distribution data from Portugal
blowfly                 Nicholson's Blowfly data
brain                   Brain scan data
cairo                   Daily temperature data for Cairo
chicago                 Chicago air pollution and death rate data
chl                     Chlorophyll data
co2s                    Atmospheric CO2 at South Pole
coast                   European coastline from -11 to 0 East and from
                        43 to 59 North.
engine                  Engine wear versus size data
gamair                  Generalized Additive Models: An Introduction
                        With R
harrier                 Hen Harriers Eating Grouse
hubble                  Hubble Space Telescope Data
ipo                     Initial Public Offering Data
mack                    Egg data from 1992 mackerel survey
mackp                   Prediction grid data for 1992 mackerel egg
                        model
sole                    Sole Eggs in the Bristol Channel
sperm.comp1             Sperm competition data I
sperm.comp2             Sperm competition data II
wine                    Bordeaux Wines
}

}
\author{
Simon Wood <simon@r-project.org>

Maintainer: Simon Wood <simon@r-project.org>

}
\references{
Wood, S.N. (2006) \emph{Generalized Additive Models: An Introduction with R}, CRC
}
\keyword{ package }
\keyword{data}
\seealso{
\code{\link[mgcv:mgcv-package]{mgcv}} 
}
\examples{
library(help=gamair)
}
