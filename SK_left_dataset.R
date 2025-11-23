SK_left_dataset <-read_csv("left_skewed_dataset.csv")
view(SK_left_dataset)
plot(density(SK_left_dataset$left_skewed))
