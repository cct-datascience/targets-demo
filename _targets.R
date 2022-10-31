# Load packages required to define the pipeline:
library(targets)
library(tarchetypes)

# Load additional packages (can also be done in `tar_option_set()`, see below)
source("packages.R")

# Set target options:
tar_option_set(
  # packages = c("tibble"), # packages that your targets need to run
  format = "rds" # default storage format
  # Set other options as needed.
)


# Load scripts in R/ with your custom functions:
tar_source()

# Define targets
tar_plan(
  
  tar_file(data_file, "data/raw_data.csv"),
  
  data = read_wrangle_data(data_file),
  
  log_lm = fit_log_lm(data),
  
  log_link_glm = fit_lnorm_glm(data), 
  
  summary_table = AIC(log_lm, log_link_glm),
  
  tar_render(report, "docs/report.Rmd")
  
)
