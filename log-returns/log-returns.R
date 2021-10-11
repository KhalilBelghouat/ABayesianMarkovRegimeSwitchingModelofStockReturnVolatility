# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# A Bayesian Markov Regime-Switching Model of Stock Return Volatility: Evidence from the Moroccan All Shares Index

# This script imports and differentiate the MASI data.

# Import and differenciate original data.
market_index <- read.csv("Moroccan All Shares Historical Data.csv")
market_index <- market_index %>% map_df(rev)
log_returns <- diff(log(market_index$Price))*100
MASI.Date <- dmy(market_index$Date[-1])
MASI <- zoo(log_returns, MASI.Date)

# Visualizing MASI's log-returns.
plot(MASI, type = 'l', las = 1, lwd = 2, xlab = "Date (year)",
     ylab = "", col = "black", cex.axis = 1.5, cex.lab = 1.5)
title("MASI log-returns (%)", cex.main = 1.5)

# Data summary.
summary(MASI)

# Other descriptive statistics.
describe(MASI)