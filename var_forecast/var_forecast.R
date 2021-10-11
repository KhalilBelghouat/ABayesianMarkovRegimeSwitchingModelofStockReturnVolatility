# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# A Bayesian Markov Regime-Switching Model of Stock Return Volatility: Evidence from the Moroccan All Shares Index

# This script computes the 1-step ahead VaR for the MS(2)-GJR-std and GJR-std specifications.

models <- list(gjr.s, ms2.gjr.s)
n.ots    <- 1000 # Number of out-of-sample evaluation.
n.its    <- 1500 # Fit sample size.
alpha    <- 0.05 # Risk level.
k.update <- 100  # Estimation frequency.

# Initialization.
VaR   <- matrix(NA, nrow = n.ots, ncol = length(models))
y.ots <- matrix(NA, nrow = n.ots, ncol = 1)
model.fit <- vector(mode = "list", length = length(models))

# Iterate over out-of-sample time.
for (i in 1:n.ots) {

  cat("Backtest - Iteration: ", i, "\n")
  y.its    <- MASI[i:(n.its + i - 1)] # in-sample data
  y.ots[i] <- MASI[n.its + i]         # out-of-sample data

  # Iterate over models.
  for (j in 1:length(models)) {

    # Update the model estimation.
    if (k.update == 1 || i %% k.update == 1) {
      cat("Model", j, "is reestimated\n")
      model.fit[[j]] <- FitMCMC(spec = models[[j]], data = y.its,
                                ctr = ctr)
    }

    # Calculate VaR 1-step ahead.
    VaR[i,j] <- Risk(model.fit[[j]]$spec, par = model.fit[[j]]$par,
                     data = y.its,
                     n.ahead = 1,
                     alpha   = alpha,
                     do.es   = FALSE,
                     do.its  = FALSE)$VaR
  }
}