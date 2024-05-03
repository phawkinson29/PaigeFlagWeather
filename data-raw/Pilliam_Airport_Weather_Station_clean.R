library(tidyverse)
library(lubridate)
Flagstaff_Weather <- read.csv('data-raw/Pulliam_Airport_Weather_Station.csv') %>%
  select(DATE, TMIN, TMAX, PRCP, SNOW) %>%
  mutate(DATE = mdy(DATE)) %>%
  mutate( Precipitation = PRCP) %>%
  select(DATE, TMIN, TMAX, Precipitation, SNOW)

usethis::use_data(Flagstaff_Weather, overwrite = TRUE)


