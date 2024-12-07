% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DNA_to_RNA.R
\name{DNA_to_RNA}
\alias{DNA_to_RNA}
\title{DNA_to_RNA
This function takes a DNA sequence as input and converts it to an RNA sequence by replacing all instances of the nucleotide "T" (thymine) with "U" (uracil)}
\usage{
DNA_to_RNA(DNA_sequence)
}
\arguments{
\item{DNA_sequence}{A DNA sequence composed of nucleotides (A, T, C, G)}
}
\value{
RNA sequence where all "T" nucleotides are replaced by "U" nucleotides
}
\description{
DNA_to_RNA
This function takes a DNA sequence as input and converts it to an RNA sequence by replacing all instances of the nucleotide "T" (thymine) with "U" (uracil)
}
\examples{
DNA_to_RNA("ATTGCC") # returns "AUUGCC"
}
