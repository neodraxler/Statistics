# Do not forget
# install.packages("tidyverse") #Pre-Installed sessionInfo()
install.packages("psych")
install.packages("DescTools")
library(tidyverse)
library(psych)
library(DescTools)
# Verify Working Directory
getwd()
# Load file
Synthetic <- read_csv("synthetic_data_5000.csv")
# View file
View (Synthetic)
# Probability Frequency (counts)
table(Synthetic$numeric_discrete)
# Probability Relative Frequency (percentage)
prop.table(table(Synthetic$numeric_discrete))
# Standard deviation
sd (Synthetic$numeric_discrete)
# Mean, Median, sd all at once # Not Working
Synthetic %>%
  summarise(
    Mean = mean(Synthetic$numeric_continuous, na.rm = TRUE),
    Median = median(Synthetic$numeric_continuous, na.rm = TRUE),
    SD = sd(Synthetic$numeric_continuous, na.rm = TRUE)
  )
duas <- cor(Synthetic$numeric_discrete, Synthetic$numeric_continuous)
plot (duas)