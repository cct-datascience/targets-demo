# library(tidyverse)
# library(janitor)
# file <- "data/penguins_raw.csv"

get_data <- function(file) {
  data_raw <- read_csv(file)
  data_raw %>%
    clean_names() %>%
    mutate(species_short = word(species, 1)) %>%
    mutate(sex = tolower(sex)) %>%
    mutate(year = as.integer(lubridate::year(date_egg))) %>%
    mutate(across(where(is.character), as.factor)) %>%
    mutate(flipper_length_mm = as.integer(flipper_length_mm)) %>%
    mutate(body_mass_g = as.integer(body_mass_g)) %>%
    rename(bill_length_mm = culmen_length_mm,
           bill_depth_mm = culmen_depth_mm) %>%
    select(species_short,
           island,
           bill_length_mm,
           bill_depth_mm,
           flipper_length_mm,
           body_mass_g,
           sex,
           year) %>%
    rename(species = species_short) %>%
    mutate(sex = fct_explicit_na(sex))
  
}
