\name{aral}
\alias{aral}
\alias{aral.bnd}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Aral sea remote sensed chlorophyll data}
\description{SeaWifs satellite chlorophyll measurements for the 38th 8-day observation period of the year in the Aral sea, averaged over 1998-2002, along with an Aral sea boundary file. 
 }

\usage{
data(aral)
data(aral.bnd)
}
%- maybe also `usage' for other objects documented here.
\format{The \code{aral} data frame has the following columns
 \describe{
\item{lon}{longitude of pixel or boundary vertex.}
\item{lat}{latitude of pixel or boundary vertex.}
\item{chl}{chlorophyll measurement}

\item{exra}{The highest rainfall observed in any 12 hour period in that year, in mm. }

}}

\details{Trying to smooth the data with a conventional smoother, such as a thin plate spline, leads to linkage between the two arms of the sea, which is clearly an artefact. A soap film smoother avoids this problem.

}

\source{
\url{https://seawifs.gsfc.nasa.gov/}
}

\examples{
require(gamair);require(mgcv)
data(aral); data(aral.bnd)

## define some knots...
knt <- list(lon=c(58.55,59.09,59.36,59.64,59.91,60.18,58.27,58.55,59.09,
59.36,59.64,59.91,60.18,60.45,58.27,58.55,58.82,59.09,59.36,59.64,59.91,
60.18,60.45,58.27,58.55,59.36,59.64,59.91,60.18,58.55,59.36,59.64,59.91,
60.18,58.55,58.82,59.36,59.64,59.91,60.18,60.45,58.82,59.09,59.64,59.91,
60.18,59.64),
lat=c(44.27,44.27,44.27,44.27,44.27,44.27,44.55,44.55,44.55,44.55,44.55,
44.55,44.55,44.55,44.82,44.82,44.82,44.82,44.82,44.82,44.82,44.82,44.82,
45.09,45.09,45.09,45.09,45.09,45.09,45.36,45.36,45.36,45.36,45.36,45.64,
45.64,45.64,45.64,45.64,45.64,45.64,45.91,45.91,45.91,45.91,45.91,46.18))

## fit soap film...
b <-  gam(chl~s(lon,lat,k=30,bs="so",xt=list(bnd=list(aral.bnd),
                nmax=150)),knots=knt,data=aral)

## plot results...
plot(b)
}

\keyword{data}%-- one or more ...










