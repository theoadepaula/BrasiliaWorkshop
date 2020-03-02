# Visualize using ggplot2

library(ggplot2)

intro_df <- readRDS("data/intro_df_cleaned.rds")

ggplot()

flow_plot <- ggplot(intro_df, aes(x = dateTime, y = Flow, 
                                  color = site_no)) +
  geom_point()
flow_plot

flow_plot + 
  scale_y_log10() + 
  ggtitle("All sites, logged flow")

flow_plot +
  ggtitle("All sites")

flow_plot + 
  facet_grid(site_no ~ ., scales = "free_y")

# Make a flow timeseries plot for just site "02336728"
df_site10 <- intro_df %>% filter(site_no == "02336728")
plot_site10 <- ggplot(df_site10, aes(x=dateTime, y=Flow)) +
  # colored by temp, points are triangles
  geom_point(aes(color = Wtemp), shape = 17) +
  scale_color_gradient(low="blue", high="red")

# blue to red color scale
?scale_color_gradient

plot_site10

# Themes in ggplot2
?theme

plot_site10 + theme(panel.background = element_blank(),
                    axis.line = element_line(color = "black"))
#axis.line.x.top = element_line(color = "black"))

plot_site10 + theme_bw() + theme(panel.grid.major = element_blank(),
                                 panel.grid.minor = element_blank())

plot_site10 + theme_dark()
plot_site10 + theme_minimal()

# Two saving options
ggsave("plots/site10_ts.png", plot_site10, height = 8.5, width = 11)

png("plots/site10_ts2.png", height = 850, width = 1100)
plot_site10
dev.off()