\name{meh}
\alias{meh}
\alias{med}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Data from 2010 horse mackerel and mackerel egg survey}
\description{ The data relate to the distribution of horse mackerel (\code{meh}, Trachurus trachurus) eggs and mackerel (\code{med}, Scomber scombrus) eggs and were collected as part of the 2010 mackerel survey aimed at assessing the mackerel spawning stock biomass using the daily egg production method. }

\usage{
data(med)
data(meh)
}
%- maybe also `usage' for other objects documented here.
\format{ A data frame with the following columns. Each row corresponds to one sample of eggs. 
 \describe{
\item{count}{The number of stage I eggs in this sample.}

\item{la}{sample station latitude}

\item{lo}{sample station longitude}

\item{vol}{volume of water sampled}

\item{T.surf}{surface temperature in centigrade}

\item{T.x}{temperature at x metres depth.}

\item{T1.x}{Second temperature measurements.}

\item{Sal20}{Salinity at 20m depth}

\item{b.depth}{seabed depth in metres for \code{med} only.}

\item{lon}{The longitude of the sample station in degrees east.}

\item{lat}{The latitude of the sample station in degrees north.}

\item{time}{The time of day (in hours) at which the sample was taken.}

\item{salinity}{The salinity (saltiness) of the water at the sampling location.}

\item{period}{sampling period}

\item{country}{Country responsible for sample}

\item{ship}{Vessel ID}

\item{DT}{sample data and time}

\item{ID}{Sample ID}

\item{gear}{type of sampling gear used}
}

The remaining fields are undocumented.
}
\details{The original data files do not always exactly match the file documentation, so these data should not be treated as definitive.  
}

\source{
ICES Eggs and Larvae Dataset 2012, ICES, Copenhagen

\url{http://www.ices.dk/}

\url{http://eggsandlarvae.ices.dk/Download.aspx}

}

\examples{
require(gamair)
par(mfrow=c(1,2))
data(meh);data(med);data(coast)
# plot the egg counts against location
plot(meh$lo,meh$la,cex=0.2+meh$count^.5/10,col="grey",
     pch=19,xlab="lo",ylab="la",main="horse mackerel")
ind <- meh$count==0
points(meh$lo[ind],meh$la[ind],cex=0.1,pch=19)
lines(coast)

# same for med
plot(med$lo,med$la,cex=0.2+med$count^.5/10,col="grey",
     pch=19,xlab="lo",ylab="la",main="mackerel")
ind <- med$count==0
points(med$lo[ind],med$la[ind],cex=0.1,pch=19)
lines(coast)

}

\keyword{data}%-- one or more ...










