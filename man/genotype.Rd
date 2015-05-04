\name{genotype}
\docType{data}
\alias{genotype}
\title{Example genotype data}
\description{
\code{genotype}: example data of \code{genotype} for each marker (rownames) 
and 60 strains such as recombinant inbred lines (RIL) (columnnames), 
with numeric values 1 and 0 (or A and B).
In total there are 5 chromosomes with 20cM in length for each chromosome.
In each chromosome, 20 markers are evenly distributed on each chromosome.
As an example, 10 percent (=6) samples were added as mislabeled sample by swapping.
\preformatted{
data(genotype)
genotype[1:5,1:5]}
\tabular{lrrrrr}{
            \tab Sample1 \tab Sample2 \tab Sample3   \tab Sample4   \tab Sample5 \cr
C1M1        \tab 1    \tab 0    \tab 0      \tab 1      \tab 0    \cr
C1M2        \tab 1    \tab 0    \tab 0      \tab 1      \tab 0    \cr
C1M3        \tab 1    \tab 0    \tab 0      \tab 1      \tab 0    \cr
C1M4        \tab 1    \tab 0    \tab 0      \tab 1      \tab 0    \cr
C1M5        \tab 1    \tab 0    \tab 0      \tab 1      \tab 0    \cr
}
}
\usage{
data(genotype)
}
\format{ 
\code{genotype}: 120 markers by 100 samples. 
}

\author{ 
 Yang Li <yang.li@rug.nl>
}

\examples{
  ##load the data
  data(genotype)
  
  ##view part of the the data
  genotype[1:5,1:5]
}
\keyword{datasets}
