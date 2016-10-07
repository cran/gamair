\name{larynx}
\alias{larynx}
\alias{german.polys}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Cancer of the larynx in Germany}
\description{The data give counts of deaths from cancer of the Larynx by region of Germany from 1986 to 1990, along with the expected count according to the populaiton of the region and the total deaths for the whle of Germany. A list of polygons defining the boundaries of the districts is also provided. 
 }

\usage{
data(larynx)
data(german.polys)
}
%- maybe also `usage' for other objects documented here.
\format{The \code{Larynx} data frame has the following columns
 \describe{
\item{region}{A factor with 544 levels identifying the health reporting region.}

\item{E}{Expected number of deaths according to population of region and pan-German total.}

\item{Y}{Number of deaths from cancer of the Larynx in the region.}

\item{x}{A measure of level of smoking in the region.}

}
\code{german.polys} is a list with one item per health reporting region in \code{Larynx}. The name of each item identifies the region using the same labels as \code{Larynx$region}. Each item is a two column matrix defining a polygon approximating the outline of the region it relates to. Each row of the matrix defines a polygon vertex. \code{NA} rows separate geographically disjoint areas which are part of the same region. 

}
\details{Note that the polygons are set up to exactly share vertices with their neighbours, which facilitates the auto-identification of neighbourhood structures.   
}

\source{
Data are from the INLA website:

\url{http://www.r-inla.org/}
}

\examples{
require(gamair);require(mgcv)
data(larynx);data(german.polys)

## plot raw deaths over expected deaths by region...
polys.plot(german.polys,Larynx$Y/Larynx$E)

## Fit additive model with Gauss MRF for space and smooth of
## smoking level. k somewhat low to reduce computational time
b <- gam(Y~s(region,k=60,bs="mrf",xt=list(polys=german.polys)) +
offset(log(E))+s(x,k=10),family=poisson,data=Larynx,method="REML")

summary(b)
plot(b,scheme=c(0,1),pages=1)
}

\keyword{data}%-- one or more ...










