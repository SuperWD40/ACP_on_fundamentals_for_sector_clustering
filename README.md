# README - Analyse de la relation entre performances boursières et données fondamentales  

## 1. Contexte  

Ce notebook a été réalisé dans le cadre du **Master 2 Management Financier** de l'**IAE Paris Sorbonne**, pour le cours de **Connaissance des marchés** enseigné par **Monsieur Prat**.  

L'objectif de ce projet est d'analyser l'impact des **données fondamentales** sur les **performances boursières** des secteurs aux États-Unis à l'aide de méthodes quantitatives avancées.  

## 2. Objectifs  

Le projet vise à répondre aux questions suivantes :  
- Quel est le coefficient de corrélation entre chaque donnée fondamentale et les performances boursières ?  
- Comment les techniques d’analyse statistique (ACP, AFD, régression linéaire) permettent-elles de mettre en évidence ces relations ?  
- Existe-t-il des **spécificités sectorielles** ou des **thèmes d’investissement** qui émergent de cette analyse ?  
- Y a-t-il des années où les données fondamentales prédisent mieux les performances des secteurs ?  
- Comment construire une **méthode de scoring** pour sélectionner les meilleurs secteurs d’investissement en début d’année ?  
- Quelles améliorations peuvent être apportées à la méthodologie ?  

## 3. Méthodologie  

Pour répondre à ces questions, les méthodes suivantes ont été utilisées :  
- **Table de corrélation** pour identifier les relations linéaires entre les variables.  
- **Analyse en Composantes Principales (ACP)** pour visualiser les relations entre les indicateurs fondamentaux et les performances sectorielles.  
- **Régression linéaire** pour quantifier l’impact des variables fondamentales sur la performance des indices sectoriels.  

## 4. Structure du Notebook  

1. **Importation des données**  
   - Les données, préparées au préalable sous Excel, sont nettoyées et formatées pour l’analyse.  
   - Simplification des noms de lignes et colonnes.  
   - Ajout de colonnes pour faciliter l’identification des périodes d’analyse.  
   
2. **Exploration des données**  
   - Sélection d’un secteur à analyser.  
   - Restructuration du dataset pour faciliter les traitements.  

3. **Table de corrélation**  
   - Analyse de la relation entre les performances boursières et les variables fondamentales.  
   - Identification des variables les plus influentes.  

4. **Analyse en Composantes Principales (ACP)**  
   - Visualisation des liens entre les facteurs fondamentaux et la performance des secteurs.  
   - Identification des principales dimensions explicatives.  

5. **Régression linéaire**  
   - Modélisation de l’impact des variables fondamentales sur la performance.  
   - Validation statistique des relations observées.  

6. **Méthode de scoring pour l’investissement sectoriel**  
   - Proposition d’un score basé sur l’analyse des données fondamentales.  
   - Évaluation des performances de la stratégie de sélection sectorielle.  

7. **Axes d’amélioration**  
   - Discussion sur les limites des modèles utilisés.  
   - Suggestions pour affiner la méthodologie.  

## 5. Prérequis  

Pour exécuter ce notebook, il est nécessaire d’avoir les bibliothèques suivantes installées :  
```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.decomposition import PCA
from sklearn.linear_model import LinearRegression
```

## 6. Utilisation  

1. Télécharger le notebook et les données associées.  
2. Exécuter les cellules du notebook dans un environnement Jupyter Notebook ou Google Colab.  
3. Analyser les résultats et adapter les modèles si nécessaire.  

## 7. Contact  

Ce projet a été réalisé dans le cadre du Master 2 Management Financier de l'IAE Paris Sorbonne sous la supervision de **Monsieur Prat**.  

