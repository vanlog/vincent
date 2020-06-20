## code to prepare `covid19` dataset goes here

# usethis::use_data(covid19, overwrite = TRUE)


x <- COVID19::covid19()

library(readr)

write_csv(x, "data-raw/covid19.csv", col_names = TRUE)

write_csv2(x, "data-raw/covid19-wrong.csv", col_names = TRUE)

write_csv(mtcars, "data-raw/mtcars.csv", col_names = TRUE)


