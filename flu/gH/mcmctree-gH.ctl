       seqfile = ../data/H1.phy
      treefile = ../data/H1.tree

       seqtype = 0  * 0: nucleotides; 1:codons; 2:AAs
       usedata = 3  * 0: no data; 1:seq like; 2:use in.BV; 3: out.BV

         ndata = 1    

         model = 4    * 0:JC69, 1:K80, 2:F81, 3:F84, 4:HKY85
         alpha = 0.5    * alpha for gamma rates at sites
         ncatG = 5    * No. categories in discrete gamma

     cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?
