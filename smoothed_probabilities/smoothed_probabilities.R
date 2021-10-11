# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# A Bayesian Markov Regime-Switching Model of Stock Return Volatility: Evidence from the Moroccan All Shares Index

# This script computes the smoothed probabilities in regime 1 and 2.

# Smoothed probabilities in regime 1 and volatility
smoothed.prob.regime.1 <- State(fit.mcmc.ms2.gjr.s)$SmoothProb[, 1, 1, drop = TRUE]

# Smoothed probabilities in regime 2 and volatility
smoothed.prob.regime.2 <- State(fit.mcmc.ms2.gjr.s)$SmoothProb[, 1, 2, drop = TRUE]