# Created by use_targets().
# Follow the comments below to fill in this target script.
# Then follow the manual to check and run the pipeline:
#   https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline # nolint

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

# tar_make_clustermq() configuration (okay to leave alone):
options(clustermq.scheduler = "multicore")


# Load the R scripts with your custom functions:
lapply(list.files("R", full.names = TRUE, recursive = TRUE), source)

# Define targets
tar_plan(
  tar_file(data_file, "data/raw_data.csv"),
  data = read_wrangle_data(data_file),
  m1 = lm(log(height) ~ shoots, data = data),
  m2 = glm(height ~ shoots, family = gaussian(link = "log"), data = data),
  summary_df = make_model_summary(m1, m2),
  tar_render(report, "docs/report.Rmd"),
  tar_render(README, "README.Rmd")
)
