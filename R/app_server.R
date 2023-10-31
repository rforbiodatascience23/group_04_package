#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
#'
app_server <- function(input, output, session) {
  mod_PlotRAA_server("PlotRAA_1")
  mod_DNAtoPeptide_server("DNAtoPeptide_1")
}
