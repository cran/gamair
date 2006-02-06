\name{sole}
\alias{sole}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Sole Eggs in the Bristol Channel}
\description{ Data on Sole Egg densities in the Bristol Channel (West Coast of
England, UK.) The data are from 5 research cruises undertaken for the purpose
of measuring Sole egg densities. Samples were taken at each of a number of
sampling stations, by hauling a net vertically through the water column. Sole
eggs were counted and assigned to one of four developmental stages.  
}
\usage{
data(sole)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 7 columns and 1575 rows. The columns are:
\item{la}{latitude of sampling station}
\item{lo}{longitude of sampling station}
\item{t}{time of sampling station: actually time of midpoint of the cruise on
which this sample was taken. Measured in Julian days (days since January 1st).}
\item{eggs}{egg density per square metre of sea surface.}
\item{stage}{to which of 4 stages the sample relates.}
\item{a.0}{lower age limit for the stage (i.e. age of youngest possible egg in
this sample).}
\item{a.1}{upper age limit of this stage (i.e. age of oldest possible egg in sample).}
}

\source{ 

Dixon (2003)

}

\references{

Dixon, C.E. (2003) Multi-dimensional modelling of physiologically and
temporally structured populations. PhD thesis. University of St Andrews

Horwood, J. (1993) The Bristol Channel Sole (solea solea (L.)): A fisheries
case study. Advances in Marine Biology 29, 215-367

Horwood, J. and M. Greer Walker (1990) Determinacy of fecundity in Sole (solea
solea) from the Bristol Channel. Journal of the Marine Biology Association of
the United Kingdom. 70, 803-813.

Wood (2006) Generalized Additive Models: An Introduction with R. CRC

}

\examples{
  data(sole)
  data(coast)
  par(mfrow=c(2,3))
  sample.t <- unique(sole$t)
  stage <- 1
  for (i in 1:5)
  { egg<-sole[sole$stage==stage&sole$t==sample.t[i],] 
    plot(egg$lo,egg$la,xlab="lo",ylab="la",main=paste("day",sample.t[i]),cex=egg$eggs/4,
    xlim=range(sole$lo),ylim=range(sole$la),cex.axis=1.5,cex.lab=1.5,cex.main=1.5)
    points(egg$lo,egg$la,pch=".",col=2)
    lines(coast)
  }
}

\keyword{data}










