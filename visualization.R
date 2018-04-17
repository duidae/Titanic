library(readr) # File read / write
library(dplyr)

train <- read_csv("train.csv")
test <- read_csv("test.csv")

data <- bind_rows(train, test)

train_row <- 1:nrow(train)
test_row <- (1 + nrow(train)):(nrow(train) + nrow(test))
