\name{bone}
\alias{bone}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Bone marrow treatemtn survival data}
\description{Data from Klein and Moeschberger (2003), for 23 patients with non-Hodgkin's lymphoma.}
\usage{
data(bone)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 3 columns and 23 rows. Each row refers to one patient. The columns are:
\describe{
\item{t}{Time of death, relapse or last follow up after treatment, in days.}
\item{d}{1 for death or relapse. 0 otherwise.}
\item{trt}{2 level factor. \code{allo} or \code{auto} depending on treatment recieved.}
}}

\details{The data were collected at the Ohio State University bone marrow transplant unit. The \code{allo} treatment is bone marrow transplant from a matched sibling donor. The \code{auto} treatment consists of bone marrow removal and replacement after chemotherapy. 
}
 
\source{ 
Klein and Moeschberger (2003).
}

\references{

Klein and Moeschberger (2003) Survival Analysis: techniques for censored and truncated data.

Wood, S.N. (2017) Generalized Additive Models: An Introduction with R

}

\examples{
## example of fitting a Cox PH model as a Poisson GLM... 
## First a function to convert data frame of raw data
## to data frame of artificial data...

psurv <- function(surv,time="t",censor="d",event="z") {
## create data frame to fit Cox PH as Poisson model.
## surv[[censor]] should be 1 for event or zero for censored.   
  if (event \%in\% names(surv)) warning("event name already in use in data frame")
  surv <- as.data.frame(surv)[order(surv[[time]]),] ## ascending time order
  et <- unique(surv[[time]][surv[[censor]]==1]) ## unique times requiring record
  es <- match(et,surv[[time]]) ## starts of risk sets in surv
  n <- nrow(surv); t <- rep(et,1+n-es) ## times for risk sets
  st <- cbind(0,surv[unlist(apply(matrix(es),1,function(x,n) x:n,n=n)),])
  st[st[[time]]==t&st[[censor]]!=0,1] <- 1 ## signal events 
  st[[time]] <- t ## reset time field to time for this risk set
  names(st)[1] <- event
  st
} ## psurv

## Now fit the model...
require(gamair)
data(bone);bone$id <- 1:nrow(bone)
pb <- psurv(bone); pb$tf <- factor(pb$t)
## Note that time factor tf should go first to ensure
## it has no contrasts applied... 
b <- glm(z ~ tf + trt - 1,poisson,pb)
drop1(b,test="Chisq") ## test for effect - no evidence

## martingale and deviance residuals
chaz <- tapply(fitted(b),pb$id,sum) ## cum haz by subject
mrsd <- bone$d - chaz
drsd <- sign(mrsd)*sqrt(-2*(mrsd + bone$d*log(chaz)))

## Estimate and plot survivor functions and standard
## errors for the two groups...

te <- sort(unique(bone$t[bone$d==1])) ## event times

## predict survivor function for "allo"...
pd <- data.frame(tf=factor(te),trt=bone$trt[1])
fv <- predict(b,pd)
H <- cumsum(exp(fv)) ## cumulative hazard
plot(stepfun(te,c(1,exp(-H))),do.points=FALSE,ylim=c(0,1),xlim=c(0,550),
     main="black allo, grey auto",ylab="S(t)",xlab="t (days)")
## add s.e. bands...     
X <- model.matrix(~tf+trt-1,pd)
J <- apply(exp(fv)*X,2,cumsum)
se <- diag(J\%*\%vcov(b)\%*\%t(J))^.5
lines(stepfun(te,c(1,exp(-H+se))),do.points=FALSE,lty=2)
lines(stepfun(te,c(1,exp(-H-se))),do.points=FALSE,lty=2)

## same for "auto"...
pd <- data.frame(tf=factor(te),trt=bone$trt[23])
fv <- predict(b,pd); H <- cumsum(exp(fv))
lines(stepfun(te,c(1,exp(-H))),col="grey",lwd=2,do.points=FALSE)
X <- model.matrix(~tf+trt-1,pd)
J <- apply(exp(fv)*X,2,cumsum)
se <- diag(J\%*\%vcov(b)\%*\%t(J))^.5
lines(stepfun(te,c(1,exp(-H+se))),do.points=FALSE,lty=2,col="grey",lwd=2)
lines(stepfun(te,c(1,exp(-H-se))),do.points=FALSE,lty=2,col="grey",lwd=2)

}

\keyword{data}










