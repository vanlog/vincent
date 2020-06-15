#' analysis UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_analysis_ui <- function(id){
  ns <- NS(id)
  
  tagList(
    box(
      title = "Statistic 1",
      plotOutput(ns("plot1"))
    )
  )
}
    
#' analysis Server Function
#'
#' @noRd 
#' @import dplyr
#' @import ggplot2
#' @importFrom rlang .data
mod_analysis_server <- function(input, output, session,
                                data1){
  ns <- session$ns
 
  output$plot1 <- renderPlot({
    req(data1())
    flog.debug("plotting data1...")
    
    ftry(
      data1() %>% 
        filter(.data$id %in% c("ITA", "GRC", "FRA", "SWE", "GBR")) %>% 
        ggplot(aes_string(x = "date", y = "deaths", color = "id" )) +
        geom_line(size = 1) +
        theme_light()
    )
  })
}
    
## To be copied in the UI
# mod_analysis_ui("analysis_ui_1")
    
## To be copied in the server
# callModule(mod_analysis_server, "analysis_ui_1")
 
