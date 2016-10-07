\name{CanWeather}
\alias{CanWeather}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Canadian Weather data}
\description{Data on temperature throughout the year at 35 Canadian locations, originally form the \code{fda} package.  
}

\usage{
data(canWeather)
}
%- maybe also `usage' for other objects documented here.
\format{The \code{CanWeather} data frame has the following 5 columns
 \describe{
\item{time}{Day of year from 1 to 365.}

\item{T}{Mean temperature for that day in centigrade.}

\item{region}{A four level factor classifiying locations as \code{Arctic}, \code{Atlantic}, \code{Continental} or \code{Pacific}.}

\item{latitude}{Degrees north of the equator.}

\item{place}{A factor with 35 levels: the names of each locagtion.}

}

}
\details{
The data provide quite a nice application of function on scalar regression. Note that the data are for a single year, so will not generally be cyclic.  
}

\source{
Data are from the \code{fda} package. 

\url{https://cran.r-project.org/package=fda}
}

\references{
Ramsay J.O. and B.W. Silverman (2006) Functional data analysis (2nd ed). Springer
}

\examples{
require(gamair);require(mgcv)
data(canWeather)
reg <- unique(CanWeather$region)
place <- unique(CanWeather$place)
col <- 1:4;names(col) <- reg
for (k in 1:35) {
  if (k==1) plot(1:365,CanWeather$T[CanWeather$place==place[k]],
            ylim=range(CanWeather$T),type="l",
	    col=col[CanWeather$region],xlab="day",ylab="temperature") else
	    lines(1:365,CanWeather$T[CanWeather$place==place[k]],
            col=col[CanWeather$region[CanWeather$place==place[k]]])
}

## Function on scalar regression.
## T(t) = f_r(t) + f(t)*latitude + e(t)
## where e(t) is AR1 Gaussian and f_r is
## a smooth for region r.
## 'rho' chosen to minimize AIC or (-ve) REML score. 

b <- bam(T ~ region + s(time,k=20,bs="cr",by=region) +
         s(time,k=40,bs="cr",by=latitude),
         data=CanWeather,AR.start=time==1,rho=.97)

## Note: 'discrete==TRUE' option even faster.

par(mfrow=c(2,3))
plot(b,scale=0,scheme=1)
acf(b$std)

}

\keyword{data}%-- one or more ...










