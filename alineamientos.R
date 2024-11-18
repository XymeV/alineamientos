#script alineamiento

library(BSgenome)
library(Biostrings)
library(BiocManager)
library(ggmsa)
library(msa)
secuencia<-readAAStringSet("Insulinas.fasta")
secuencia

alineamiento<-msa(secuencia, method = "ClustalW")
alineamiento
alineamiento2<-msa(secuencia, method = "Muscle")
alineamiento2
  alineamiento3<-msa(secuencia, method = "ClustalOmega")
alineamiento3


