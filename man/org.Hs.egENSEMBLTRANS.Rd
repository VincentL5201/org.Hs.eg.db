\name{org.Hs.egENSEMBLTRANS}
\alias{org.Hs.egENSEMBLTRANS}
\alias{org.Hs.egENSEMBLTRANS2EG}
\title{Map Ensembl transcript acession numbers with Entrez Gene identifiers}  
\description{ 
  org.Hs.egENSEMBL is an R object that contains mappings between 
  Entrez Gene identifiers and Ensembl transcript accession numbers.    
}
\details{
  This object is a simple mapping of Entrez Gene identifiers
  \url{https://www.ncbi.nlm.nih.gov/entrez/query.fcgi?db=gene} to Ensembl
  transcript accession numbers.

  Mappings were based on data provided by:
  \url{ftp://ftp.ensembl.org/pub/current_fasta}
  \url{ftp://ftp.ncbi.nlm.nih.gov/gene/DATA}
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
x <- org.Hs.egENSEMBLTRANS
# Get the entrez gene IDs that are mapped to an Ensembl ID
mapped_genes <- mappedkeys(x)
# Convert to a list
xx <- as.list(x[mapped_genes])
if(length(xx) > 0) {
  # Get the Ensembl gene IDs for the first five proteins
  xx[1:5]
  # Get the first one
  xx[[1]]
}
#For the reverse map ENSEMBLTRANS2EG:
# Convert to a list
xx <- as.list(org.Hs.egENSEMBLTRANS2EG)
if(length(xx) > 0){
   # Gets the entrez gene IDs for the first five Ensembl IDs
   xx[1:5]
   # Get the first one
   xx[[1]]
}
}
\keyword{datasets}



