## code to prepare `Covid2020` dataset goes here

# Use Import Dataset to read '/inst/Covid-NY-March01-Oct06-2020.csv'
# Capture code from console

Covid2020 <- read.csv("~/R Material/HEADS/inst/Covid-NY-March01-Oct06-2020.csv", sep=",")

## create .rda dataset in /data folder
usethis::use_data(Covid2020, overwrite = TRUE)

