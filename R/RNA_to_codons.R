#' Translation of RNA into codons
#'
#' @param RNA The parameter should be a RNA string, which will be translated to codons
#' @param start it tells at what position the translation begins
#'
#' @return The function outputs the condons which have been translated from the RNA
#' @export
#'
#' @examples RNA_to_codon("UCCUGG", start=1) #returns c("UCC","UGG")
RNA_to_codon <- function(RNA, start = 1){
  length_RNA <- nchar(RNA)
  codons <- substring(RNA,
                      first = seq(from = start, to = length_RNA-3+1, by = 3),
                      last = seq(from = 3+start-1, to = length_RNA, by = 3))
  return(codons)
}
