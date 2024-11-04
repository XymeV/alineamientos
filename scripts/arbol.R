#script arbol
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ggtree")

library(ape)
install.packages("phangorn")
library(phangorn)
install.packages("phytools")
library(phytools)
arbol<-ape::as.AAbin(alineamiento)
arbol<-ape::dist.aa(arbol)
arbol

arbol2<-phangorn::upgma(arbol)
plot(arbol2)
