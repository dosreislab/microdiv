          seed = -1       

       seqfile = ../data/dm_17.phy
      treefile = ../data/dm_17.tree
      mcmcfile = mcmc.txt
       outfile = out.txt

         ndata = 1
       seqtype = 2    * 0: nucleotides; 1:codons; 2:AAs
       usedata = 2    * 0: no data (prior); 1:exact likelihood;
                      * 2: approximate likelihood; 3:out.BV (in.BV)
         clock = 2    * 1: global clock; 2: independent rates; 3: correlated rates

         BDparas = 1 1 0   * birth, death, sampling
     kappa_gamma = 6 2     * gamma prior for kappa
     alpha_gamma = 1 1     * gamma prior for alpha

     rgene_gamma = 2 40 1   * gammaDir prior for rate for genes
    sigma2_gamma = 1 10 1   * gammaDir prior for sigma^2     (for clock=2 or 3)

           print = 1   * 0: no mcmc sample; 1: everything except branch rates 2: all 
          burnin = 1000
        sampfreq = 2
         nsample = 20000
