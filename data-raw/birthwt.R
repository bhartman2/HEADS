## code to prepare `birthwt` dataset goes here

library(MASS)
data(birthwt, package="MASS")

## create dataset in /data folder
usethis::use_data(birthwt, overwrite = TRUE)
