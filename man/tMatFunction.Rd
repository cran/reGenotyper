\name{tMatFunction}
\alias{tMatFunction}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
computing t statistics for each phentoype at each marker
}
\description{
A subfunction used by main function to compute the t statistic for each phenotype at each marker.
}
\usage{
tMatFunction(mytrait, mygt, fileName = "")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mytrait}{
 phenotype data: a nTrait-by-nSample matrix 
}
  \item{mygt}{
	genotype data: a nMarker-by-nSample matrix with two allels being 0 and 1 (or A and B)
      or three allels being 0, 0.5 and 1 (or, A, H, and B), where 0.5 (or H) represents
      heterozygous allele.
}
  \item{fileName}{
name for temporary output file during computing process. Default=NULL
}
}
\value{
a matrix with nTrait x nMarker with t.statistics
}
\references{
Li Y. et al, reGenotyper: detecting mislabeled samples in genetic data (submitted).\cr
Shabalin A. A., Matrix eQTL: ultra fast eQTL analysis via large matrix operations,  Bioinformatics (2012) 28 (10): 1353-1358.\cr
}
\author{
Yang Li <yang.li@rug.nl>
}
\note{
To improve the efficiency of computing, the technique of matrixeQTL (by Andrey A. Shabalin)  has been used.
}
\seealso{
\code{\link{reGenotyper}}
}
\examples{
  data(phenotype)
  data(genotype)
  t.mat <- tMatFunction(phenotype, genotype, fileName = "test")
}
\keyword{ method }

