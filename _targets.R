# Created by use_targets().
# Follow the comments below to fill in this target script.
# Then follow the manual to check and run the pipeline:
#   https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline 

# Load packages required to define the pipeline:
library(targets)
library(crew)
# library(tarchetypes) # Load other packages as needed. 

# Set target options:
tar_option_set(
  packages = c("tidyverse", "janitor", "bbmle"), # packages that your targets need to run
  format = "rds", # default storage format
  controller = crew_controller_local(workers = 2), #run locally on 2 cores
  # Set other options as needed.
)

# Run the R scripts in the R/ folder with your custom functions:
tar_source()
# source("other_functions.R") # Source other scripts as needed.

# Replace the target list below with your own:
list(
  tar_target(file, "data/penguins_raw.csv", format = "file"),
  tar_target(data, get_data(file)),
  tar_target(lm_full, fit_lm_full(data)),
  tar_target(lm_noint, fit_lm_noint(data)),
  tar_target(aic_tab, AICtab(lm_full, lm_noint))
)
