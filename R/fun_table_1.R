load_data <- function(...) {
  covid19(level = 1, verbose = FALSE, ...) %>% 
    ungroup()
}

#' table_1
#' 
#' @return table_1
#' 
#' @import dplyr
table_1 <- function() {
  x <- load_data()
  x %>% 
    select("id", "date", "tests", "confirmed", "recovered",
           "deaths","hosp","vent", "icu")
}

