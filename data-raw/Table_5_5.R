## code to prepare `Table_5_5` dataset goes here

# Copy table to clipboard and paste into R text file,
# Save it as /inst/Table_5_5.csv
# Edit column names to conform to R standards
# Remove extra rows of column names

# Use Import Dataset to read '/inst/Table_5_5.csv'
# Capture code from console

Table_5_5 <- read.csv("~/R Material/HEADS/inst/Table_5_5.csv", sep="")

## create .rda dataset in /data folder
usethis::use_data(Table_5_5, overwrite = TRUE)

