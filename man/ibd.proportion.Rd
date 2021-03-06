% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/score_ibd.R
\name{ibd.proportion}
\alias{ibd.proportion}
\title{Score IBD proportion.}
\usage{
ibd.proportion(inheritance, ind1index, ind2index = NULL, startpos = NULL,
  endpos = NULL)
}
\arguments{
\item{inheritance}{list of matrices.}

\item{ind1index, ind2index}{positive integer.}

\item{startpos, endpos}{non-negative number.}
}
\value{
A value between 0 and 1 representing the proportion of IBD segment.
}
\description{
\code{ibd.proportion} returns the proportion of IBD sharing between two haplotypes of the same individual or two individuals.
}
\details{
When only one individual index is supplied, \code{ibd.proportion} returns the realized inbreeding coefficient of the individual. When two individual indices are supplied, \code{ibd.proportion} returns the realized relatedness of the two individuals.
}
\examples{
# a simple pedigree with sibling marriage
pedigree = as.character(rep(1, 5))
member = as.character(c(11, 12, 21, 22, 31))
sex = as.numeric(c(1, 2, 1, 2, 1))
father = as.character(c(NA, NA, 11, 11, 21))
mother = as.character(c(NA, NA, 12, 12, 22))
pedinfo = data.frame(pedigree, member, sex, father, mother, stringsAsFactors = FALSE)
inheritance = sim.recomb(pedinfo, 100)

# realized inbreeding of inbred child
get.pedindex(pedinfo, "31")
ibd.proportion(inheritance, 5)

# realized relatedness between individual 21 and 22 (parents of inbred child)
get.pedindex(pedinfo, c("21", "22"))
ibd.proportion(inheritance, 3, 4)
}
