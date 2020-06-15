#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @import shinydashboard
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),

    dashboardPage(
      title = "Vincent",
      dashboardHeader(title = "Vincent"),
      ## Sidebar content
      dashboardSidebar(
        sidebarMenu(
          menuItem(text = "LoadData", tabName = "loaddata", icon = icon("home")),
          menuItem(text = "Analysis", tabName = "analysis", icon = icon("fa-line-chart", lib = "font-awesome"))
        )
      ),
      ## Body content
      dashboardBody(

        tabItems(
          # First tab content
          tabItem(tabName = "loaddata",
                  mod_load_data_ui("load_data_1")),
          # Secon tab content
          tabItem(tabName = "analysis",
                  mod_analysis_ui("analysis_1"))
          
        )
        
      )
    )
    
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'vincent'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

