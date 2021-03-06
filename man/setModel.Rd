% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createphenotypeFunctions.R
\name{setModel}
\alias{setModel}
\title{Set simulation model.}
\usage{
setModel(genVar = NULL, h2s = NULL, theta = 0.8, h2bg = NULL,
  eta = 0.8, noiseVar = NULL, delta = NULL, gamma = 0.8,
  rho = NULL, phi = NULL, alpha = 0.8, pcorr = 0.6,
  pIndependentConfounders = 0.4, pTraitIndependentConfounders = 0.2,
  pIndependentGenetic = 0.4, pTraitIndependentGenetic = 0.2,
  proportionNonlinear = 0, cNrSNP = NULL, NrConfounders = 10,
  verbose = TRUE)
}
\arguments{
\item{genVar}{Total genetic variance [double].}

\item{h2s}{Proportion [double] of variance of genetic variant effects.}

\item{theta}{Proportion [double] of variance of shared genetic variant 
effects.}

\item{h2bg}{Proportion [double] of variance of infinitesimal genetic effects
i.e. correlation introduced by sample kinship).}

\item{eta}{Proportion [double] of variance of shared infinitesimal genetic 
effects.}

\item{noiseVar}{Total noise variance [double].}

\item{delta}{Proportion [double] of variance of non-genetic covariate effect.}

\item{gamma}{Proportion [double] of variance of shared non-genetic covariate 
effects.}

\item{rho}{Proportion [double] of variance of correlated noise effects.}

\item{phi}{Proportion [double] of variance of observational noise effects.}

\item{alpha}{Proportion [double] of variance of shared observational noise 
effect.}

\item{pcorr}{Correlation [double] between phenotypes.}

\item{pIndependentConfounders}{Proportion [double] of non-genetic covariate 
to have a trait-independent effect.}

\item{pTraitIndependentConfounders}{Proportion [double] of traits influenced
by independent non-genetic covariate effects.}

\item{pIndependentGenetic}{Proportion [double] of genetic variant effects to 
have a trait-independent fixed effect.}

\item{pTraitIndependentGenetic}{Proportion [double] of traits influenced by 
independent genetic variant effects.}

\item{proportionNonlinear}{[double] proportion of the phenotype to be non-
linear}

\item{cNrSNP}{Number [integer] of causal SNPs; used as genetic variant 
effects.}

\item{NrConfounders}{Number [integer] of non-genetic covariates; used as 
non-genetic covariate effects.}

\item{verbose}{[boolean]; If TRUE, progress info is printed to standard out.}
}
\value{
Named list containing the genetic model (modelGenetic), the noise 
model (modelNoise) and the input parameters (h2s, h2bg, noiseVar, rho, delta, 
phi, gamma, theta, eta, alpha, pcorr, proportionNonlinear). Model options 
are: modelNoise: "noNoise", "noiseFixedOnly", "noiseBgOnly", 
"noiseCorrelatedOnly", "noiseFixedAndBg","noiseCorrelatedAndBg", 
"noiseFixedAndCorrelated", "noiseFixedAndBgAndCorrelated"
modelGenetic: "noGenetic","geneticBgOnly", "geneticFixedOnly",
"geneticFixedAndBg"
}
\description{
Based on parameters provided, this function sets the name for the phenotype 
simulation. It carries out compatibiltiy checks of the specifie parameters 
and checks for any missing information.
}
\examples{
#genetic fixed effects only
model <- setModel(genVar=1, h2s=1)

#genetic fixed and bg effects
model <- setModel(genVar=1, h2s=0.01)

#genetic and noise fixed effects only
model <- setModel(genVar=0.4, h2s=1, delta=1)
}
