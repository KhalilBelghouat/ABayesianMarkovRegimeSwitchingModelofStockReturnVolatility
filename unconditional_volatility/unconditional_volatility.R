# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# A Bayesian Markov Regime-Switching Model of Stock Return Volatility: Evidence from the Moroccan All Shares Index

# This script computes the unconditional volatility and quantiles.

# Posterior draws.
draws <- as.matrix(fit.mcmc.ms2.gjr.s$par)

# For a GJR model with symmetric disturbances.
f_ucvol <- function(par) {
  if (is.vector(par)) {
    par <- matrix(data = par, nrow = 1, dimnames = list(1, names(par)))
  }
  ucvol_1 <- sqrt(250) * par[,"alpha0_1"] / (1 - (par[,"alpha1_1"] + 0.5 * par[,"alpha2_1"] + par[,"beta_1"]))
  ucvol_2 <- sqrt(250) * par[,"alpha0_2"] / (1 - (par[,"alpha1_2"] + 0.5 * par[,"alpha2_2"] + par[,"beta_2"]))
  out <- list(ucvol_1 = ucvol_1, ucvol_2 = ucvol_2)
  return(out)
  }

# Compute unconditional volatility.
ucvol.draws <- f_ucvol(draws)
ucvol.bay   <- lapply(ucvol.draws, mean)

# Posterior mean.
unlist(ucvol.bay)

# Quantiles of unconditional volatility.
sapply(ucvol.draws, quantile, probs = c(0.025, 0.975))