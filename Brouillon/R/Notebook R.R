# installation (si nécessaire)
#install.packages("FactoMineR") 
require(FactoMineR)

# Get the database from excel
library(readxl)
#BASE<- read_excel("Y:\\Recherche\\cours\\IAE\\M2\\M2 exo.xlsm",sheet = "CAC40Name", range = "A8:IR46")
BASE<- read_excel("E:\\M2 Math et outils\\M2 exo.xlsm",sheet = "CAC40Name", range = "A8:IR46")

# transforme la premiere colonne en indice
#install.packages("tidyverse") 
require(tibble)
BASE<-column_to_rownames(as.data.frame(BASE),var="Name")
print(colnames(BASE))
View(BASE)

#variables supplémentaires
#monACP=PCA(BASE, quali.sup=(1), quanti.sup=c(2,251), graph=FALSE)
monACP=PCA(BASE, quali.sup=(1), graph=FALSE)
layout(matrix(1:2, nrow=1))
plot(monACP, choix="ind", cex=0.7, habillage="theme")
plot(monACP, choix="var")


# installation, si nécessaire:
# install.packages("explor") 
layout(matrix(1:2, nrow = 1))
require("explor") # chargement
explor(monACP)


#----THEME CYCLIQUES-----------------------------------------------------------------------
#http://factominer.free.fr/factomethods/principal-components-analysis.html

# installation (si nécessaire)
#install.packages("FactoMineR") 
require(FactoMineR)

# Get the database from excel
library(readxl)
#BASE<- read_excel("Y:\\Recherche\\cours\\IAE\\M2\\M2 exo.xlsm",sheet = "cyclique", range = "B8:M155")
BASE<- read_excel("E:\\M2 Math et outils\\M2 exo.xlsm",sheet = "cyclique", range = "B8:M155")


# transforme la premiere colonne en indice
#install.packages("tidyverse") 
require(tibble)
BASE<-column_to_rownames(as.data.frame(BASE),var="Name")
print(colnames(BASE))
View(BASE)

#variables supplémentaires
#monACP=PCA(BASE, quali.sup=(11), quanti.sup=c(1,12), graph=FALSE)
#base[,1:11]: definit les colonnes de la base qui sont chargées
#quanti sup: variable quantitative supplémentaire non utilisée
#qualisup: variable qualitative supplémentaire non utilisée
monACP=PCA(BASE[,1:11], quanti.sup=c(1),quali.sup=(11), graph=FALSE)
layout(matrix(1:2, nrow=1))
plot(monACP, choix="ind", cex=0.7, habillage="FactSet Level 1 Sector")
plot(monACP, choix="var")


# installation, si nécessaire:
# install.packages("explor") 
layout(matrix(1:2, nrow = 1))
require("explor") # chargement
explor(monACP)



#----ACP chaussure-------------------------------------------
#http://factominer.free.fr/factomethods/principal-components-analysis.html

# installation (si nécessaire)
#install.packages("FactoMineR") 
require(FactoMineR)

# Get the database from excel
library(readxl)
#BASE<- read_excel("Y:\\Recherche\\cours\\IAE\\M2\\M2 exo.xlsm",sheet = "cyclique", range = "B8:M155")
BASE<- read_excel("E:\\M2 Math et outils\\M2 exo.xlsm",sheet = "ACP chaussure", range = "A1:I31")


# transforme la premiere colonne en indice
#install.packages("tidyverse") 
require(tibble)
BASE<-column_to_rownames(as.data.frame(BASE),var="Client")
print(colnames(BASE))
View(BASE)

#variables supplémentaires
#monACP=PCA(BASE, quali.sup=(11), quanti.sup=c(1,12), graph=FALSE)
#base[,1:11]: definit les colonnes de la base qui sont chargées
#quanti sup: variable quantitative supplémentaire non utilisée
#qualisup: variable qualitative supplémentaire non utilisée
#quand les colonnes ne sont pas contigues, mettre c devant les parenthèses
monACP=PCA(BASE[,1:8],quali.sup=c(1,2,7), graph=FALSE)
layout(matrix(1:2, nrow=1))
plot(monACP, choix="ind", cex=0.7, habillage="Sexe")
plot(monACP, choix="var")


# installation, si nécessaire:
# install.packages("explor") 
layout(matrix(1:2, nrow = 1))
require("explor") # chargement
explor(monACP)

#----ACP Iris-------------------------------------------
#http://factominer.free.fr/factomethods/principal-components-analysis.html

# installation (si nécessaire)
#install.packages("FactoMineR") 
require(FactoMineR)

# Get the database from excel
library(readxl)
#BASE<- read_excel("Y:\\Recherche\\cours\\IAE\\M2\\M2 exo.xlsm",sheet = "cyclique", range = "B8:M155")
BASE<- read_excel("E:\\M2 Math et outils\\M2 exo.xlsm",sheet = "AFDIris", range = "A1:F151")


# transforme la premiere colonne en indice
#install.packages("tidyverse") 
require(tibble)
BASE<-column_to_rownames(as.data.frame(BASE),var="NB")
print(colnames(BASE))
View(BASE)

#variables supplémentaires
#monACP=PCA(BASE, quali.sup=(11), quanti.sup=c(1,12), graph=FALSE)
#base[,1:11]: definit les colonnes de la base qui sont chargées
#quanti sup: variable quantitative supplémentaire non utilisée
#qualisup: variable qualitative supplémentaire non utilisée
#quand les colonnes ne sont pas contigues, mettre c devant les parenthèses
monACP=PCA(BASE[,1:5],quali.sup=c(5), graph=FALSE)
layout(matrix(1:2, nrow=1))
plot(monACP, choix="ind", cex=0.7, habillage="Species")
plot(monACP, choix="var")


# installation, si nécessaire:
# install.packages("explor") 
layout(matrix(1:2, nrow = 1))
require("explor") # chargement
explor(monACP)









