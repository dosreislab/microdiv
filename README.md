# Dating microbial phylogenies with MCMCtree

This tutorial shows how to date microbial phylogenies with the computer program
MCMCtree (Yang 2007) using the fast approximate likelihood method (dos Reis and
Yang 2011).

Two datasets are analysed: the eukaryote/prokaryote phylogeny of Betts et al.
(2018) and the influenza phylogeny of dos Reis et al. (2011) as analysed by
Stadler and Yang (2013). The data files are in the `betts/data` and `flu/data`
directories respectively. The control files necessary to run MCMCtree with the
approximate method are in `betts/gH`, `betts/mcmc`, `flu/gH` and `flu/mcmc`.  R
scripts to perform MCMC diagnostics are in the `R/` directory. See the
documentation in `doc/` for details.

The source code for MCMCtree version 4.9j (and related programs) is available in
the `src/` directory. This was the version used to prepare this tutorial.

## References

* dos Reis and Yang (2011) Approximate likelihood calculation on a phylogeny for
  Bayesian estimation of divergence times. _Mol. Biol. Evol._, 28: 2161–2172.

* dos Reis et al. (2011) Charting the host adaptation of influenza viruses.
_Mol. Bio. Evol._, 28: 1755–1767.

* Stadler and Yang (2013) Dating phylogenies with sequentially sampled tips.
_Syst. Biol._ 62: 674–688.

* Yang (2007) PAML 4: Phylogenetic Analysis by Maximum Likelihood.
_Mol. Biol. Evol._ 24: 1586-1591.
