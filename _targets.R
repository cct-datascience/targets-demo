# Load packages required to define the pipeline:
library(targets)
library(tarchetypes)

# Set target options:
tar_option_set(
  packages = c("tidyverse", "janitor", "bbmle"), 
  format = "rds" # default storage format
  # Set other options as needed.
)

# Load scripts in R/ with your custom functions:
tar_source()

# Define targets
list(
  # read and wrangle data
  tar_target(file, "data/penguins_raw.csv", format = "file"),
  tar_target(data, get_data(file)),
  
  # fit models
  tar_target(lm_full, fit_lm_full(data)),
  tar_target(lm_noint, fit_lm_noint(data)),
  
  # get results
  tar_target(aic_tab, AICtab(lm_full, lm_noint))
)
