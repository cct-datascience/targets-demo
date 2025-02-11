# targets-demo

This repo is intended as a minimal demo of using the [`targets` R
package](https://books.ropensci.org/targets/) for workflow management
using data from the `palmerpenguins` package. 

## Instructions

1. Explore the files in `data/` and `R/`
2. Explore the workflow definition in `_targets.R`
2. Load the `targets` package with `library(targets)`
3. View the dependency graph with `tar_visnetwork()`
4. Run the workflow with `tar_make()` and then view the dependency graph again
5. In `R/fit_models.R`, change the response variable from `flipper_length_mm` to `bill_length_mm` and run `tar_visnetwork()` again
6. Run `tar_make()` and notice which steps are skipped

Check out the
[manual](https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline)
for instructions on how to run the pipeline.

See also: [an exercise](https://github.com/cct-datascience/targets-refactor) in refactoring "ordinary" analysis code into a `targets` pipeline
