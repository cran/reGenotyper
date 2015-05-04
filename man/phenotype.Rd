\name{phenotype}
\docType{data}
\alias{phenotype}
\title{Example phenotype data}
\description{
\code{phenotype}: example data of \code{phenotype} for 500 genes (row) and 60 strains such as recombinant inbred lines (column).
\preformatted{
data(phenotype)
phenotype[1:5,1:5]}\
\tabular{lrrrrr}{
            \tab Sample1 \tab Sample2 \tab Sample3   \tab Sample4   \tab Sample5 \cr
Gene1        \tab 6.31    \tab 8.25    \tab 7.31      \tab 5.18      \tab 9.40    \cr
Gene2        \tab 7.12    \tab 5.67    \tab 5.14      \tab 7.78      \tab 6.49    \cr
Gene3        \tab 8.53    \tab 7.66    \tab 6.01      \tab 9.08      \tab 6.96    \cr
Gene4        \tab 6.59    \tab 9.29    \tab 7.38      \tab 7.13      \tab 7.88    \cr
Gene5        \tab 7.88    \tab 6.57    \tab 5.68      \tab 7.79      \tab 5.28    \cr
}
}
\usage{
data(phenotype)
}
\format{ 
\code{phenotype}: 500 genes by 100 samples (Strains). 
}

\author{ 
 Yang Li <yang.li@rug.nl> 
}

\examples{
  ##load the data
  data(phenotype)
  
  ##view part of the the data
  phenotype[1:5,1:5]
}
\keyword{datasets}
