## code to prepare `Table_5_1` dataset goes here

# Use Import Dataset to read '/inst/Table_5_1.csv'
# Capture code from console

Table_5_1 <- read.csv("~/R Material/HEADS/inst/Table_5_1.csv", sep="")

## create .rda dataset in /data folder
usethis::use_data(Table_5_1, overwrite = TRUE)



