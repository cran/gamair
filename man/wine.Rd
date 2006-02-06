\name{wine}
\alias{wine}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Bordeaux Wines}
\description{ Data on prices and growing characteristics of 25 Bordeaux wines
from 1952 to 1998.
}
\usage{
data(wine)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 7 columns and 47 rows. The columns are:
\item{year}{year of production}
\item{price}{average price of the wines as a percentage of the 1961 price.}
\item{h.rain}{mm of rain in the harvest month.}
\item{s.temp}{Average temperature (C) over the summer preceding harvest.}
\item{w.rain}{mm of rain in the winter preceding harvest.}
\item{h.temp}{average temperature (C) at harvest.}
\item{parker}{a rating of the wine quality (see source for details).}
}

\source{ 

\url{http://schwert.ssb.rochester.edu/a425/a425.htm}

}

\references{

Wood, S.N. (2006) Generalized Additive Models: An Introduction with R. CRC

}

\examples{
  data(wine)
  pairs(wine[,-7])
}

\keyword{data}










