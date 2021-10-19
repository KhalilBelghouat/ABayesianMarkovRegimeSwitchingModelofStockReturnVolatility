# A Bayesian Markov Regime-Switching Model of Stock Return Volatility: Evidence from the Moroccan All Shares Index

This repository includes the code used in one of the master's projects "A Bayesian Markov Regime-Switching Model of Stock Return Volatility: Evidence from the Moroccan All Shares Index" by Khalil Belghouat.

In this project, a Bayesian Markov regime-switching approach is followed in order to describe and predict the volatility of the Moroccan All Shares Index returns.

## Prerequisites

The ```R``` programming language, version 4.1.1, and its statistical and machine learning libraries were used to build all applied models. The ```R``` script _packages.R_ in the _packages_ folder installs and loads all necessary ```R``` packages. 

All operations, from data preprocessing to model estimation, were carried out on the Google Colaboratory platform.

## Theoretical Background

So far in the literature, two models have been developed that capture this time-varying autocorrelated volatility process: the stochastic volatility model and that of GARCH (Generalized Autoregressive Conditional Heterscedasticity). In the stochastic volatility model, the variance is modeled as a latent component that follows a stochastic process. While GARCH models define time-varying variance as a deterministic function of past squared innovations and lagged conditional variances. Multiple extensions of GARCH's sedastic function have been proposed to capture additional stylized facts observed in financial and economic time series, such as non-linearities, asymmetries, and long memory properties. GARCH-type models are, until now, widely used to model various financial phenomena such as risk management of futures contracts, estimation of the volatility of yield spreads, and portfolio optimization. However, various studies have shown that one of the most problematic features of these models is the excessive persistence attributed to the volatility of financial variables. This suggests that conditional variance shocks that arose in the distant past continue to have sizeable effects on present value. This long-lasting persistence is in fact the reason attributed to the relatively poor forecasts of the GARCH models. A number of researchers have observed that the high persistence of GARCH models and therefore poor forecasting performance could be related to structural changes in the data generation process. And pointed out that GARCH models may be limited in their ability to model the volatility of financial time series if structural disruptions, caused by some dramatic events such as financial crises, recessions or changes in government policies, are present. Therefore, Markov-switching GARCH models, as introduced by Hamilton and several other econometers, were advanced and found to be useful in solving this problem. These models allow the conditional volatility process to switch between a discrete number of states, the transitions between states being governed by a Markov chain of hidden and finite order. More often than not, such a structure has been found to improve the forecasting of volatility and risk. The Markov regime change model and its variants have found application in the analysis of the behavior of interest rates and exchange rates, forecasting business cycles, and portfolio management for hedging against financial risks. In this paper, we conduct an empirical analysis of the MASI index using the Bayesian Markov-switched GJR-GARCH model. We also study its forecasting performance in estimating VaR.

## Application and Results
 
## Code Structure

### About The Data

### Model Building and Estimation
