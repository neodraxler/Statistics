Peso <- read_csv("height_weight_dataset.csv")
view (Peso)
Barra <- (cor(Peso$Height_cm, Peso$Weight_kg)) # returns a single correlation coefficient
plot (Barra) # only plots a single variable
# To return all variables
plot (Peso$Height_cm,
      Peso$Weight_kg,
      xlab = "Height (cm)",
      ylab = "Weight (kg)")
# Not working      main = paste("Height vs Weight, r=", round (r, 2)))

