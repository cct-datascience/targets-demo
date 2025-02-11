#full model with body mass, sex, and their interaction
fit_lm_full <- function(data) {
  lm(flipper_length_mm ~ body_mass_g + sex + body_mass_g:sex, data = data)
}

#model without the interaction
fit_lm_main_effects <- function(data) {
  lm(flipper_length_mm ~ body_mass_g + sex, data = data)
}
