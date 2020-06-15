#' load_data UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_load_data_ui <- function(id){
  ns <- NS(id)

  tagList(
    box(
      title = "Choose a csv File",
      fileInput(ns("file1"), "",
                multiple = FALSE,
                accept = ".csv")
    ),
    box(
      width = 12,
      title = "Preview",
      style = "overflow-x: scroll;",
      DT::dataTableOutput(ns("preview1"))
    )
  )
}
    
#' load_data Server Function
#'
#' @noRd 
#' @importFrom readr read_csv
mod_load_data_server <- function(input, output, session){
  ns <- session$ns
  
  
  data1 <- reactiveVal()
  
  
  observe({
    req(input$file1$datapath)
    
    data1( read_csv(input$file1$datapath) )
  })
  
  
  output$preview1 <- DT::renderDataTable({
    data1()
  })
  
}
    
## To be copied in the UI
# mod_load_data_ui("load_data_ui_1")
    
## To be copied in the server
# callModule(mod_load_data_server, "load_data_ui_1")
 
