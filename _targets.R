# Load packages required to define the pipeline:
library(targets)
library(tarchetypes)

# Load additional packages (can also be done in `tar_option_set()`, see below)
source("packages.R")

# Set target options:
tar_option_set(
  packages = c("readr", "dplyr", "janitor", "car"), 
  format = "rds" # default storage format
  # Set other options as needed.
)


# Load scripts in R/ with your custom functions:
tar_source()

# Define targets
list(
  # read and wrangle data
  tar_target(data_file, "data/penguins_raw.csv"),
  tar_target(data_raw, read_csv(data_file)),
  tar_target(data, wrangle_data(data_raw)),
  
  # fit models
  tar_target(flipper_lm, fit_lm_flipper(data)),
  tar_target(bill_lm, fit_lm_bill(data)),
  
  # get results
  tar_target(flipper_table, Anova(flipper_lm)),
  tar_target(bill_table, Anova(bill_lm)),

  # render report
  tar_render(report, "docs/report.Rmd")
  
)
