if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ggtree")
library(ggtree)
install.packages("seqinr")
library(seqinr)
library(ggmsa)
library(ape)

tree1<- msaConvert(alineamiento, type="seqinr::alignment")
arbol3 <- dist.alignment(tree1, "identity")
arbol4 <- nj("raw data/Insulinas.fasta") #meciona que no pyede construirse un nj con menos de tres observaciones.
plot(arbol4, main="Arbol filogenetica de globinas")
