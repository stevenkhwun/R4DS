# Importing data file of various format
# Rscript file: /Rscripts/LoadData.R

# Importing Stata data file into R
# Packages `foreign` required
library(foreign)               # Load the required package

# Input the Stata data file `wage.dta` 
# `wage.dta` is a data file accompany the book "An Introduction to Classical Econometric Theory (2000)" by
# Paul A. Ruud

DTAdata <- read.dta("./Data/wage.dta")
head(DTAdata)

# Further example of importing Stata data file from internet
affairs <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/affairs.dta")
head(affairs)

##########################################################################################################
# Importing SPSS data file into R
# Packages `haven` required
library(haven)               # Load the required package

# Input the SPSS data file `Cats and Dogs.sav` 
# `Cats and Dogs.sav` is a data file accompany the book "Discovering Statistics Using IBM SPSS Statistics
# (2018)" by Andy Field

SPSSdata <- read_sav("./Data/Cats and Dogs.sav")
head(SPSSdata)

##########################################################################################################
# Display the objects created when importing the data files
ls()

# Removing the objects
rm(DTAdata)
rm(SPSSdata)
rm(affairs)