#' Plot proteins from sequence
#'
#' @param protein_seq Is the input protein sequence
#' @param unique_protein Finds all unique proteins present in the protein sequence
#' @param protein_plot Is the final plot of the proteins called in the global environment
#' @param visualized_protein Is plot of the proteins
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

# The dna sequence is split into charaters and all unique proteins are found
protein_plot <- function(protein_seq){
  unique_protein <- protein_seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

# All the different proteins are counted in categories of the unique protein.
  counts <- sapply(unique_protein, function(amino_acid) stringr::str_count(string = protein_seq, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["protein_seq"]] <- rownames(counts)

# The amounts of unique proteins are plotted in a column plot
  visualized_protein <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = protein_seq, y = Counts, fill = protein_seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(visualized_protein)
}
