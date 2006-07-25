\name{mack}
\alias{mack}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Egg data from 1992 mackerel survey}
\description{ The data relate to the distribution of mackerel eggs and were collected as part of the 1992 mackerel survey aimed at assessing the mackerel spawning stock biomass using the daily egg production method. }

\usage{
data(mack)
}
%- maybe also `usage' for other objects documented here.
\format{ A data frame with 16 columns. Each row corresponds to one sample of 
eggs. 
 
\item{egg.count}{The number of stage I eggs in this sample.}

\item{egg.dens}{The number of stage I eggs per square metre of sea surface, produced per day. This is calculated from \code{egg.count} and other information about sampling net size, and egg stage duration.}

\item{b.depth}{The sea bed depth at the sampling location.}

\item{c.dist}{The distance from the sample location to the 200m contour measured in degrees as if degrees latitude equalled degrees longitude, which actually they don't.}

\item{lon}{The longitude of the sample station in degrees east.}

\item{lat}{The latitude of the sample station in degrees north.}

\item{time}{The time of day (in hours) at which the sample was taken.}

\item{salinity}{The salinity (saltiness) of the water at the sampling location.}

\item{flow}{Reading from the flow meter attached to the sampling net - used for calibration.}

\item{s.depth}{The depth that the sampling net started sampling from (the net is dropped to this depth and then hauled up to the surface, filtering eggs etc out of the water as it goes).}

\item{temp.surf}{The temperature at the sea surface at the sampling location.}

\item{temp.20m}{The temperature 20m down at the sampling location.}

\item{net.area}{The area of the sampling net in square metres.}

\item{country}{A code identifying the country responsible for the boat that took  this sample.}

\item{vessel}{A code identifying the boat that took this sample.}

\item{vessel.haul}{A code uniquely identifying this sample, given that the vessel is known.}

  
}
\details{ At each of a number of stations located as defined in \code{lon}
and \code{lat}, mackerel eggs were sampled by hauling a fine net up from deep below the sea surface to the sea surface. The egg count data are obtained from the resulting samples, and these have been converted to (stage I) eggs produced per metre squared per day - the egg density data. Other possibly useful predictor variable information has been recorded, along with identification information, and some information that is probably useless!  
}

\source{ The data are effectively a combination of datasets \code{mackerel}
and \code{smacker} from the \code{sm} library. They were originally analyzed
using GAMs by:

Borchers, D.L., S.T. Buckland, I.G. Priede and S. Ahmadi (1997) "Improving the precision of the daily egg 
production method using generalized additive models". Can. J. Fish. Aquat. Sci. 54:2727-2742. 
}

\examples{
data(mack)
# plot the egg densities against location
plot(mack$lon,mack$lat,cex=0.2+mack$egg.dens/150,col="red")
}

\keyword{data}%-- one or more ...










