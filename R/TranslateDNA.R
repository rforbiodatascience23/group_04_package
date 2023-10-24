#' Translate DNA to RNA
#'
#' @param DNAseq A DNA string consisting of nucleotides (A, T, C and G)
#'
#' @return The function returns the translated RNA string where all T's has been
#' substituted for U's.
#' @export
TranslateDNA <- function(DNAseq){
  RNAseq <- gsub("T", "U", DNAseq)
  return(RNAseq)
}
