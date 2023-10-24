#' The seqToCodons-function
#'
#' @param sequence1 sequence1 is the nucleotide sequence provided by the user.
#' @param start start is the first nucleotide in the sequence.
#' @return ........doing it later
#' @export
seqToCodons <- function(sequence1, start = 1){
  sequence2 <- nchar(sequence1)
  codons <- substring(sequence1,
                      first = seq(from = start, to = sequence2-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence2, by = 3))
  return(codons)
}

