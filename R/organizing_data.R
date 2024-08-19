# Organizing data in R

library(tidyverse)
library(palmerpenguins)


penguins %>%
  group_by(island) %>%
  drop_na() %>% # Drops any rows with missing data from the table
  summarize(mean_bill_length_mm = mean(bill_length_mm))

penguins %>%
  group_by(species, island) %>%
  drop_na() %>% # Drops any rows with missing data from the table
  summarize(max_bill_length_mm = max(bill_length_mm))

penguins %>%
  group_by(species, island) %>%
  drop_na() %>% # Drops any rows with missing data from the table
  summarize(max_bill_length_mm = max(bill_length_mm),
            mean_bill_length_mm = mean(bill_length_mm))

penguins %>%
  filter(species == "Adelie")
# Only info on Adelie penguins