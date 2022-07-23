# Getting financial data from Yahoo using the package `pdfetch`
# Rscript file: /Rscripts/pdfetch.R

library(pdfetch)       # Load the `pdfetch` package

tickernames <- c("0001.HK","0005.HK")
HKStocks <- pdfetch_YAHOO(tickernames, fields="adjclose",from="2018-01-01")
nrow(HKStocks)
plot(HKStocks$"0001.HK", las=2)
plot(HKStocks$"0005.HK", las=2)

