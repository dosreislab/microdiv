          seed = -1
      seqfile = ../data/H1.phy
     treefile = ../data/H1.tree

       outfile = out.txt
       seqtype = 0  * 0: nucleotides; 1:codons; 2:AAs
         noisy = 3

       usedata = 0  * 0: no data; 1:seq like; 2:use in.BV; 3: out.BV

         ndata = 1    
         clock = 3   * 1: global clock; 2: independent rates; 3: correlated rates
       TipDate = 1 100  * TipDate (1) & time unit

        RootAge = B(1, 5, .001, .001)  * used if no fossil for root

         model = 4    * 0:JC69, 1:K80, 2:F81, 3:F84, 4:HKY85
         alpha = 0.5    * alpha for gamma rates at sites
         ncatG = 5    * No. categories in discrete gamma

     cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

       BDparas = 2   1 0 1.8  * lambda, mu, rho, psi for birth-death-sampling model

   rgene_gamma = 2 10   * gamma prior for rate for genes
  sigma2_gamma = 1 20    * gamma prior for sigma^2  (for clock=2)

      finetune = 1: 0.2 0.04 .05 .05 .05 .05  * auto (0 or 1) : times, rates, mixing, paras, RateParas, FossilErr

         print = 1
        burnin = 1000
      sampfreq = 2
       nsample = 10000
