# Created by use_targets().
# Follow the comments below to fill in this target script.
# Then follow the manual to check and run the pipeline:
#   https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline 

# Load packages required to define the pipeline:
library(targets)
library(crew)

# Set target options:
tar_option_set(
  packages = c("tidyverse", "janitor", "bbmle"), # packages that your targets need to run
  controller = crew_controller_local(workers = 2), # run workflow in parallel
  # Set other options as needed.
)

# Source the R scripts in the R/ folder with your custom functions:
tar_source()

# Workflow definition:
list(
  tar_target(file, "data/penguins_raw.csv", format = "file"),
  tar_target(data, get_data(file)),
  tar_target(lm_full, fit_lm_full(data)),
  tar_target(lm_main_effects, fit_lm_main_effects(data)),
  tar_target(aic_tab, AICtab(lm_full, lm_main_effects))
)
