## code to prepare `PrescriptionsData` dataset goes here

# Use Import Dataset to read 'inst/LinearRegression_PrescriptionsData.xlsx'
# Capture code from console

PrescriptionsData <- read_excel("inst/LinearRegression_PrescriptionsData.xlsx")

## create .rda dataset in /data folder
usethis::use_data(PrescriptionsData, overwrite = TRUE)

