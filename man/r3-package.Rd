\name{r3-package}
\alias{r3-package}
\alias{r3}
\docType{package}
\title{
  Realized Relatedness Rtools
}
\description{
  This package provides useful functions for studying realized genetic relatedness between people. Users will be able to simulate inheritance patterns given pedigree structures, generate SNP marker data given inheritance patterns, and estimate realized relatedness between pairs of individuals using SNP marker data.
}
\details{
  Given a pedigree structure and a specified chromosomal length in Haldane centiMorgan (cM), \code{sim.recomb} simulates recombination breakpoints in each meiosis under a homogeneous Poisson process of rate 0.01/cM. With founder haplotypes supplied, \code{populate.snp} populates SNP marker data on all non-founders according to output of \code{sim.recomb}. Simulation true identity by descent information can be scored using functions such as \code{ibd.length}, \code{ibd.proportion}, \code{ibd.segment} and \code{ibd.marker}. 
  
  \code{grm.pair} computes realized relatedness estimates between a pair of individuals using SNP marker data. Details on various types of GRM estimators are presented in Wang et al. (2017). When the LD-weighted GRM estimator is desired, \code{ld.weights} can be used to compute the appropirate LD weights. \code{grm.matrix} is the matrix/all-pairs version of \code{grm.pair}.
}
\author{
Bowen Wang.

Maintainer: Bowen Wang <bowenwang7@gmail.com>
}
\references{
Wang et al. (2017) Genetics 205:1063-1078, \url{https://www.ncbi.nlm.nih.gov/pubmed/28100587}.
}
\keyword{ package }

