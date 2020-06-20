test_that("filter_country", {
  
  input <- tibble(id = c("ITA", "some-other", "GRC", "FRA", "SWE", "GBR", "some-other"))
  
  expected <- c("ITA", "GRC", "FRA", "SWE", "GBR")
  
  result <- input %>% filter_countries(c("ITA", "GRC", "FRA", "SWE", "GBR")) %>% pull(id)
  
  expect_equal(result,
               c("ITA", "GRC", "FRA", "SWE", "GBR"))
  
  
})
