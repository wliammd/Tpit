library(tidyverse)
patma <- read_csv("data.raw/PATMA8.csv")

patma %>% 
  count(Dx, sort = TRUE)

# The following assigns a new variable newDx the value of ACTH if TPITMedian is 4 or more, or renders newDx of Dx if the value is either missing or not >3). By comparing patma with TpitAdded, we can see the number and type of cases that switched to a diagnosis of corticotroph. NULL's and UNK's decrease. Importantly, GON's do NOT decrease.

TpitAdded <- patma %>% 
  mutate(newDx = if_else(TPITMedian > 3 & Dx != "PLUR", "ACTH", Dx, missing = Dx))

TpitAdded %>%
  count(newDx, sort = TRUE)

TpitAdded %>%
  write_csv(path = "data/TpitAddedDx")
