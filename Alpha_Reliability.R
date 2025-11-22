# Do Not Forget
install.packages("tidyverse")
install.packages("DescTools")
install.packages("psych")
library(tidyverse)
library(DescTools)
library(psych)
# Read File
codebook <- read.csv ("codebookHWData.csv")
# View File
view (codebook)
# Reliability_per_variable
alpha_EOver <- codebook %>% 
  select(EOver1:EOver4) %>%      
  psych::alpha()
alpha_EOver_df <- as.data.frame(alpha_EOver$total)
alpha_EWrkImp <- codebook %>%
  select(EWrkImp1:EWrkImp4) %>% 
  psych::alpha()
alpha_EWrkImp_df <- as.data.frame(alpha_EWrkImp$total)
alpha_ECogLoad <- codebook %>%
  select(ECogLoad1:ECogLoad4) %>%
  psych::alpha()
alpha_ECogLoad_df <- as.data.frame(alpha_ECogLoad$total)
alpha_NA <- codebook %>%
  select(NA1:NA4) %>%
  psych::alpha()
alpha_NA_df <- as.data.frame(alpha_NA$total)
alpha_PA <- codebook %>%
  select(PA1:PA4) %>%
  psych::alpha()
alpha_PA_df <- as.data.frame(alpha_PA$total)
alpha_PrefSeg <- codebook %>%
  select(PrefSeg1:PrefSeg3) %>%
  psych:: alpha()
alpha_PrefSeg_df <- as.data.frame(alpha_PrefSeg$total)
alpha_Burnout <- codebook %>%
  select(Burnout1:Burnout3) %>%
  psych:: alpha()
alpha_Burnout_df <- as.data.frame(alpha_Burnout$total)
alpha_CogFail <- codebook %>%
  select(CogFail1:CogFail5) %>%
  psych:: alpha()
alpha_CogFail_df <- as.data.frame(alpha_CogFail$total)
# Needs Reverse code on Engage9
alpha_Engage <- codebook %>%
  select(Engage1:Engage9) %>%
  psych::alpha()
alpha_Engage_df <- as.data.frame(alpha_Engage$total)
#
#
alpha_Workaholis <- codebook %>%
  select(Workaholis1:Workaholis13) %>%
  psych::alpha()
alpha_Workaholis_df <-as.data.frame(alpha_Workaholis$total)
# Needs Reverse code on MPerf5 and MPerf6
alpha_MPerf <- codebook %>%
  select(MPerf1:MPerf6) %>%
  psych:: alpha()
alpha_MPerf_df <-as.data.frame(alpha_MPerf$total)
# Reliability_All_variables 
alpha_all_variables <- codebook %>%
  select(where(is.numeric)) %>%
  psych::alpha()
alpha_all_variables_df <- as.data.frame(alpha_all_variables$total)
# View
view (alpha_Engage_df)
view (alpha_MPerf_df)
view(alpha_Burnout_df)
view (alpha_all_variables_df)
# Reverse Engage9
codebook <- codebook %>%
  mutate(Engage9_R = (5 + 1) - Engage9)
#
alpha_EngageR <- codebook %>%
  select(Engage1:Engage8, Engage9_R) %>%
  psych::alpha()
alpha_EngageR_df <-as.data.frame(alpha_EngageR$total)
#
# Reverse MPerf 5 and MPerf6
codebook <- codebook %>%
  mutate(
    MPerf5_R = (5 + 1) - MPerf5,
    MPerf6_R = (5 + 1) - MPerf6
  )
#
alpha_MPerfR <- codebook %>%
  select(MPerf1:MPerf4, MPerf5_R, MPerf6_R) %>%
  psych::alpha()
#
alpha_MPerfR_df <- as.data.frame(alpha_MPerf$total)
#
# END OF FILE
#
#