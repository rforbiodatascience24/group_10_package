#' Translation of Codons
#'
#' Converting codons into amino acids.
#'
#' @param codons Vector of codons as strings.
#'
#' @return Returns one string with the amino acid sequence.
#' @export
#'
#' @examples
#' codons <- c("UUU","CAA")
#' codons_to_aa(codons)
#'
codons_to_aa <- function(codons){
  aa <- paste0(codon_table[codons], collapse = "")
  return(aa)
}
