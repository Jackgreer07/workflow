total <- sum(1:10)
print(total)

library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.35, size = 1) +
  scale_color_viridis_d(option = "D", end = 0.9) +
  scale_y_continuous(labels = scales::label_dollar()) +
  labs(
    title = "A diamond's size and sparkle come at a price",
    subtitle = "Diamond prices rise with carat, with variation across cut grades",
    x = "Carat",
    y = "Price",
    color = "Cut",
    caption = "Data: ggplot2::diamonds"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold"),
    legend.position = "bottom"
  )

ggsave("diamonds-1.png", plot = diamonds_plot, width = 10, height = 6, dpi = 300)
