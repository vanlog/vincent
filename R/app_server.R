#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @import futile.logger
#' @import lubridate
#' 
#' @noRd
app_server <- function( input, output, session ) {
  # global settings
  log_file <- get_golem_config(value = "log_file",
                               config = "default")
  flog.threshold("debug")
  flog.appender(appender.tee(log_file))
    
  # List the first level callModules here
  
  data1 <- reactiveVal(NULL)

  callModule(mod_load_data_server, "load_data_1",
             data1 = data1)
  
  callModule(mod_analysis_server, "analysis_1",
             data1 = data1)
  
}
