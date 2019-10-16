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
  )

# save data --------------------------------------------------------------------

use_data(squirrels, compress = "xz")
