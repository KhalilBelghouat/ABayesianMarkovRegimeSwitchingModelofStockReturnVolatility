# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# A Bayesian Markov Regime-Switching Model of Stock Return Volatility: Evidence from the Moroccan All Shares Index

# This script outputs the conditional coverage (CC) test by Christoffersen (1998) and the dynamic quantile (DQ) test by Engle and Manganelli (2004).

# Test the VaR.
CC.pval <- DQ.pval <- vector("double", length(models))
for (j in 1:length(models)) {
  test <- GAS::BacktestVaR(data  = y.ots,
                           VaR   = VaR[,j],
                           alpha = alpha)
                           
  CC.pval[j] <- test$LRcc[2]
  DQ.pval[j] <- test$DQ$pvalue
}
names(CC.pval) <- names(DQ.pval) <- c("GJR-std", "MS2-GJR-std")

# The conditional coverage (CC) test.
print(CC.pval)

# The dynamic quantile (DQ) test.
print(DQ.pval)