\name{harrier}
\alias{harrier}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Hen Harriers Eating Grouse}
\description{Data on the rate at which Hen Harriers consume Grouse as a
function of Grouse density.
}
\usage{
data(harrier)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 2 columns and 37 rows. The columns are:
\itemize{
\item{Grouse.Density}{Density of Grouse per square kilometre.}
\item{Consumption.Rate}{Number of Grouse consumed per Hen Harrier per day.}
}}

\details{Data have been read from Figure 1 of Asseburg et al. (2005)}

\source{ 

Asseburg, C., S. Smout, J. Matthiopoulos, C. Fernandez, S. Redpath,
S. Thirgood and J. Harwood (2005) The functional response of a generalist
predator. Web preprint 

}

\references{

Wood, S.N. (2006) Generalized Additive Models: An Introduction with R. CRC

}

\examples{
  data(harrier)
  with(harrier,plot(Grouse.Density,Consumption.Rate))
}

\keyword{data}










