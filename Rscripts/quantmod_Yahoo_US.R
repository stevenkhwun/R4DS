# Retrieve economic data from the internet using the `quantmod` package
# Rscript file: \Rscripts\quantmod_Yahoo_US.R

# Retrieve stock price from Yahoo Finance
# Load the required package
library(quantmod)       #Alternatively `require(quantmod)`

#Get Apple stock price
getSymbols("AAPL",from="2008-01-03",to="2015-01-28")

#See the size of the loaded data set
dim(AAPL)

#See the first and last 6 row of data
head(AAPL)
tail(AAPL)

#Obtain time plot of closing price and trading volume
#The subcommand theme="white" set the background of the time plot
#The default is black
chartSeries(AAPL,theme="white")

