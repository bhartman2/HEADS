## code to prepare `ClassificationTrees` dataset goes here

# Copy table to clipboard and paste into R text file,
# Save it as /inst/ClassificationTrees.csv
# Edit column names to conform to R standards
# Remove extra rows of column names

# Use Import Dataset to read '/inst/ClassificationTrees.xlsx'
# Capture code from console

library(readxl)
ClassificationTrees <- read_excel("inst/ClassificationTrees.xlsx")
ClassificationTrees %>% glimpse
ClassificationTrees = ClassificationTrees %>% rename(YCosts80pct = `Y:Costs>80thPerc?`)
ClassificationTrees %>% glimpse

## create .rda dataset in /data folder
usethis::use_data(ClassificationTrees, overwrite = TRUE)

