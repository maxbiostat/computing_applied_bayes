gen.sigma <- pi^2/3
gen.beta <- -2
gen.alpha <- 1 ## intercept

N <- 5000
X <- rnorm(N, 0, 1)
mu <- gen.alpha + gen.beta * X

Y <- mu + rnorm(N, sd = sqrt(gen.sigma))

plot(Y~X)
lm(Y~X)

stan.data <- list(
  N = N,
  x = X,
  y = Y
)

library(cmdstanr)

mod1 <- cmdstan_model("stan/linreg.stan")

samples1 <- mod1$sample(data = stan.data)

samples1


samples1$cmdstan_diagnose()

mod2 <- cmdstan_model("stan/linreg2.stan")

samples2 <- mod2$sample(data = stan.data)

samples1$time()
samples2$time()
