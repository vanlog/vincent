filter_countries <- function(data, countries) {
  data %>% 
    filter(.data$id %in% countries)
}