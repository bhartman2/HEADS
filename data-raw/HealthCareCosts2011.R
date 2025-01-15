## code to prepare `HealthCareCosts2011` dataset goes here

## We don't have the right data yet.

# Read SAS transport file

library(tidyverse)
library(haven)

hp147 = read_xpt("inst/h147.ssp")

HealthCareCosts2011 = hp147

# HealthCareCosts2011 %>% glimpse()

# HealthCareCosts2011 %>% select(DUPERSID, PERWT11F)

# CONDITIONCOUNT, HEALTHCOSTS

## create dataset in /data folder
## Don't run this yet!!
usethis::use_data(birthwt, overwrite = TRUE)
