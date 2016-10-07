\name{swer}
\alias{swer}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Swiss 12 hour extreme rainfall}
\description{Records the most extreme 12 hourly total rainfall each year for 65 Swiss weather stations. The data period is 1981-2015, although not all stations start in 1981.

 }

\usage{
data(swer)
}
%- maybe also `usage' for other objects documented here.
\format{The \code{swer} data frame has the following columns
 \describe{
\item{year}{The year of observation.}

\item{exra}{The highest rainfall observed in any 12 hour period in that year, in mm. }

\item{nao}{Annual North Atlantic Oscillation index, based on the difference of normalized sea level pressure (SLP) between Lisbon, Portugal and Stykkisholmur/Reykjavik, Iceland. Positive values are generally associated with wetter and milder weather over Western Europe.}

\item{location}{The measuring station location name.}

\item{code}{Three letter code identifying the station.}

\item{elevation}{metres above sea level.}

\item{climate.region}{One of 12 distinct climate regions.}

\item{N}{Degrees north.}

\item{E}{Degrees east. }
}}

\details{The actual extreme rainfall measurements are digitized from plots in the MeteoSwiss reports for each station. The error associated with digitization can be estimated from the error in the digitized year values, since the true values are then known exactly. This translates into a mean square error in rainfall of about 0.1\% of the station maximum, and a maximum error of about 0.3\% of station maximum. 
}

\source{
Mostly from the MeteoSwiss website:

\url{http://www.meteoswiss.admin.ch/home/climate/past/climate-extremes/extreme-value-analyses/standard-period.html?}

NAO data from:

Hurrell, James & National Center for Atmospheric Research Staff (Eds). Last modified 16 Aug 2016. "The Climate Data Guide: Hurrell North Atlantic Oscillation (NAO) Index (station-based)."

\url{https://climatedataguide.ucar.edu/climate-data/hurrell-north-atlantic-oscillation-nao-index-station-based.}


}

\examples{
require(gamair);require(mgcv)
data(swer)
## GEV model, over-simplified for speed...
system.time(b <- gam(list(exra~s(elevation)+ climate.region,
         ~s(elevation),~1),family=gevlss,data=swer))
plot(b,pages=1,scale=0,scheme=1)
}

\keyword{data}%-- one or more ...










