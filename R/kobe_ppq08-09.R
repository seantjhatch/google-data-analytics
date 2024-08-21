data("lakers")
colnames(lakers)

lakers %>%
  filter(player == "Kobe Bryant") %>%
  distinct(date)

kobe_buckets <- 
  filter(lakers, player == "Kobe Bryant",
         etype == "shot",
         result == "made")
group_by(lakers, period)

view(kobe_buckets)

kobe_appq <- kobe_buckets %>%
  group_by(period) %>%
  summarise(avg_points = (sum(points))/82)

view(kobe_appq)

kobe_appq$period <- ifelse(kobe_appq$period == 5, "OT", kobe_appq$period)

view(kobe_appq)

ggplot(data = kobe_appq, aes(x = period, y = avg_points)) + 
  geom_bar(stat = 'identity') +
  labs(title = "Kobe's Average Points per Quarter 2008-09 Season",
       x = "Quarter",
       y = "Average Points")
