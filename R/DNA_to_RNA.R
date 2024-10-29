#' DNA_to_RNA
#' This function takes a DNA sequence as input and converts it to an RNA sequence by replacing all instances of the nucleotide "T" (thymine) with "U" (uracil)
#' @param DNA_sequence A DNA sequence composed of nucleotides (A, T, C, G)
#'
#' @return RNA sequence where all "T" nucleotides are replaced by "U" nucleotides
#' @export
#'
#' @examples DNA_to_RNA("ATTGCC") # returns "AUUGCC"
DNA_to_RNA <- function(DNA_sequence){
  RNA_sequence <- gsub("T", "U", DNA_sequence)
  return(RNA_sequence)
}
