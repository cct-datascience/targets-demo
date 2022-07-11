make_model_summary <- function(...) {
  map_df(list(...), ~broom::glance(.x), .id = "model")
}

