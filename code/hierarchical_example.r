library(cmdstanr)

J <- 5
nobs <- 10
ns <- rep(nobs, J)
##
muG <- 0.5
sdG <- 1.2
obsV <- 2^2

mus <- rnorm(n = J,  mean = muG, sd = sdG)
all.y <- c()
for(j in 1:J){
  ys <- rnorm(n = nobs, mean = mus[j], sd = sqrt(obsV))
  all.y <- c(all.y, ys)
}

gs <- rep(1:J, each = nobs)
all.y

stan.data <- list(
   N = length(all.y),              
   J = J,
   y = all.y,
   g = gs
)

centred <- cmdstan_model("stan/centred.stan")
c.samples <- centred$sample(data = stan.data, parallel_chains = 4)

non_centred <- cmdstan_model("stan/non_centred.stan")
nc.samples <- non_centred$sample(data = stan.data, parallel_chains = 4)

c.samples$cmdstan_diagnose()
nc.samples$cmdstan_diagnose()