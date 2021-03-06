# Uncertainty Quantification: Experimental data
# Copyright (C) 2018 
# Alexandra Jauhiainen (alexandra.jauhiainen@gmail.com)
# Olivia Eriksson
# Anu G Nair

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.

# Data references:
# Stemmer PM, Klee CB. Biochemistry. 1994;33(22):6859-6866.
# O'Donnell SE et al. Proteins. 2011;79(3):765-786.
# Shifman JM et al. PNAS USA. 2006;103(38):13968-13973.
# Bradshaw JM et al. PNAS USA. 2003;100(18):10512-10517.


loadTargets <- function(){
  
  xtarget <- list()
  ytarget <- list()
  
  # Fig 3A
  A <-  read.csv('TargetsFig3/Ca_CaM_binding_hyperbolic.txt', sep='\t')
  xtarget[[1]] <- log10(A[,1])
  ytarget[[1]] <- A[,2]
  
  # Fig 3B
  B = read.csv('TargetsFig3/CaN-CaM.txt', sep='\t')
  xtarget[[2]] <- B[,1]
  ytarget[[2]] <- B[,2]
  
  # Fig 3C
  C1 <- read.csv('TargetsFig3/CaN-activation-by-Ca-30nmCaM.txt', sep='\t')
  C2 <- read.csv('TargetsFig3/CaN-activation-by-Ca-300nmCaM.txt', sep='\t')
  xtarget[[3]] <- C1[,1]
  ytarget[[3]] <- C1[,2]
  xtarget[[4]] <- C2[,1]
  ytarget[[4]] <- C2[,2]
  
  return(list(xtarget=xtarget, ytarget=ytarget))
}
