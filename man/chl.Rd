\name{chl}
\alias{chl}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Chlorophyll data}
\description{Data relating to the callibration of remote sensed satellite
data. The SeaWifs satellite provides estimates of chlorophyll concentration
at the ocean surface from measurements of ocena surface colour. It is of
interest to attempt to use these data to predict direct bottle measurements of
chl. conc.}
\usage{
data(chl)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 6 columns and 13840 rows. The columns are:
\item{lon}{longitude}
\item{lat}{latitude}
\item{jul.day}{Julian day (i.e. day of year starting at Jan 1st.)}
\item{bath}{Ocean depth in metres.}
\item{chl}{direct chlorophyll concerntration measured at given location from
a bottle sample.}
\item{chl.sw}{chl. conc. as measured by Seawifs Satellite}
}


\source{
\url{http://seawifs.gsfc.nasa.gov/SEAWIFS}

and the World Ocean Database.
}

\references{

Wood (2006) Generalized Additive Models: An Introduction With R. CRC

}

\examples{
  data(chl)
  with(chl,plot(chl,chl.sw))
}

\keyword{data}










