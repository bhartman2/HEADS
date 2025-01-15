## code to prepare `Table_5_12` dataset goes here

# Copy table to clipboard and paste into R text file,
# Save it as /inst/Table_5_12.csv
# Edit column names to conform to R standards
# Remove extra rows of column names

# Use Import Dataset to read '/inst/Table_5_12.csv'
# Capture code from console

Table_5_12 <- read.csv("~/R Material/HEADS/inst/Table_5_12.csv", sep="")

## create .rda dataset in /data folder
usethis::use_data(Table_5_12, overwrite = TRUE)

