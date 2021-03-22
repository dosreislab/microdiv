# MCMC diagnostics of the flu dataset
# March 2021
rm(list=ls())

# read the MCMC samples:
mc1 <- read.table("../flu/mcmc/mcmc1.txt", head=TRUE)
mc2 <- read.table("../flu/mcmc/mcmc2.txt", head=TRUE)

par(mfrow=c(2,2))

# posterior means:
ti <- grep("t_", names(mc1))
t.mean1 <- colMeans(mc1[,ti])
t.mean2 <- colMeans(mc2[,ti])
plot(t.mean1, t.mean2, main="(a) Posterior means")
abline(0, 1)

# density histograms:
ri <- which(names(mc1) == "t_n290")
plot(density(mc1[,ri]), main = "(b) Density histograms of root age")
lines(density(mc2[,ri]), lty=2)

# trace plot for the root age:
# (mixing is very poor with the default values in the tutorial)
plot(mc1[,ri], ty='l', main = "(c) Trace plot of root age")

# autocorrelation plot for root age:
acf(mc1[,ri], main="(d) Autocorrelation of root age")

# calculate effective sample sizes
# note you need to have the coda package installed
coda::effectiveSize(mc1[,ri])

# load prior sample:
pmc <- read.table("../flu/prior/mcmc.txt", head=TRUE)

# plot prior root age:
plot(density(pmc[,ri]), lty=2, xlim=c(0, 6))
# add the calibration density on the root:
curve(mcmc3r::dB(x, 1, 5, .001, .001), n=5e2, add=TRUE)

# plot again but adjust time scale:
plot(density(-pmc[,ri] * 100 + 2009), lty=2, xlim=-c(0, 6) * 100 + 2009)
curve(mcmc3r::dB(-(x - 2009) / 100, 1, 5, .001, .001) / 100, n=5e2, add=TRUE)
