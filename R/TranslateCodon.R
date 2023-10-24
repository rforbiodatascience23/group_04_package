#' Translate Codon to Amino Acid
#'
#' @param codons A string of three characters specifying a codon
#'
#' @return The function returns the corresponding Amino Acid in one letter format
#' @export
TranslateCodon <- function(codons){
  AminoAcid <- paste0(codonTable[codons], collapse = "")
  return(AminoAcid)
}
