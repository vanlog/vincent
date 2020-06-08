

test_that("table_1 has the correct format", {
  
  expect_false( is_grouped_df(load_data()) ) 
  
})

test_that("table_1 has the correct format", {
  
  expect_equal(colnames(table_1()), 
               c("id", "date", "tests", "confirmed", "recovered",
                 "deaths","hosp","vent", "icu"))
  
})
