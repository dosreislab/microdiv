# MCMC diagnostics of Betts et al. dataset
# March 2021
rm(list=ls())

# read the MCMC samples:
mc1 <- read.table("../betts/mcmc/mcmc1.txt", head=TRUE)
mc2 <- read.table("../betts/mcmc/mcmc2.txt", head=TRUE)

par(mfrow=c(2,2))

# posterior means:
ti <- grep("t_", names(mc1))
t.mean1 <- colMeans(mc1[,ti])
t.mean2 <- colMeans(mc2[,ti])
plot(t.mean1, t.mean2, main="(a) Posterior means")
abline(0, 1)

# density histograms:
ri <- which(names(mc1) == "t_n56")
plot(density(mc1[,ri]), main = "(b) Density histograms of root age")
lines(density(mc2[,ri]), lty=2)

# trace plot for the root age:
plot(mc1[,ri], ty='l', main = "(c) Trace plot of root age")

# autocorrelation plot for root age:
acf(mc1[,ri], main="(d) Autocorrelation of root age")

# calculate effective sample sizes
# note you need to have the coda package installed
coda::effectiveSize(mc1[,ri])

# load prior sample:
pmc <- read.table("../betts/prior/mcmc.txt", head=TRUE)

# plot prior root age:
plot(density(pmc[,ri]), lty=2, xlim=c(0, 50))
# add the calibration density on the root:
curve(mcmc3r::dB(x, 33.47, 45.2, 1e-300, .025), n=5e2, add=TRUE)
ni <- (names(pmc) == "t_n76")
# add prior and calibrations for other nodes:
lines(density(pmc[,ni]), lty=2)
curve(mcmc3r::dL(x, 10.33, 0.1, 1, .025), n=5e2, add=TRUE)

# ni <- match(c("t_n76", "t_n80", "t_n81", "t_n94", "t_n97"), names(pmc))
#lines(density(pmc[,ni[1]]), lty=2)
#lines(density(pmc[,ni[2]]), lty=2)
#lines(density(pmc[,ni[3]]), lty=2)
#lines(density(pmc[,ni[4]]), lty=2)
#lines(density(pmc[,ni[5]]), lty=2)
#curve(mcmc3r::dL(x, 10.33, 0.1, 1, 1e-300), n=5e2, add=TRUE)
#curve(mcmc3r::dL(x, 4.204, 0.1, 1, 1e-300), n=5e2, add=TRUE)
#curve(mcmc3r::dL(x, 1.25, 0.1, 1, 1e-300), n=5e2, add=TRUE)
#curve(mcmc3r::dL(x, 5.5025, 0.1, 1, 1e-300), n=5e2, add=TRUE)
#curve(mcmc3r::dL(x, 3.921, 0.1, 1, 1e-300), n=5e2, add=TRUE)
