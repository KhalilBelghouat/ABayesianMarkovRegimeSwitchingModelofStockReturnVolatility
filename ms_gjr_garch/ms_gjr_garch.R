# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# A Bayesian Markov Regime-Switching Model of Stock Return Volatility: Evidence from the Moroccan All Shares Index

# This script estimates the Markov regime-switching GJR-GARCH(1, 1) with Student-t errors using the MCMC method.

# Create MS(2)-GJR-std specification (Ardia 2008 and Ardia et al. 2008).
ms2.gjr.s <- CreateSpec(variance.spec = list(model = "gjrGARCH"),
                        distribution.spec = list(distribution = "std"),
                        switch.spec = list(K = 2),
                        constraint.spec = list(regime.const = "nu"))

# MCMC estimation.
nmcmc <- 12500
nburn <- 5000
nthin <- 5
ctr <- list(nmcmc = nmcmc, nburn = nburn, nthin = nthin)
fit.mcmc.ms2.gjr.s <- FitMCMC(ms2.gjr.s, data = MASI[1:1500], ctr = ctr)
summary(fit.mcmc.ms2.gjr.s)