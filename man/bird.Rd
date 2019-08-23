\name{bird}
\alias{bird}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Bird distribution data from Portugal}
\description{Data from the compilation of the Portuguese Atlas of Breeding Birds.}
\usage{
data(bird)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 6 columns and 25100 rows. Each row refers to one 2km by 2km
square (tetrad). The columns are:
\describe{
\item{QUADRICULA}{An identifier for the 10km by 10km square that this tetrad
belongs to.}
\item{TET}{Which tetrad the observation is from.}
\item{crestlark}{Were crested lark (or possibly thekla lark!) found (1), not
found (0) breading in this tetrad, or was the tetrad not visited (\code{NA}). }
\item{linnet}{As \code{crestlark}, but for linnet.}
\item{x}{location of tetrad (km east of an origin).}
\item{y}{location of tetrad (km north of an origin).}
}}

\details{At least 6 tetrads from each 10km square were visited, to establish
whether each species was breeding there, or not. Each Tetrad was visited twice
for one hour each visit. These data are not
definitive: at time of writing the fieldwork was not quite complete.

The data were kindly supplied by Jose Pedro Granadeiro.
}
 
\source{ 
The Atlas of the Portuguese Breeding Birds.
}

\references{

Wood, S.N. (2006, 2017) Generalized Additive Models: An Introduction with R

}

\examples{
  data(bird)
  species <- "crestlark"
  op<-par(bg="white",mfrow=c(1,1),mar=c(5,5,1,1))
  ind <- bird[[species]]==0&!is.na(bird[[species]])
  plot(bird$y[ind]/1000,1000-bird$x[ind]/1000,pch=19,cex=.3,col="white",
     ylab="km west",xlab="km north",cex.lab=1.4,cex.axis=1.3,type="n")
  polygon(c(4000,4700,4700,4000),c(250,250,600,600),col="grey",border="black")
  points(bird$y[ind]/1000,1000-bird$x[ind]/1000,pch=19,cex=.3,col="white")
  ind <- bird[[species]]==1&!is.na(bird[[species]])
  with(bird,points(y[ind]/1000,1000-x[ind]/1000,pch=19,cex=.3))
  par(op)
}

\keyword{data}










