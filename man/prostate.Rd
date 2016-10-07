\name{prostate}
\alias{prostate}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Prostate cancer screening data}
\description{Protein mass spectographs for patients with normal, benign enlargement and cancer of the prostate gland. 
}
\usage{
data(prostate)
}
%- maybe also `usage' for other objects documented here.
\format{
A three item list
\describe{
 \item{type}{1 for normal, 2 for benign enlargement and 3 for cancerous.}
\item{intensity}{A matrix with rows corresponding to measurements in \code{type}. Each row is a normalized spectral intensity measurement for the protein mass given in \code{MZ} }
\item{MZ}{ Matrix corresponding to \code{intensity} giving the protein masses in Daltons.Actually all rows are identical.}
}
}
\details{ See the source article for fuller details. The intensity data here have been smoothed so that each measurement is an average of 40 adjacent measurements from the raw spectrum. The intensity data have also been rounded to 3 significant figures. This pre-processing was done to reduce the dataset size to something reasonable for distribution.
}
 
\source{Originally from the msProstate package version 1.0.2.
}


\references{Adam, B-L. Y. Qu, J.W. Davis et al. (2002) Serum Protein Fingerprinting Coupled with a Pattern-matching Algorithm Distinguishes Prostate Cancer from Benign Prostate
Hyperplasia and Healthy Men. Cancer Research 62:3609-3614
}

\examples{
require(gamair);require(mgcv)
data(prostate)
## plot some spectra...
par(mfrow=c(2,3),mar=c(5,5,3,1))
ind <- c(1,163,319)
lab <- list("Healthy","Enlarged","Cancer")
for (i in 1:3) {
  plot(prostate$MZ[ind[i],],prostate$intensity[ind[i],],type="l",ylim=c(0,60),
  xlab="Daltons",ylab="Intensity",main=lab[[i]],cex.axis=1.4,cex.lab=1.6)
  lines(prostate$MZ[ind[i],],prostate$intensity[ind[i]+2,]+5,col=2)
  lines(prostate$MZ[ind[i],],prostate$intensity[ind[i]+4,]+10,col=4)
}
## treat as ordered cat control, bph, cancer
b <- gam(type ~ s(MZ,by=intensity,k=100),family=ocat(R=3),
         data=prostate,method="ML")
## results...
pb <- predict(b,type="response")
plot(b,rug=FALSE,scheme=1,xlab="Daltons",ylab="f(D)",
cex.lab=1.6,cex.axis=1.4,main="a")
plot(factor(prostate$type),pb[,3],cex.lab=1.6,cex.axis=1.4,main="b")
qq.gam(b,rep=100,lev=.95,cex.lab=1.6,cex.axis=1.4,main="c")
}
\keyword{data}










