\name{mpg}
\alias{mpg}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Data on automobile efficiency on town streets and highway.}
\description{Fuel efficiency in miles per gallon for a variety of cars in the USA. }
\usage{
data(mpg)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame listing fuel efficiency and other car characteristics including
\describe{
\item{symbol}{Insurers measure of relative riskiness of car from -3 (safe) to 3 (risky)}
\item{loss}{average insurance loss payment per insured vehicle per year.}
\item{hw.mpg}{Fuel consumption on highway as miles per US gallon.}
\item{city.mpg}{Fuel consumption in town as miles per US gallon.}
\item{make}{Name of car maker.}
\item{fuel}{2 level factor. \code{gas} or \code{diesel}.}
\item{aspir}{2 level factor. \code{std} or \code{turbo}.}
\item{doors}{2 level factor. \code{two} or \code{four}.}
\item{style}{Factor indicating style of car.}
\item{drive}{3 level factor indicating front, rear or all wheel drive: \code{fwd}, \code{rwd} or \code{4wd}.}
\item{eng.loc}{Engine location}
\item{wb}{wheel base in inches}
\item{length}{in inches}
\item{width}{in inches}
\item{height}{in inches}
\item{weight}{in pounds}
\item{eng.type}{Factor giving engine type}
\item{cylinders}{Factor for number of cylinders}
\item{eng.cc}{cubic capicity of engine in cubic inches.}
\item{fuel.sys}{fuel system}
\item{bore}{in inches}
\item{stroke}{in inches}
\item{comp.ratio}{compression ratio}
\item{hp}{horse power}
\item{rpm}{maximum RPM}
\item{price}{in US dollars}
}}

\details{Data were collected by Jeffrey C. Schlimmer from
     1) 1985 Model Import Car and Truck Specifications, 1985 Ward's
        Automotive Yearbook.
     2) Personal Auto Manuals, Insurance Services Office, 160 Water
        Street, New York, NY 10038 
     3) Insurance Collision Report, Insurance Institute for Highway
        Safety, Watergate 600, Washington, DC 20037
}
 
\source{ 
\url{https://archive.ics.uci.edu/ml/datasets/Automobile}
}

\references{

Wood, S.N. (2006) Generalized Additive Models: An Introduction with R

}

\examples{
require(gamair);require(mgcv)
data(mpg)
b <- gam(list(city.mpg~fuel+style+drive+s(weight)+s(hp)+s(make,bs="re"),
          hw.mpg~fuel+style+drive++s(weight)+s(hp)+s(make,bs="re")),
          family=mvn(d=2),data=mpg)
plot(b,pages=1,scheme=1)
}

\keyword{data}










