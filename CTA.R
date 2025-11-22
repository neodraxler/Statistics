#DO NOT FORGET
install.packages("tidyverse")
library(tidyverse)
library(DescTools)
library(psych)
#Read File
CTA <- read.csv ("CTA.csv")
#View File
view (CTA)
ND_codebookHWData <- Neo_codebookHWData
view (ND_codebookHWData)
#Cronbach
ND_codebookHWData %>% 
  select(EOver1:EOver4) %>%      # select only the item columns
  psych::alpha()
ND_codebookHWData %>%
  select(EWrkImp1:EWrkImp4) %>%
  psych::alpha()
# Testing GitHub

