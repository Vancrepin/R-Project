R version 4.1.2 (2021-11-01) -- "Bird Hippie"
Copyright (C) 2021 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/.RData]

> setwd("C:\Users\Van Crepin\Documents\Nouveau dossier (2)")
Error: '\U' used without hex digits in character string starting ""C:\U"
> setwd("C:\\Users\\Van Crepin\\Documents\\Nouveau dossier (2)")
> # Créer les sous-répertoires pour organiser le projet
> dir.create("data")
> dir.create("scripts")
> dir.create("outputs")
> dir.create("docs")
> # Charger les packages nécessaires
> library(tidyverse)  # Pour la manipulation des données et visualisations
-- Attaching packages ----------------- tidyverse 1.3.1 --
â^s ggplot2 3.3.5     â^s purrr   0.3.4
â^s tibble  3.1.6     â^s dplyr   1.0.7
â^s tidyr   1.1.4     â^s stringr 1.4.0
â^s readr   2.1.1     â^s forcats 0.5.1
-- Conflicts -------------------- tidyverse_conflicts() --
x dplyr::filter() masks stats::filter()
x dplyr::lag()    masks stats::lag()
> 
> # Lire les données depuis le fichier CSV
> data <- read.csv("C:\\Users\\Van Crepin\\Documents\\Nouveau dossier (2)\\data\\Customer-survey-data.csv")
> 
> 
> # Aperçu des premières lignes du jeu de données
> head(data)
  Customer
1        1
2        2
3        3
4        4
5        5
6        6
  How.satisfied.were.you.with.your.overall.delivery.experience.at.Ali.....................1.5.where.1...extremely.dissatisfied.and.5...extremely.satisfied
1                                                                                                                                                        5
2                                                                                                                                                        3
3                                                                                                                                                        4
4                                                                                                                                                        5
5                                                                                                                                                        2
6                                                                                                                                                        5
  How.satisfied.were.you.with.the.quality.of.the.food.at.Alis..............................1.5.where.1...extremely.dissatisfied.and.5...extremely.satisfied
1                                                                                                                                                         3
2                                                                                                                                                         4
3                                                                                                                                                         5
4                                                                                                                                                         3
5                                                                                                                                                         5
6                                                                                                                                                         2
  How.satisfied.were.you.with.the.speed.of.delivery.at.Alis.................................1.5.where.1...extremely.dissatisfied.and.5...extremely.satisfied
1                                                                                                                                                          4
2                                                                                                                                                          3
3                                                                                                                                                          2
4                                                                                                                                                          4
5                                                                                                                                                          1
6                                                                                                                                                          5
  Was.your.order.accurate..Please.respond.yes.or.no.
1                                                Yes
2                                                Yes
3                                                Yes
4                                                Yes
5                                                Yes
6                                                Yes
> # Structure des données (pour comprendre les types de variables)
> str(data)
'data.frame':	10616 obs. of  5 variables:
 $ Customer                                                                                                                                                  : int  1 2 3 4 5 6 7 8 9 10 ...
 $ How.satisfied.were.you.with.your.overall.delivery.experience.at.Ali.....................1.5.where.1...extremely.dissatisfied.and.5...extremely.satisfied  : int  5 3 4 5 2 5 1 3 5 3 ...
 $ How.satisfied.were.you.with.the.quality.of.the.food.at.Alis..............................1.5.where.1...extremely.dissatisfied.and.5...extremely.satisfied : int  3 4 5 3 5 2 4 3 1 5 ...
 $ How.satisfied.were.you.with.the.speed.of.delivery.at.Alis.................................1.5.where.1...extremely.dissatisfied.and.5...extremely.satisfied: int  4 3 2 4 1 5 3 2 3 3 ...
 $ Was.your.order.accurate..Please.respond.yes.or.no.                                                                                                        : chr  "Yes" "Yes" "Yes" "Yes" ...
> # Résumé statistique des données
> summary(data)
    Customer    
 Min.   :    1  
 1st Qu.: 2655  
 Median : 5308  
 Mean   : 5308  
 3rd Qu.: 7962  
 Max.   :10616  
                
 How.satisfied.were.you.with.your.overall.delivery.experience.at.Ali.....................1.5.where.1...extremely.dissatisfied.and.5...extremely.satisfied
 Min.   :1.000                                                                                                                                           
 1st Qu.:2.000                                                                                                                                           
 Median :3.000                                                                                                                                           
 Mean   :3.325                                                                                                                                           
 3rd Qu.:5.000                                                                                                                                           
 Max.   :5.000                                                                                                                                           
 NA's   :418                                                                                                                                             
 How.satisfied.were.you.with.the.quality.of.the.food.at.Alis..............................1.5.where.1...extremely.dissatisfied.and.5...extremely.satisfied
 Min.   :1.000                                                                                                                                            
 1st Qu.:2.000                                                                                                                                            
 Median :3.000                                                                                                                                            
 Mean   :3.332                                                                                                                                            
 3rd Qu.:5.000                                                                                                                                            
 Max.   :5.000                                                                                                                                            
 NA's   :252                                                                                                                                              
 How.satisfied.were.you.with.the.speed.of.delivery.at.Alis.................................1.5.where.1...extremely.dissatisfied.and.5...extremely.satisfied
 Min.   :1.000                                                                                                                                             
 1st Qu.:2.000                                                                                                                                             
 Median :3.000                                                                                                                                             
 Mean   :3.323                                                                                                                                             
 3rd Qu.:5.000                                                                                                                                             
 Max.   :5.000                                                                                                                                             
 NA's   :239                                                                                                                                               
 Was.your.order.accurate..Please.respond.yes.or.no.
 Length:10616                                      
 Class :character                                  
 Mode  :character                                  
                                                   
                                                   
                                                   
                                                   
> 1. Nettoyage des données
Error: unexpected symbol in "1. Nettoyage"
> # Supprimer les lignes avec des valeurs manquantes dans les colonnes de satisfaction
> data_clean <- data %>%
+     drop_na(`How satisfied were you with your overall delivery experience at Ali?  1-5 where 1 = extremely dissatisfied and 5 = extremely satisfied`,
+             `How satisfied were you with the quality of the food at Alis? 1-5 where 1 = extremely dissatisfied and 5 = extremely satisfied`,
+             `How satisfied were you with the speed of delivery at Alis?   1-5 where 1 = extremely dissatisfied and 5 = extremely satisfied`)
Error in `stop_subscript()`:
! Can't subset columns that don't exist.
x Column `How satisfied were you with your overall delivery experience at Ali?  1-5 where 1 = extremely dissatisfied and 5 = extremely satisfied` doesn't exist.
Run `rlang::last_error()` to see where the error occurred.
> 
> data_clean <- data %>%
+     drop_na(`How satisfied were you with your overall delivery experience at Ali?                    1-5 where 1 = extremely dissatisfied and 5 = extremely satisfied`,
+             `How satisfied were you with the quality of the food at Alis?                             1-5 where 1 = extremely dissatisfied and 5 = extremely satisfied`,
+             `How satisfied were you with the speed of delivery at Alis?                                1-5 where 1 = extremely dissatisfied and 5 = extremely satisfied`)
Error in `stop_subscript()`:
! Can't subset columns that don't exist.
x Column `How satisfied were you with your overall delivery experience at Ali?                    1-5 where 1 = extremely dissatisfied and 5 = extremely satisfied` doesn't exist.
Run `rlang::last_error()` to see where the error occurred.
> # Renommer les colonnes avec des noms plus courts
> colnames(data) <- c("Customer", "Satisfaction_globale", "Qualite_nourriture", "Rapidite_livraison", "Exactitude_commande")
> # Vérifier les nouveaux noms
> colnames(data)
[1] "Customer"             "Satisfaction_globale"
[3] "Qualite_nourriture"   "Rapidite_livraison"  
[5] "Exactitude_commande" 
> # Supprimer les lignes avec des valeurs manquantes dans les colonnes de satisfaction
> data_clean <- data %>%
+     drop_na(Satisfaction_globale, Qualite_nourriture, Rapidite_livraison)
> # Remplacer les valeurs manquantes dans "Exactitude_commande" par "Inconnu"
> data_clean$Exactitude_commande[is.na(data_clean$Exactitude_commande)] <- "Inconnu"
> # Création des segments basés sur la satisfaction globale
> data_clean <- data_clean %>%
+     mutate(Segment_Client = case_when(
+         Satisfaction_globale >= 4 ~ "Très satisfait",
+         Satisfaction_globale == 3 ~ "Satisfait",
+         TRUE ~ "Insatisfait"
+     ))
> # Vérifier la répartition des segments
> table(data_clean$Segment_Client)

   Insatisfait      Satisfait Très satisfait 
          3236           2238           4455 
> # Aperçu des données nettoyées
> head(data_clean)
  Customer Satisfaction_globale Qualite_nourriture
1        1                    5                  3
2        2                    3                  4
3        3                    4                  5
4        4                    5                  3
5        5                    2                  5
6        6                    5                  2
  Rapidite_livraison Exactitude_commande Segment_Client
1                  4                 Yes Très satisfait
2                  3                 Yes      Satisfait
3                  2                 Yes Très satisfait
4                  4                 Yes Très satisfait
5                  1                 Yes    Insatisfait
6                  5                 Yes Très satisfait
> # Charger le package nécessaire pour les tests
> library(car)
Loading required package: carData

Attaching package: 'car'

The following object is masked from 'package:dplyr':

    recode

The following object is masked from 'package:purrr':

    some

> # Effectuer l'ANOVA et sauvegarder le modèle
> anova_model <- aov(Satisfaction_globale ~ Segment_Client, data = data_clean)
> shapiro_test <- shapiro.test(residuals(anova_model))
Error in shapiro.test(residuals(anova_model)) : 
  sample size must be between 3 and 5000
> qqline(residuals(anova_model), col = "red")
Error in int_abline(a = a, b = b, h = h, v = v, untf = untf, ...) : 
  plot.new has not been called yet
> qqnorm(residuals(anova_model))
> 
> qqline(residuals(anova_model), col = "red")
> # Résumé des résultats de l'ANOVA
> anova_result <- summary(anova_model)
> 
> print(anova_result)
                 Df Sum Sq Mean Sq F value Pr(>F)    
Segment_Client    2  18464    9232   55381 <2e-16 ***
Residuals      9926   1655       0                   
---
Signif. codes:  
0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
> # Test post-hoc de Tukey pour comparer les moyennes entre les segments
> tukey_test <- TukeyHSD(anova_model)
> print(tukey_test)
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = Satisfaction_globale ~ Segment_Client, data = data_clean)

$Segment_Client
                               diff      lwr      upr
Satisfait-Insatisfait      1.387206 1.360895 1.413518
Très satisfait-Insatisfait 3.112908 3.090803 3.135013
Très satisfait-Satisfait   1.725701 1.700905 1.750498
                           p adj
Satisfait-Insatisfait          0
Très satisfait-Insatisfait     0
Très satisfait-Satisfait       0

> # Boxplot des segments de clients par niveau de satisfaction
> boxplot(Satisfaction_globale ~ Segment_Client, data = data_clean,
+         main = "Satisfaction globale par segment de client",
+         xlab = "Segment de client", ylab = "Satisfaction globale",
+         col = c("lightblue", "lightgreen", "lightcoral"))
> # Sélection des variables numériques pour la corrélation
> numeric_vars <- data_clean %>%
+     select_if(is.numeric)
> # Calcul des corrélations entre la satisfaction globale et les autres variables
> correlation_matrix <- cor(numeric_vars, use = "complete.obs")
> # Extraire les corrélations avec la satisfaction globale
> satisfaction_corr <- correlation_matrix["Satisfaction_globale",]
> # Afficher les corrélations triées
> print(sort(satisfaction_corr, decreasing = TRUE))
Satisfaction_globale   Rapidite_livraison 
        1.0000000000         0.4514737792 
  Qualite_nourriture             Customer 
        0.4451662446        -0.0007847911 
> # Tester les interactions pour chaque variable
> interaction_models <- list()
> for (var in colnames(numeric_vars)) {
+     if (var != "Satisfaction_globale") {
+         formula <- as.formula(paste("Satisfaction_globale ~ Segment_Client *", var))
+         interaction_models[[var]] <- aov(formula, data = data_clean)
+         print(summary(interaction_models[[var]]))
+     }
+ }
                          Df Sum Sq Mean Sq   F value
Segment_Client             2  18464    9232 55364.170
Customer                   1      0       0     0.003
Segment_Client:Customer    2      0       0     0.002
Residuals               9923   1655       0          
                        Pr(>F)    
Segment_Client          <2e-16 ***
Customer                 0.959    
Segment_Client:Customer  0.998    
Residuals                         
---
Signif. codes:  
0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
                                    Df Sum Sq Mean Sq
Segment_Client                       2  18464    9232
Qualite_nourriture                   1     33      33
Segment_Client:Qualite_nourriture    2      6       3
Residuals                         9923   1615       0
                                   F value   Pr(>F)    
Segment_Client                    56706.27  < 2e-16 ***
Qualite_nourriture                  201.47  < 2e-16 ***
Segment_Client:Qualite_nourriture    19.54 3.39e-09 ***
Residuals                                              
---
Signif. codes:  
0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
                                    Df Sum Sq Mean Sq
Segment_Client                       2  18464    9232
Rapidite_livraison                   1     41      41
Segment_Client:Rapidite_livraison    2      7       4
Residuals                         9923   1606       0
                                   F value   Pr(>F)    
Segment_Client                    57038.30  < 2e-16 ***
Rapidite_livraison                  255.23  < 2e-16 ***
Segment_Client:Rapidite_livraison    22.42 1.94e-10 ***
Residuals                                              
---
Signif. codes:  
0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
> # Charger les bibliothèques nécessaires
> library(ggplot2)
> # Créer un boxplot pour visualiser l'interaction entre la qualité de la nourriture et la satisfaction globale
> ggplot(data_clean, aes(x = Qualite_nourriture, y = Satisfaction_globale, fill = Segment_Client)) +
+     geom_boxplot() +
+     labs(title = "Interaction entre Qualité de la Nourriture et Satisfaction Globale par Segment de Client",
+          x = "Qualité de la Nourriture",
+          y = "Satisfaction Globale") +
+     theme_minimal() +
+     scale_fill_brewer(palette = "Set2")
> # Créer un boxplot pour visualiser l'interaction entre la rapidité de livraison et la satisfaction globale
> ggplot(data_clean, aes(x = Rapidite_livraison, y = Satisfaction_globale, fill = Segment_Client)) +
+     geom_boxplot() +
+     labs(title = "Interaction entre Rapidité de Livraison et Satisfaction Globale par Segment de Client",
+          x = "Rapidité de Livraison",
+          y = "Satisfaction Globale") +
+     theme_minimal() +
+     scale_fill_brewer(palette = "Set2")
> 