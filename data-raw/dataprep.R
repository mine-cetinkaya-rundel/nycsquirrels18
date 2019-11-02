# load packages ----------------------------------------------------------------

library(tidyverse)
library(janitor)
library(usethis)

# load data --------------------------------------------------------------------

squirrels <- read_csv(here::here("data-raw", "2018_Central_Park_Squirrel_Census_-_Squirrel_Data.csv")) %>%
  clean_names() %>%
  rename(
    long = x,
    lat = y
  ) %>%
  mutate(date = as.character(date)) %>%
    mutate(
      date = paste(
        substr(date, 1, 2),
        substr(date, 3, 4),
        substr(date, 5, 8),
        sep="/"
      ) %>%
    as.Date(format='%m/%d/%Y')
  )

# save data --------------------------------------------------------------------

use_data(squirrels, compress = "xz", overwrite = TRUE)
