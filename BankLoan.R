#Install Packages & Load Libraries
library(DescTools)
library(tidyverse)
library(psych)
#Load Data
BankLoan <- (read_csv("Neo_BankLoan.csv"))
#View Data
View(BankLoan)
describe(BankLoan) # calculates basic descriptive analytics
#Create Data.frame from describe
Tabela <- data.frame(describe(BankLoan))
View(Tabela)
# Barplot
Income_By_Ed <- tapply(BankLoan$income, BankLoan$ed, mean, na.rm = TRUE)
barplot(Income_By_Ed,
        main = "Income by Education Level",
        xlab = "Education Level",
        ylab = "Mean Income",
        las = 1)
#Boxplot
boxplot(income ~ ed, data = BankLoan,
        main = "Income Distribution by Education Level",
        xlab = "Education Level", ylab = "Income")
boxplot(age ~ ed, data = BankLoan,
        main = "Age Distribution by Education Level",
        xlab = "Education Level", ylab = "Age")
#Plot
plot(BankLoan$age, BankLoan$income,
     main = "Income vs Age",
     xlab = "Age", ylab = "Income")
#Histogram
hist(BankLoan$income,
     main = "Histogram of Income",
     xlab = "Income", ylab = "Frequency")
hist(BankLoan$age,
     main = "Histogram of Age",
     xlab = "Age", ylab = "Frequency")
#Plot
plot(density(BankLoan$income, na.rm = TRUE),
     main = "Density Plot of Income",
     xlab = "Income")
#ggplot2 installation
install.packages("ggplot2")
library(ggplot2)
#Scatter Plot
ggplot(BankLoan, aes(x = age, y = income)) +
  geom_point() +
  labs(title = "Scatter Plot: Income vs Age",
       x = "Age",
       y = "Income")
# Violin
ggplot(BankLoan, aes(x = factor(ed), y = age)) +
  geom_violin(trim = FALSE) +
  labs(title = "Age Distribution by Education Level",
       x = "Education Level",
       y = "Age")
#Gem Violin
ggplot(BankLoan, aes(x = factor(ed), y = income)) +
  geom_violin(trim = FALSE) +
  geom_boxplot(width = 0.1) +
  labs(title = "Income Distribution by Education Level",
       x = "Education Level",
       y = "Income")