\name{ipo}
\alias{ipo}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Initial Public Offering Data}
\description{ Data on the relationship between the number of initial public
offerings (of shares in a company) and other potentially important variables.
It is probably necessary to lag some of the explanatory variables.
}
\usage{
data(ipo)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 6 columns and 156 rows. The columns are:
\itemize{
\item{n.ipo}{number of initial pubilc offerings each month.}
\item{ir}{the average initial return (volume weighted): this is the percentage
difference between the offer proce of shares and the price after the first day
of trading.}
\item{dp}{the average percentage difference between middle of the price range
proposed at first filing of the IPO, and the eventual offer price.}
\item{reg.t}{the average time between filing and offer.}
\item{t}{time, in months.}
\item{n.ipo}{month of the year (1 = January).}
}}

\source{ 

\url{http://schwert.ssb.rochester.edu}

}

\references{

Lowry, M. and G.W. Schwert (2002) IPO market cycles: Bubbles or sequential
learning? The Journal of Finance 67(3), 1171-1198

Wood, S.N. (2006) Generalized Additive Models: An Introduction with R. CRC

}

\examples{
  data(ipo)
  pairs(ipo)
}

\keyword{data}










