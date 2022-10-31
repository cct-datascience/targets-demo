#log transformed height
fit_log_lm <- function(data) {
  
  lm(log(height) ~ 1, data = data)
  
}

#log-link glm (lognormal family distribution)
fit_lnorm_glm <- function(data) {
  
  glm(height ~ shoots, family = gaussian(link = "log"), data = data)
  
}