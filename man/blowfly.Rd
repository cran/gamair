\name{blowfly}
\alias{blowfly}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Nicholson's Blowfly data}
\description{Data on a laboratory population of Blowfies, form the classic
ecological studies of Nicholson.}
\usage{
data(blowfly)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 2 columns and 180 rows. The columns are:
\item{pop}{Counts (!) of the population of adult Blowflies in one of the experiments.}
\item{day}{Day of experiment.}
}

\details{The populaiton counts are actually obtained by counting dead
blowflies and back calculating.
}

\references{
Nicholson, A.J. (1954a) Compensatory reactions of populations to stresses and
their evolutionary significance. Australian Journal of Zoology 2, 1-8.

Nicholson, A.J. (1954b) An outline of the dynamics of animal populations. 
Australian Journal of Zoology 2, 9-65.

Wood (2006) Generalized Additive Models: An Introduction With R

}

\examples{
  data(blowfly)
  with(blowfly,plot(day,pop,type="l"))
}

\keyword{data}










