# Exercise exploring pipes for nesting code

# Guinea pig tooth growth

data("ToothGrowth")
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth, dose == 0.5)
# Filter to show only dosage that is exactly 0.5

arrange(filtered_tg, len)
# Arranged in ascending order by length

# Accomplishing same functions using nesting:
arrange(filter(ToothGrowth, dose == 0.5), len)

# Accomplishing the same functions using a pipe:
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  arrange(len)

# Get the average length of tooth when dose is 0.5 for each supplement
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  group_by(supp) %>%
  summarize(mean_len = mean(len, na.rm = TRUE), .group = "drop")