# library(tidyverse)
# library(janitor)
# file <- "data/penguins_raw.csv"

get_data <- function(file) {
  data_raw <- read.csv(file)
  data_raw %>%
    clean_names() %>%
    mutate(species_short = abbreviate(species)) %>%
    mutate(sex = tolower(sex)) %>%
    mutate(date_egg = as.Date(date_egg)) %>% 
    mutate(year = as.integer(format(date_egg, "%Y"))) %>%
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
    #make NAs for sex explicitly "Missing"
    mutate(sex = coalesce(sex, "(Missing)"))
  
}
