#' @import shiny
#' @import shinydashboard
#' 
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    dashboardPage(
      dashboardHeader(title = "Hi, i'm Vincent"),
      ## Sidebar content
      dashboardSidebar(
        sidebarMenu(
          menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
          menuItem("Journal", tabName = "journal", icon = icon("calendar"))
        )
      ),
      ## Body content
      dashboardBody(
        tabItems(
          
          # First tab content
          tabItem(tabName = "dashboard"),
          
          #Second tab content
          tabItem(tabName = "journal")        
        )
      )
    )
  )
}

#' @import shiny
golem_add_external_resources <- function(){
  
  addResourcePath(
    'www', system.file('app/www', package = 'vincent')
  )
  
  tags$head(
    golem::activate_js(),
    golem::favicon()
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    #tags$link(rel="stylesheet", type="text/css", href="www/custom.css")
  )
}
