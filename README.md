# Computing for Applied Bayesian Modelling

Some notes and resources on computing techniques for Applied Bayesian Modelling.

**Motivation**

Bayesian modelling is now ubiquitous. And it's wonderful. It does, however, come with its own set of computational difficulties. In these notes we will try and collect tips and tricks for making fitting, diagnosing and using models under the Bayesian paradigm easier and more stable.

### General tricks

**Modelling**

- Prior and posterior pushforward checking. See [Bayesian Workflow](https://arxiv.org/abs/2011.01808) and [Gabry et al. (2019)](https://arxiv.org/pdf/1709.01449.pdf). See also the [Stan guide](https://mc-stan.org/docs/2_27/stan-users-guide/prior-predictive-checks.html#coding-prior-predictive-checks-in-stan).

**Computational**

- Generating truncated random variables [Stan manual](https://mc-stan.org/docs/stan-users-guide/truncated-random-number-generation.html);


### Numerical robustness

- Goldberg's 1991 gem ["What every computer scientist should know about ?oating-point arith- metic."](https://www.itu.dk/~sestoft/bachelor/IEEE754_article.pdf) is great;
- The relevant [section](https://mc-stan.org/docs/stan-users-guide/floating-point-arithmetic.html) of the Stan guide is also of great value.


### Reparametrisation

- [Gelman (2004)](https://www.tandfonline.com/doi/pdf/10.1198/016214504000000458) is a good source for a discussion on parametrisations.
- [This](https://twiecki.io/blog/2017/02/08/bayesian-hierchical-non-centered/) blog post by Thomas Twiecki explains nicely how parametrisation matters, especially for hierarchical models, as does this excellent [video](https://www.youtube.com/watch?v=gSd1msFFZTw) by Ben Lambert. 
- The [QR](https://betanalpha.github.io/assets/case_studies/qr_regression.html) is a great tool to alleviate computational problems with regression models.
- [Hamiltonian Monte Carlo for Hierarchical Models](https://arxiv.org/abs/1312.0906) by M ike Betancourt and Mark Girolami is a great technical resource. 
- [A General Framework for the Parametrization of Hierarchical Models](https://projecteuclid.org/journals/statistical-science/volume-22/issue-1/A-General-Framework-for-the-Parametrization-of-Hierarchical-Models/10.1214/088342307000000014.full)  By Papaspiliopoulos et al.
- [Efficient parametrisations for normal linear mixed models](https://www.jstor.org/stable/2337527?seq=1#metadata_info_tab_contents) from Alan E. Gelfand, Sujit K. Sahu and Bradley P. Carlin. 

Some of this stuff was suggested by [Lucas Moschen](https://lucasmoschen.github.io/) in this [issue](https://github.com/maxbiostat/Computational_Statistics/issues/4#issuecomment-946332805). 


## Resources
- My course on [Computational Statistics](https://github.com/maxbiostat/Computational_Statistics/) is a good source of in-depth material. In particular, slides for a crash course on MCMC are [here](https://github.com/maxbiostat/Computational_Statistics/blob/master/slides/mcmc_crash_course.pdf).
- If you know what's good for you, you will check out [Mike Betancourt's writtings](https://betanalpha.github.io/writing/). 
- A good resource in Portuguese is [Marco Inácio's](https://github.com/randommm) [Apostila de Stan](https://marcoinacio.com/stan/). But beware it was written some time ago and the language has move forward quite a bit.  
- Stan's [documentation page](https://mc-stan.org/users/documentation/) is also a great place to find tips and tricks.
