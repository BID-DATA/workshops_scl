# Código para ejercicio de taller tidyverse

##### Preliminares #####

library(tidyverse)
library(data.table)
library(scales)
library(extrafont)

##### Leer data y cambiar nombres #####

diccionario <- read.csv("data/diccionario_variables.csv") %>% 
  mutate(question = tolower(question)) 

bol_12_raw <- read.csv("data/BOL2012_National.csv")

bol_18_raw <- read.csv("data/BOL2018_National.csv")

data_rename_18 <- bol_18_raw %>% 
  setnames(old = diccionario$question, new = diccionario$variable, skip_absent = TRUE) 

##### Ejercicio 1: filtrar #####

##### Ejercicio 2: encontrar #####

##### Ejercicio 3: diferencia #####


