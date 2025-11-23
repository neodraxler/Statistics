SK_right <- ("right_skewed_dataset.csv")
SK_right_dataset <-read.csv ("right_skewed_dataset.csv")
view(SK_right_dataset)
plot (density(SK_right_dataset$right_skewed))
