#Import data from internet
#Example 1.13 of the book "R by Example"
#Rscript file: \Rscripts\RbyEG_EG1_13.R

# Read in data
pidigits = read.table(
  "http://www.itl.nist.gov/div898/strd/univ/data/PiDigits.dat",
  skip=60)
head(pidigits)
#Summarize the digits in a table by 'table' function
table(pidigits)
#Calculate the proportions of the digits
prop <- table(pidigits) / 5000
prop
#Standard error (se) of the proportion with known proportion
sqrt(.1*.9 / 5000)
#For unknow proportion, sample se is calculated
se.hat <- sqrt(prop * (1 - prop) / 5000)
se.hat
#The sample proportion plus or minus two standard errors using vectorized arithmetic
round(rbind(prop, se.hat, prop-2*se.hat, prop+2*se.hat), 4)
#A barplots helps to visualize the tabulatd data
barplot(prop, xlab="digit", ylab="proportion")
abline(h = .1)