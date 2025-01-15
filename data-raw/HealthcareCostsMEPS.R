## code to prepare `HealthcareCostsMEPS` dataset goes here

# Use Import Dataset to read 'inst/HealthcareCostsMEPS.csv'
# Capture code from console

HealthcareCostsMEPS <- read.csv("~/R Material/HEADS/inst/HealthcareCostsMEPS.csv", sep=",")

## create .rda dataset in /data folder
usethis::use_data(HealthcareCostsMEPS, overwrite = TRUE)

