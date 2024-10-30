#' Plot Amino acids from an input sequence
#'
#' @param protein_seq Is the input Aminoacid sequence
#' @param unique_protein Finds all unique Aminoacids present in the sequence
#' @param protein_plot Is the final plot of the Aminoacids are called in the global environment
#' @param visualized_protein Is plot of the counts of different Aminoacids.
#'
#'
#' @return the function returns a plot of how many unique protein there are present in the seq.
#' @export
#'
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @examples protein_plot("AGAAK") #should plot the 3 A's 1 G and 1 K

# The dna sequence is split into charaters and all unique AA's are found
protein_plot <- function(AA_seq){
  unique_protein <- AA_seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

# All the different AA's are counted in categories of the unique AA's.
  counts <- sapply(unique_protein, function(amino_acid) stringr::str_count(string = AA_seq, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["AA_seq"]] <- rownames(counts)

# The amounts of unique AA's are plotted in a column plot
  visualized_protein <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = AA_seq, y = Counts, fill = AA_seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(visualized_protein)
}
