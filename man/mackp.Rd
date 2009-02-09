\name{mackp}
\alias{mackp}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Prediction grid data for 1992 mackerel egg model}
\description{ This data frame provides a regular grid of values of some predictor variables useful for modelling mackerel egg abundances. Its main purpose is to enable mackerel egg densities to be predicted over a regular spatial grid within the area covered by the 1992 mackerel egg survey (see \code{mack}), using a fitted generalised additive model.
}
\usage{
data(mackp)
}
%- maybe also `usage' for other objects documented here.
\format{
 A data frame with 5 columns. Each row corresponds to one spatial location within the survey area. 
 The columns are as follows:
\itemize{
\item{lon}{Longitude of the gridpoint in degrees east}

\item{lat}{Latitude of the gridpoint in degrees north.}

\item{b.depth}{The sea bed depth at the gridpoint.}

\item{c.dist}{The distance from the gridpoint to the 200m sea bed depth contour.}

\item{salinity}{Salinity interpolated onto the grid (from \code{mack} measurements).}

\item{temp.surf}{Surface temperature interpolated onto grid (from \code{mack} data).}

\item{temp.20m}{Temperature at 20m interpolated from \code{mack} data.}

\item{area.index}{ An indexing vector that enables straightforward copying of
the other variables into a matrix suitable for plotting against longitude and
lattitude using \code{image()}. See the example below.}
}}

\details{ The grid is defined on a series of 1/4 degree lon-lat squares.
}
\references{
Borchers, D.L., S.T. Buckland, I.G. Priede and S. Ahmadi (1997) "Improving the precision of the daily egg 
production method using generalized additive models". Can. J. Fish. Aquat. Sci. 54:2727-2742. 
}
\examples{
## example of how to use `area.index' to paste gridded info.
## into a square grid (of NA's) for plotting
data(mackp)
lon<-seq(-15,-1,1/4);lat<-seq(44,58,1/4)
zz<-array(NA,57*57)
zz[mackp$area.index]<-mackp$b.depth
image(lon,lat,matrix(zz,57,57))
}
\keyword{data}










