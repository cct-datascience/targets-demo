# Example raw data generated from palmerpenguins package:
# library(palmerpenguins)
# write_csv(palmerpenguins::penguins_raw, "data/penguins_raw.csv")

wrangle_data <- function(data_raw) {
  
  #source: https://github.com/allisonhorst/palmerpenguins/blob/main/data-raw/penguins.R
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
    rename(species = species_short)
  
}