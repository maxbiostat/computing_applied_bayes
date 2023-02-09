data{
  int<lower=0> N;
  vector[N] x;
  vector[N] y;
}
parameters{
  real alpha;
  real beta;
  real<lower=0> sigma;
}
model{
  y ~ normal(alpha + beta*x, sigma);
  // prior
  alpha ~ normal(0, 2);  // beta ~normal(0, 1)
  beta ~normal(0, 1);
  // beta ~ std_normal();
}
