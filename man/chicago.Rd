\name{chicago}
\alias{chicago}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Chicago air pollution and death rate data}
\description{ Daily air pollution and death rate data for Chicago.}
\usage{
data(chicago)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 7 columns and 5114 rows. Each row refers to one day.
The columns are:
\itemize{
\item{death}{ total deaths (per day).}
\item{pm10median}{median particles in 2.5-10 per cubic m}
\item{pm25median}{median particles < 2.5 mg per cubic m (more dangerous).}
\item{o3median}{Ozone in parts per billion}
\item{so2median}{Median Sulpher dioxide measurement}
\item{time}{time in days}
\item{tmpd}{temperature in fahrenheit}
}}

\details{ See the \code{NMMAPSdata} package for fuller details. Note that
there are missing values in some fields.
}
 
\source{ 
Roger D. Peng, Leah J. Welty and Aiden McDermott. R package NMMAPSdata.
}

\references{
Peng, R.D. and Welty, L.J. (2004) The NMMAPSdata package. R News 4(2).

Wood, S.N. (2006) Generalized Additive Models: An Introduction with R

\url{http://www.ihapss.jhsph.edu/data/NMMAPS/R/} 
}

\keyword{data}










