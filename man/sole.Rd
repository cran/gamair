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
\describe{
\item{la}{latitude of sampling station}
\item{lo}{longitude of sampling station}
\item{t}{time of sampling station: actually time of midpoint of the cruise on
which this sample was taken. Measured in Julian days (days since January 1st).}
\item{eggs}{egg density per square metre of sea surface.}
\item{stage}{to which of 4 stages the sample relates.}
\item{a.0}{lower age limit for the stage (i.e. age of youngest possible egg in
this sample).}
\item{a.1}{upper age limit of this stage (i.e. age of oldest possible egg in sample).}
}}

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

Wood (2006, 2017) Generalized Additive Models: An Introduction with R. CRC

}

\examples{
  require(gamair)
  data(sole);data(coast)
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
  ## boundary definition list and knots suitable for soap film smoothing
  bnd <- list(list(lo=c(-6.74,-5.72,-5.7 ,-5.52,-5.37,-5.21,-5.09,-5.02,
          -4.92,-4.76,-4.64,-4.56,-4.53,-4.3,-4.16,-3.8 ,-3.8,-5.04,-6.76,
	  -6.74),
          la=c(50.01,50.02,50.13,50.21,50.24,50.32,50.41,50.54,50.59,50.64,
	  50.74,50.86,51.01,51  ,51.2,51.22,51.61,51.7,51.7,50.01)))

  knt <- list(lo=c(-4.643,-5.172,-5.638,-6.159,-6.665,-6.158,-5.656,-5.149,
  -4.652,-4.154,-3.901,-4.146,-4.381,-4.9,-5.149,-5.37,-5.866,-6.36,-6.635,
  -6.12,-5.626,-5.117,-4.622,-4.695,-4.875,-5.102,-5.609,-5.652,-5.141,
  -5.354,-5.843,-6.35,-6.628,-6.127,-5.63,-5.154,-5.356,-5.652,-5.853,
  -6.123),
   la=c(51.626,51.61,51.639,51.638,51.376,51.377,51.373,51.374,51.374,
   51.376,51.379,51.226,51.129,51.194,51.083,51.147,51.129,51.151,50.901,
   50.891,50.959,50.958,50.942,50.728,50.676,50.818,50.825,50.684,50.693,
   50.568,50.564,50.626,50.397,50.451,50.443,50.457,50.325,50.193,50.322,
   50.177))

   points(knt$lo,knt$la,pch=19,col=2,cex=.6)
   lines(bnd[[1]]$lo,bnd[[1]]$la,col=2)
}

\keyword{data}










