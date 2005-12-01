\name{co2s}
\alias{co2s}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Atmospheric CO2 at South Pole}
\description{Monthly CO2 concentration in parts per million at the South Pole.
}
\usage{
data(co2s)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 3 columns and 507 rows. The columns are:
\item{co2}{atmospheric CO2 concentration in parts per million}
\item{c.month}{cumulative number of months since Jan 1957}
\item{month}{month of year}
}


\source{
\url{http://cdiac.esd.ornl.gov/trends/co2/sio-spl.htm}
}

\references{

Keeling C.P. and T.P Whorf (2000) Atmospheric CO2 records from sites in the
SIO air sampling network. In Trends: A Compedium of Data on Global
Change. Carbon Dioxide Analyis Center, Oak Ridge National Laboratory,
U.S. Department of Energy, Oak Ridge Tenn., USA

Wood (2006) Generalized Additive Models: An Introduction With R. CRC

}

\examples{
  data(co2s)
  with(co2s,plot(c.month,co2,type="l",ylab=
  expression(paste(CO[2]," in ppm.")),xlab="Month since Jan. 1957"))
}

\keyword{data}










