\name{org.Hs.egUNIGENE}
\alias{org.Hs.egUNIGENE}
\alias{org.Hs.egUNIGENE2EG}
\title{Map between Entrez Gene Identifiers and UniGene cluster identifiers}
\description{
   org.Hs.egUNIGENE is an R object that provides mappings between
   entrez gene identifiers and UniGene identifiers.
}
\details{
  Each entrez gene identifier is mapped to a UniGene identifier. An \code{NA} is
  reported if the entrez gene identifier cannot be mapped to UniGene at this time. 

  A UniGene identifier represents a cluster of sequences of a gene. Using
  UniGene identifiers one can query the UniGene database for information about
  the sequences.  
  
  Mappings were based on data provided by: Entrez Gene  
  ftp://ftp.ncbi.nlm.nih.gov/gene/DATA  
  With a date stamp from the source of: 2018-Apr4

}

\references{
  \url{https://www.ncbi.nlm.nih.gov/entrez/query.fcgi?db=gene}
}

\seealso{
  \itemize{
    \item \code{\link[AnnotationDbi]{AnnotationDb-class}} for use of
          the \code{select()} interface.
  }
}

\examples{
## select() interface:
## Objects in this package can be accessed using the select() interface
## from the AnnotationDbi package. See ?select for details.

## Bimap interface:
x <- org.Hs.egUNIGENE
# Get the Unigene identifiers that are mapped to an entrez gene id
mapped_genes <- mappedkeys(x)
# Convert to a list
xx <- as.list(x[mapped_genes])
if(length(xx) > 0) {
  # Get the UNIGENE for the first five genes
  xx[1:5]
  # Get the first one
  xx[[1]]
}
# For the reverse map:
x <- org.Hs.egUNIGENE2EG
# Get the entrez gene identifiers that are mapped to a Unigene id
mapped_genes <- mappedkeys(x)
# Convert to a list
xx <- as.list(x[mapped_genes])
if(length(xx) > 0) {
  # Get the entrez gene for the first five genes
  xx[1:5]
  # Get the first one
  xx[[1]]
}
}

\keyword{datasets}


