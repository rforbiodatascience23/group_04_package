#' PlotRAA UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_PlotRAA_ui <- function(id){
  ns <- NS(id)
  tagList(
    sidebarLayout(
      sidebarPanel(
        textAreaInput(
          inputId = ns("peptide"),
          label = "Peptide sequence",
          width = 300,
          height = 100,
          placeholder = "Insert peptide sequence"
        )
      ),
      mainPanel(
        plotOutput(
          outputId = ns("abundance")
        )
      )
    )
  )
}

#' PlotRAA Server Functions
#' @importfrom ggplot2 theme
#' @noRd
mod_PlotRAA_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$abundance <- renderPlot({
      if(input$peptide == ""){
        NULL
      } else{
        input$peptide |>
          BioFlow::PlotAACount() +
          ggplot2::theme(legend.position = "none")
      }
    })
  })
}

## To be copied in the UI
# mod_PlotRAA_ui("PlotRAA_1")

## To be copied in the server
# mod_PlotRAA_server("PlotRAA_1")
