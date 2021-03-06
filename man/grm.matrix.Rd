% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/weighted_grm.R
\name{grm.matrix}
\alias{grm.matrix}
\title{GRM for multiple individuals}
\usage{
grm.matrix(genotype, freq, method = "twostep", weights = NULL,
  init.est = NULL)
}
\arguments{
\item{genotype}{numeric matrix.}

\item{freq}{numeric vector, values between 0 and 1.}

\item{method}{string.}

\item{weights}{numeric vector, values between 0 and 1.}

\item{init.est}{numeric.}
}
\description{
\code{grm.matrix} computes relatedness estimates between every pairs of individuals.
}
\details{
\code{genotype} is the matrix of counts of reference alleles. Rows represents subjects and columns represents SNP markers. \code{freq} is the vector of reference allele frequencies.

The default \code{method} is "twostep", other options include "classic", "robust" and "general". When using the default "twostep" method, user can supply an initial estimate through \code{init.est} to bypass the first step. When "general" is selected, \code{weights} must also be specified. The difference between the two-step GRM, classic GRM and robust GRM is discussed in Wang et al.  (2017).
}
\references{
Wang et al. (2017) Genetics 205:1063-1078, \url{https://www.ncbi.nlm.nih.gov/pubmed/28100587}.
}
\seealso{
\code{\link{grm.pair}}.
}
