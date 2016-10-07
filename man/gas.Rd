\name{gas}
\alias{gas}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Octane rating data}
\description{The octane rating of fuel determines its `knocking' resistance. So the higher the octane rating the higher the compression ratio that an engine can run at. Traditionally octane measurement involves comparing the knocking resistance of fuel samples to standard mixtures in special variable compression ratio engines. This is an expensive process relative to obtaining the near infra-red spectrum of a sample. It would be good to be able to predict octane rating from the spectrum.  
}
\usage{
data(gas)
}
%- maybe also `usage' for other objects documented here.
\format{
A three item list
\describe{
 \item{octane}{Octane rating of gasoline (petrol) sample. }
\item{NIR}{A matrix each row of which contains the near infra-red reflectance spectrum of the corresponding gasoline sample.}
\item{nm}{ Matrix of same dimension as \code{NIR} containing wavelengths at which measurements were taken.}
}
}
\details{A scalar-on-function regression (also known as `signal regression') works quite well for these data.
}
 
\source{Originally from the \code{pls} package

\url{https://cran.r-project.org/package=pls}
}


\examples{
require(gamair);require(mgcv)
data(gas)
## plot some spectra...
with(gas,plot(nm[1,],NIR[1,],type="l",ylab="log(1/R)",
     xlab="wavelength (nm)",col=1))
text(1000,1.2,"octane");text(1000,1.2-.1,gas$octane[1],col=1)
for (i in 2:8) { lines(gas$nm[i,],gas$NIR[i,],col=i)
  text(1000,1.2-.1*i,gas$octane[i],col=i)
}

## Fit scalar on function regression...

b <- gam(octane~s(nm,by=NIR,k=50),data=gas)

gam.check(b)

par(mfrow=c(1,2))
plot(b,scheme=1)
plot(fitted(b),gas$octane,xlab="fitted octane",
     ylab="observed octane");abline(0,1)

}
\keyword{data}










