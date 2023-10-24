#' Merging nucleotides
#'
#' @param number How many nucleotides should be collapsed together
#'
#' @return Merged sequence from different nucleotides
#'
#' @export
nucMerge <- function(number){
  info <- sample(c("A", "T", "G", "C"), size = number, replace = TRUE)
  collapsed_seq <- paste0(info, collapse = "")
  return(collapsed_seq)
}


