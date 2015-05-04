\name{permutation}
\alias{permutation}

\title{
performing permutation for estimating the likelihood of a real sample being mislabeled.
}
\description{
a function to performing permutation for getting the distribution of score for a sample with permuted genotype.
The resutled distribution will be used to obtain the likelihood of a real sample being mislabeled.
}
\usage{
permutation(pheno, gt, n.permu, process = TRUE, fileName = "", t.thres = 1.5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pheno}{
phenotype data: a nTrait-by-nSample matrix 
}
  \item{gt}{
genotype data: a nMarker-by-nSample matrix with two allels being 0 and 1 (or A
and B) or three allels being 0, 0.5 and 1 (or, A, H, and B), where 0.5 (or H)
represents heterozygous allele.
}
  \item{n.permu}{
The number of permutation to be performed. \code{n.permu}=1000 is usually recommended for a reliable estimate but it can take long time.
}
  \item{process}{
If TRUE, it prints which step has been finished. Default = TRUE.
}
  \item{fileName}{
name for temporary output file during computing process. Default=NULL
}
  \item{t.thres}{
threshold for deciding significant QTLs (t.test) that will be used to detecting mislabled samples
}
}
\details{
This function can be used either directly or by the main function \code{reGenotyper}.
}
\value{
a vector with the length of n.permu. Each element represents the score of a randomly selected sample with permutated genotype, only when \code{permu}=TRUE. 
}
\references{
Li Y. et al, reGenotyper: detecting mislabeled samples in genetic data (submitted) 
}
\author{
Li Y. et al, reGenotyper: detecting mislabeled samples in genetic data (submitted) 
}
\seealso{
\code{\link{reGenotyper}}
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.
}

\keyword{ method }

