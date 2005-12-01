\name{sperm.comp2}
\alias{sperm.comp2}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Sperm competition data II}
\description{Data relating average number of sperm ejaculated per copulation
to physical characterisics of partners involved, for 24 heterosexual couples
from Manchester, UK. }
\usage{
data(sperm.comp2)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 10 columns and 24 rows. The columns are:
 \item{pair}{ an identifier for the couple. These labels correspond to those
 given in \code{\link{sperm.comp1}}.}
\item{n}{ the number of copulations over which the average sperm count has
been calculated.}
\item{count}{ the average sperm count in millions, per copulation.}
\item{f.age}{ age of the female, in years.}
\item{f.height}{ height of the female, in cm.}
\item{f.weight}{weight of the female, in kg.}
\item{m.age}{age of the male, in years.}
\item{m.height}{height of the male, in cm.}
\item{m.weight}{weight of the male, in kg.}
\item{m.vol}{volume of one male teste in cubic cm.}
}

\details{ In the source article, these data are used to argue that males
invest more reproductive effort in heavier females, on the basis of regression
modelling. It is worth checking for outliers.
}
 
\source{
Baker, RR and Bellis M.A. (1993) 
`Human sperm competition: ejaculate adjustment by males and the function
of masturbation'.
Animal behaviour 46:861-885
}

\keyword{data}










