\name{reGenotyper}
\alias{reGenotyper}

\title{
Detecting mislabeled samples, recovering the optimal genotypes for genetical genomics experiments
}
\description{
Main function to detect mislabeled samples using perturbation strategy
}
\usage{
reGenotyper(phenotype, genotype, fileName = "test", thres = 0.9, optGT = TRUE,
            optGTplot = FALSE,optGT.thres = 0, permu = FALSE, n.permu = 10, 
            wls.score.permu = NULL, process = TRUE, t.thres = 1.5, GT.ref=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{phenotype}{
phenotype data: a nTrait-by-nSample matrix 
}
  \item{genotype}{
genotype data: a nMarker-by-nSample matrix with two allels being 0 and 1 (or A
and B) or three allels being 0, 0.5 and 1 (or, A, H, and B), where 0.5 (or H)
represents heterozygous allele.
}
  \item{fileName}{
output file name. If NULL (default) it produces files starting with "test"
}
  \item{thres}{
probability threshold to decide if a sample is mislabled based on permutation result (Default=0.9).
}
  \item{optGT}{
recovered optimal genotype from the given phenotype
}
  \item{optGTplot}{
If TRUE it produces a plot of the genotype with two colors: green and red color indicate the original genotype of a sample (column) at certain  marker (row) is correct or correct, respectively.
}
  \item{optGT.thres}{
threshold to decide if thr original genotype is correct
}
  \item{permu}{
If TRUE permutation is performed to estimate the likelihood of each sample being mislabled.
}
  \item{n.permu}{
The number of permutation to be performed. \code{n.permu}=1000 is usually recommended for a reliable estimate but it can take long time. 
}
  \item{wls.score.permu}{
A vector with element being WLS score from permutation which can be obtained using function permutation:
e.g. wls.score.permu <- permutation(phenotype,genotype,n.permu=1000,process=TRUE,fileName="test",t.thres=3)
}
  \item{process}{
If TRUE, it prints which step has been finished. Default = TRUE.
}
  \item{t.thres}{
threshold for deciding significant QTLs (t.test) that will be used to detecting mislabled samples
}
\item{GT.ref}{
reference gentoype data from a large collection of strains. This is used to search for best mached gentoype for identified mislabeled samples. Default= NULL. If GT.ref is NULL, the orginal input genotype data willl beused to seach for best matched genotype for identified mislabeled samples.
}
}

\value{
 An object of class wls. A list with elements: 
\item{wls.score }{a vector with length being the number of samples; each element gives the score for the sample being mislabeled}
\item{wls.names}{the names of sample that being detected as mislabeled using the Z score method}
\item{gt.opt}{recovered the optimal genotype based on the given phenotype data}
\item{wls.pValue}{p value for each sample using permutation, only when \code{permu}=TRUE}
\item{wls.score.permu}{a vector with the length of n.permu. Each element represents the score of a randomly selected sample with permutated genotype, only when \code{permu}=TRUE. }
\item{thres}{threshold used probability threshold to decide if a sample is mislabled based on permutation result}
}
\references{
Li Y. et al, reGenotyper: detecting mislabeled samples in genetic data (submitted) 
}
\author{
Yang Li <yang.li@rug.nl>
}

\seealso{
 \code{\link{optimalGT}}, \code{\link{permutation}},\cr 
  \code{\link{tMatFunction}},\code{\link{genotype}},\cr
  \code{\link{phenotype}} \cr
  
}
\examples{
  library(reGenotyper)
  #load example genotype and phenotype data
  data(genotype)
  data(phenotype)
  ### For this test dataset 5 permutations is enough. In real case at least few hundreds 
  ### of permutations are needed.
  wlsObject <- reGenotyper(phenotype, genotype, fileName = "test", thres = 0.9, optGT = TRUE, 
  optGTplot = FALSE,   optGT.thres = 0,  permu = TRUE, n.permu = 5, wls.score.permu = NULL, 
  process = TRUE, t.thres = 1.5, GT.ref=NULL)
  ###Inspecting the output
  wlsObject
  plot(wlsObject)
  ### previous line takes around 30s to execute, you can also load the result:
  data(wlsObject)
}
\keyword{method}

