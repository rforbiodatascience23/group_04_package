#' seqToCodons-function
#'
#' @param theSeq theSeq is the nucleotide-sequence provided by the user.
#' @param start start is the first nucleotide found in the sequence.
#'
#' @return description of function output
#' @export
#'
seqToCodons <- function(theSeq, start = 1){
  theSeq2 <- nchar(theSeq)
  codons <- substring(theSeq,
                      first = seq(from = start, to = theSeq2-3+1, by = 3),
                      last = seq(from = 3+start-1, to = theSeq2, by = 3))
  return(codons)
}


