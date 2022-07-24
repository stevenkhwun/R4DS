# File and Directory Management
# Rscript file: \Rscripts\FileManagement.R

# List all the objects in your local workspace using
ls()

# To demonstrate how to clear an object, we first load an `RData` file into the an R workspace
load(file=url("http://faculty.gvsu.edu/kilburnw/pollingexcerpt.RData"))

# Two more objects, `poll` and `poll16` are loaded into the R workspace
ls()

# Clear the objects
rm(poll)
rm(poll16)
ls()

# To clear all the objects in your local workspace, type `rm(list=ls())`
# rm(list=ls())          # Not run


# List all the files in your working directory using
list.files()

# or
dir()

# Get the current working directory
getwd()

# Assign the value of the current working directory to a variable called "old.dir" for later use
old.dir <- getwd()

# Change to a directory by typing the full path
setwd('D:/Documents/GitHub/R4DS/Rscripts')
getwd()

# Return to the parent directory (one level up the present directory)
setwd('..')       # or `setwd('../')`
getwd()

# Change to a subdirectory
setwd('./Rscripts')
getwd()

# Change to a directory by stored variable
setwd(old.dir)
getwd()


# Use dir.create() to create a directory in the current working directory called "testdir".
dir.create('testdir')
dir()

# Create a further subdirectory
dir.create('testdir/subtestdir1')

# Change to the subdirectory `testdir1`
setwd('./testdir')
dir()

# Create a further subdirectory from the subdirectory
dir.create('subtestdir2')
dir()

# Moving up one level of the directory
setwd('..')       # or `setwd('../')`
getwd()

# Remove a directory together will all its subdirectories
unlink("testdir", recursive=TRUE)

