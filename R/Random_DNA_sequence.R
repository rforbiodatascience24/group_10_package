#' Creating a random DNA sequence
#'
#' @param sequence_length Specifies the length wanted for the random DNA sequence
#'
#' @return A random DNA sequence is created of the length "sequence_length"
#' @export
#'
#' @examples Random_DNA_sequence(10)
Random_DNA_sequence <- function(sequence_length){
  DNA_sample <- sample(c("A", "T", "G", "C"), size = sequence_length, replace = TRUE)
  DNA_sequence <- paste0(DNA_sample, collapse = "")
  return(DNA_sequence)
}
