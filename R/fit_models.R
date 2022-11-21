#log transformed height
fit_lm_flipper <- function(data) {
  lm(flipper_length_mm ~ body_mass_g + sex + species + island + species:sex, data = data)
  
}

#log-link glm (lognormal family distribution)
fit_lm_bill <- function(data) {
  lm(bill_length_mm ~ body_mass_g + sex + species + island + species:sex, data = data)
}