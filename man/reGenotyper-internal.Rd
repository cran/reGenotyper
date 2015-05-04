\name{reGenotyper-internal}

\alias{plot.wls}
\alias{print.wls}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Internal Functions
}
\description{
Internal functions of reGenotyper package. 
}
\usage{
\method{print}{wls}(x,...)
\method{plot}{wls}(x,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ an object of class wls. See more: \code{\link{reGenotyper}}}
   \item{...}{arguments passed to generic plot or print function}
}
\value{
None
}
\references{
Li Y. et al, reGenotyper: detecting mislabeled samples in genetic data (submitted).\cr
}
\author{
Yang Li <yang.li@rug.nl>
}

\seealso{
\code{\link{reGenotyper}}
}
\examples{
  data(wlsObject)
  wlsObject
  plot(wlsObject)
}
\keyword{ method }

