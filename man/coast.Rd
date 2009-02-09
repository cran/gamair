\name{coast}
\alias{coast}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{European coastline from -11 to 0 East and 
from 43 to 59 North}
\description{ The data are longitudes (degrees E) and latitudes (degrees N) defining points that can be joined up to get the European coastline in the rectangle (-11E,43N)-(0E,59N). Discontinuous sections of coast are separated by NA's. 
}
\usage{
data(coast)
}
%- maybe also `usage' for other objects documented here.
\format{ A data frame with 2 columns.
\itemize{ 
\item{lon}{Longitude in degrees East for points used to define the coast.}

\item{lat}{Latitude in degrees North for points used to define the coast.}
}}
\details{ \code{lon}, \code{lat} together define the co-ordinates of points that can be joined up in order to 
plot the coastline. The original data come from the NOAA www site given below,
but have been substantially thinned, to a much lower resultion than the source.
}

\references{ 
http://rimmer.ngdc.noaa.gov/coast/
}

\author{ Simon Wood.
 }

\examples{
data(coast)
# plot the entire coast .....
plot(coast$lon,coast$lat,type="l")
# or draw it clipped to  whatever the current plot is....
lines(coast$lon,coast$lat,col="blue")
}

\keyword{data}%-- one or more ...










