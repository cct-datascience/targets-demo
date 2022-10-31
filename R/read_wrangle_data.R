# library(tidyverse)
# library(lubridate)
#code used to generate fake data:
# tibble(Date = seq(today()-years(10), today(), "month")) %>% 
#   mutate(`Height (cm)` = rlnorm(n()),
#          `Shoot Number` = rpois(n(), 5),
#          Date = format.Date(Date, "%m/%d/%Y")) %>% 
#   write_csv("data/raw_data.csv")

read_wrangle_data <- function(data) {
  
  read_csv(data) %>% 
    #clean column names
    rename(date = Date, height = `Height (cm)`, shoots = `Shoot Number`) %>% 
    #parse date with lubridate::mdy()
    mutate(date = mdy(date))
  
}