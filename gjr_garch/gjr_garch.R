# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# A Bayesian Markov Regime-Switching Model of Stock Return Volatility: Evidence from the Moroccan All Shares Index

# This script estimates the GJR-GARCH(1, 1) model with Student-t errors using the MCMC method.

# Create GJR-std specification for comparison.
gjr.s <- CreateSpec(variance.spec = list(model = "gjrGARCH"),
                    distribution.spec = list(distribution = "std"),
                    switch.spec = list(K = 1))

# MCMC estimation.
nmcmc <- 12500
nburn <- 5000
nthin <- 5
ctr <- list(nmcmc = nmcmc, nburn = nburn, nthin = nthin)
fit.mcmc.gjr.s <- FitMCMC(gjr.s, data = MASI[1:1500], ctr = ctr)
summary(fit.mcmc.gjr.s)