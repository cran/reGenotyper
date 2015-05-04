\name{optimalGT}
\alias{optimalGT}

\title{
Compute the best-fitted genotype data based on the phenotype
}
\description{
This function provides the estimated genotype from the phenotype data.
This is a subfunction used in \code{reGenotyper}
}
\usage{
optimalGT(delta.t.mat.allmk.list, gt0, gt.thres = 0, optGTplot = FALSE)
}
\arguments{
  \item{delta.t.mat.allmk.list}{
a list with length being nMK; each element is a matrix with nSample by nSigGene;
each element matrix is deltaT for each sigGene(row) when  genotype of sample i (column) is perturbed;   
}
  \item{gt0}{
original genotype data
}
  \item{gt.thres}{
threshold to decide if thr original genotype is correct
}
  \item{optGTplot}{
If TRUE it produces a plot of the genotype with two colors: green and red color indicate the original genotype of a sample (column) at certain  marker (row) is correct or correct, respectively.
}
}

\references{
Li Y et al, reGenotyper: detecting mislabeled samples in genetic data (submitted) 
}
\author{
Yang Li <yang.li@rug.nl>
}

\seealso{
\code{\link{reGenotyper}}
}
\keyword{method}

