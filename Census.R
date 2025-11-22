library(tidyverse)
library(DescTools)
library(psych)
Census <- read_csv("Census_Chicago.csv")
view (Census)
# Barchart
library(ggplot2)
Census %>%
  ggplot(aes(x = reorder(`COMMUNITY AREA NAME`, `PERCENT HOUSEHOLDS BELOW POVERTY`), 
             y = `PERCENT HOUSEHOLDS BELOW POVERTY`)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(x = "Community Area", y = "Percent Below Poverty", title = "Poverty Rate by Community Area")