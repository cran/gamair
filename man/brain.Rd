\name{brain}
\alias{brain}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Brain scan data}
\description{ Functional magnetic resonance imaging measurements for a human
brain subject to a particular experimental stimulus. One slice of the image is
provided, described as a near-axial slice through the dorsal cerebral cortex.
}
\usage{
data(brain)
}
%- maybe also `usage' for other objects documented here.
\format{
A data frame with 5 columns and 1567 rows. Each row refers to one `voxel' of
the image. The columns are:
 \item{X}{ voxel position on horizontal axis.}
\item{Y}{ voxel position on vertical axis.}
\item{medFPQ}{ median of three replicate `Fundamental 
Power Quotient' values at the voxel: this is the main measurement of brain 
activivity.}
\item{region}{code indicating which of several regions of the brain the voxel
belongs to. The regions are defined by the experimenters. \code{0} is the base
region; \code{1} is the
region of interest; \code{2} is the region activated by the experimental 
stimulus; \code{NA} denotes a voxel with no allocation.}
\item{meanTheta}{mean phase shift at the Voxel, over three measurments.}
}

\details{ See the source article for fuller details.
}
 
\source{ S. Landau et al (2003)
`Tests for a difference in timing of physiological response between two brain regions measured by using functional magnetic resonance imaging'.
Journal of the Royal Statistical Society, Series C, Applied Statistics, 53(1):63-82
}

\keyword{data}










