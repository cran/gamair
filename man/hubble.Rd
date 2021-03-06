\name{hubble}
\alias{hubble}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Hubble Space Telescope Data}
\description{ Data on distances and velocities of 24 galaxies containing
Cepheid stars, from the Hubble space telescope key project to measure the
Hubble constant.}
\usage{
data(hubble)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 3 columns and 24 rows. The columns are:
\describe{
 \item{Galaxy}{ A (factor) label identifying the galaxy.}
\item{y}{ The galaxy's relative velocity in kilometres per second.}
\item{x}{ The galaxy's distance in Mega parsecs. 1 parsec is 3.09e13 km.}
}}

\details{Cepheids are variable stars which have a known relationship between 
brightness and period. Hence the distance to galaxies containing these stars
can be estimated from the observed brightness of the Cepheid, relative to its
absolute brightness as predicted by its period. The velocity of the galaxy can
be estimated from its mean red-shift.

The data can be used to get a reasonably good idea of the age of the universe. 
A data free alternative estimate of 6000 years is given in the reference (not
the source!).
}
 
\source{Tables 4 and 5 of Freedman et al. 2001. The Astrophysical Journal
553:47-72}

\references{

Freedman et al. (2001) Final results from the Hubble space telescope key
project to measure the Hubble constant. The Astrophysical Journal (553), 47-72.

http://www.icr.org/pubs/imp/imp-352.htm

NUCLEAR DECAY: EVIDENCE FOR A YOUNG WORLD
- IMPACT No. 352 October 2002
by D. Russell Humphreys, Ph.D.

Wood, S.N. (2006, 2017) Generalized Additive Models: An Introduction with R. CRC

}

\keyword{data}










