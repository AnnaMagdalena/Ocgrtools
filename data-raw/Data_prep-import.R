# Preparing the Line P dataset into a format for my package

library(tidyverse)

data <- read_csv("~/GitHub/Ocgrtools/data-raw/CuLineP201127.csv")

#converting chr to factors
data$stn <- as.factor(data$stn)

# rename the dataset
CuLineP201127<- data

# saving the dataset in the data folder
devtools::use_data(CuLineP201127)
