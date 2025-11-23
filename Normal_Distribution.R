# Normal Distribution Dataset
## Check what is installed in your environment
sessionInfo()
Sys.info()
## Install missing packages
install.packages("tidyverse")
install.packages("psych")
install.packages("DescTools")
library(tidyverse)
library(psych)
library(DescTools)
# Load Dataset
ND_Dataset <-read.csv("normal_dataset.csv")
#View Dataset
view(ND_Dataset)
# Histogram
hist(ND_Dataset$normal)
# Density Plot
plot(density(ND_Dataset$normal))
# Box Plot
boxplot(ND_Dataset$normal)