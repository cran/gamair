\name{cairo}
\alias{cairo}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Daily temperature data for Cairo}
\description{The average air temperature (F) in Cairo from Jan 1st 1995.}
\usage{
data(cairo)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 6 columns and 3780 rows. The columns are:
\itemize{
\item{month}{month of year from 1 to 12.}
\item{day.of.month}{day of month, from 1 to 31.}
\item{year}{Year, starting 1995.}
\item{temp}{Average temperature (F).}
\item{day.of.year}{Day of year from 1 to 366.}
\item{time}{Number of days since 1st Jan 1995.}
}}


\source{
\url{http://academic.udayton.edu/kissock/http/Weather/citylistWorld.htm}
}

\references{

Wood, S.N. (2006) Generalized Additive Models: An Introduction with R

}

\examples{
  data(cairo)
  with(cairo,plot(time,temp,type="l"))
}

\keyword{data}










