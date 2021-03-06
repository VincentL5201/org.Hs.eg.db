\name{org.Hs.eg.db}
\alias{org.Hs.eg.db}
\alias{org.Hs.eg}
\title{Bioconductor annotation data package}
\description{

  Welcome to the org.Hs.eg.db annotation Package.  This is an
  organism specific package.  The purpose is to provide detailed
  information about the species abbreviated in the second part of the
  package name org.Hs.eg.db. This package is updated biannually.

  Objects in this package are accessed using the \code{select()} interface.
  See ?select in the AnnotationDbi package for details.
}

\seealso{
  \itemize{
    \item \code{\link[AnnotationDbi]{AnnotationDb-class}} for use of
          \code{keys()}, \code{columns()} and \code{select()}.
  }
}

\examples{
## select() interface:
## Objects in this package can be accessed using the select() interface
## from the AnnotationDbi package. See ?select for details.
columns(org.Hs.eg.db)

## Bimap interface:
## The 'old style' of interacting with these objects is manipulation as 
## bimaps. While this approach is still available we strongly encourage the
## use of select().
ls("package:org.Hs.eg.db")
}
\keyword{datasets}

