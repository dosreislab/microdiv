       seqfile = ../data/dm_17.phy 
      treefile = ../data/dm_17.tree

         ndata = 1
       seqtype = 2    * 0: nucleotides; 1:codons; 2:AAs
       usedata = 3    * 0: no data (prior); 1:exact likelihood; 
                      * 2: approximate likelihood; 3:out.BV (in.BV)
         model = 2    * 0: poisson; 1: proportional; 2:Empirical; 
	              * 3: Empirical+F; 6: FromCodon; 8: REVaa_0; 9: REVaa(nr=189) 
         alpha = 0.5  * alpha for gamma rates at sites
         ncatG = 5    * No. categories in discrete gamma
    aaRatefile = lg.dat * Amino acid substitution model rate matrix

     cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?
