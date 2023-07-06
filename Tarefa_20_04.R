library(dplyr)
library(lubridate)
library(stringr)
dados <- read.csv("AULASR/Pokemon_full.csv")
head(dados)
dados %>% filter(grepl("bee",name)|grepl("saur",name))
dados %>%
  group_by(type)%>%
  mutate(
    z_height= (height-mean(height))/sd(height)
) %>% View
