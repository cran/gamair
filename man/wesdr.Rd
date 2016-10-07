\name{wesdr}
\alias{wesdr}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Diabetic retinopathy in Wisconsin}
\description{The data, originally from the \code{gss} package, record whether or not diabetic patients developed retinopathy along with three possible predictors.
 }

\usage{
data(wesdr)
}
%- maybe also `usage' for other objects documented here.
\format{The \code{wesdr} data frame has the following columns
 \describe{
\item{ret}{binary variable: 1 = retinopathy, 0 = not.}

\item{bmi}{Body mass index (weight in kg divided by square of height in metres)}

\item{gly}{Glycosylated hemoglobin - the percentage of hemoglobin bound to glucuse in the blood. This reflects long term average blood glucose levels: less than 6\% is typical of non-diabetics, but is only rarely acheived by diabetic patients.}

\item{dur}{Duration of disease in years.}
}
}
\details{Retinopathy is a common problem in diabetic patients and the interst is in predicting the risk using the measured predictors.
}

\source{
Data are from Chong Gu's \code{gss} package. 
}

\examples{
require(gamair);require(mgcv)
data(wesdr)
## Smooth ANOVA model...
k <- 5
b <- gam(ret~s(dur,k=k)+s(gly,k=k)+s(bmi,k=k)+ti(dur,gly,k=k)+
         ti(dur,bmi,k=k)+ti(gly,bmi,k=k),select=TRUE,
         data=wesdr,family=binomial(),method="ML")
ow <- options(warn=-1) ## avoid complaint about zlim 
plot(b,pages=1,scheme=1,zlim=c(-3,3))
options(ow)
}

\keyword{data}%-- one or more ...










