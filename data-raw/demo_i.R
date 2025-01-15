## code to prepare `demo_i` dataset goes here

# Download the nhanesA package as a zip file from the site in the text,
# since it has been banned for a violation.

# This downloaded zip file package must be installed using an R terminal command
# R CMD INSTALL "C:\Users\bruce\OneDrive\Documents\R Material\HEADS\nhanesA_1.1.tar.gz"

# Following that one can make it available.
library(nhanesA)

# dataset source website
nhanesA::browseNHANES()

# for this package we want year 2015.
yr=2015

# The dataset is part of the Demographic (DEMO) set of files, we can show them here:
nhanesTables('DEMO', year=yr, details=T)

# You can just download the .xpt file for the proper year from
# [CDC NHANES website](https://wwwn.cdc.gov/nchs/nhanes/continuousnhanes/default.aspx?BeginYear=2015)
# to your /inst folder

library(foreign)
demo_i = read.xport("inst/DEMO_I.xpt")
# check contents of demo_i object
# demo_i %>% skim

## create .rda dataset in /data folder
usethis::use_data(demo_i, overwrite = TRUE)
