\name{sitka}
\alias{sitka}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Sitka spruce growth data.}
\description{Tree growth data under enhanced ozone and control conditions.   
}
\usage{
data(sitka)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 1027 rows and 5 columns columns:
\describe{
\item{id.num}{identity of the tree: 1...79.}
\item{order}{time order ranking within each tree.}
\item{days}{since 1st January, 1988.}
\item{log.size}{log of tree `size'.}
\item{ozone}{1 - enhanced ozone treatment; 0 - control.}
}
}

\details{ The data were analysed in Crainiceanu CM, Ruppert D, Wand MP (2005) using WinBUGS, and in Wood (2016) using auto-generated JAGS code. 
}

\source{
The \code{SemiPar} package, from:

Diggle, P.J, Heagery, P., Liang, K.-Y. and Zeger, S.L. (2002) Analysis of Longitudinal Data (2nd ed.) OUP.

}

\references{
Wood SN (2016) "Just Another Gibbs Additive Modeller: Interfacing JAGS and mgcv" Journal of Statistical Software 75

Crainiceanu C.M., Ruppert D. and Wand M.P. (2005). "Bayesian Analysis for Penalized Spline Regression Using WinBUGS." Journal of Statistical Software, 14(14).
}

\examples{
  require(gamair); require(lattice)
  data(sitka)
  xyplot(log.size~days|as.factor(ozone),data=sitka,type="l",groups=id.num)

}

\keyword{data}










