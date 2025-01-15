## code to prepare `bpx_i` dataset goes here

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

# The dataset is part of the Examination (EXAM) set of files, we can show them here:
nhanesTables('EXAM', year=yr, details=T)

# Now download the .xpt file for the proper year from
# [CDC NHANES website](https://wwwn.cdc.gov/nchs/nhanes/continuousnhanes/default.aspx?BeginYear=2015)
# to your /inst folder

# read in the.xpt file using the foreign package
library(foreign)
bpx_i = foreign::read.xport("inst/BPX_I.xpt")

# check contents of object
# bpx__i %>% skim

## create .rda dataset in /data folder
usethis::use_data(bpx_i, overwrite = TRUE)
