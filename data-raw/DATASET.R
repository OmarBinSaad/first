## code to prepare `DATASET` dataset goes here



library(tidyverse)
library(here)
library(janitor)
SchoolDataset <- read.delim(here("data-raw","school-results.csv"), sep = ";") %>%
  clean_names() %>%
  select(year:gender,sub_total_students)


usethis::use_data(SchoolDataset, overwrite = TRUE)
