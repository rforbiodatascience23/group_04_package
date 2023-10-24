#' Plot Amino Acid Counts
#'
#' @param AA A string of Amino acids
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @return The function returns a barplot of Amino Acid Counts
#' @export
PlotAACount <- function(AA){
  uniqueAA <- AA |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(uniqueAA, function(amino_acid) stringr::str_count(string = AA, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["AminoAcid"]] <- rownames(counts)

  PlotCount <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = AminoAcid, y = Counts, fill = AminoAcid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(PlotCount)
}
