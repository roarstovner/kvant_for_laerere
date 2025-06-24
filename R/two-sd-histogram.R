two_sd_histogram <- function(data, x_min = NA, x_max = NA, x_label = "", n_bins = 30, palette = jamovi_qual_palette){
  mean_val <- mean(data)
  sd_val <- sd(data)
  
  breaks <- c(-Inf, seq(mean_val - 2*sd_val, mean_val + 2*sd_val, sd_val),Inf)
  df <- tibble(
    data = data,
    category = cut(data, breaks),
  )
  sd_levels <- c("Innenfor 1 std.av.", "Innenfor 2 std.av.", "Utenfor 2 std.av.")
  levels(df$category) <- c(sd_levels[3:1], sd_levels[1:3])
  
  sd_palette <- jamovi_qual_palette[1:3] # Custom palette
  names(sd_palette) <- sd_levels
  
  
  # Create the plot
  p <- ggplot(df) +
    aes(x = data, fill = category) +
    geom_histogram(
      colour = "black",
      binwidth = sd_val/5,
      bins = n_bins
    ) +
    scale_fill_manual(
      values = sd_palette,
      drop = FALSE,
      name = "Avstand fra\ngjennomsnittet",
      labels = label_wrap(10)
    ) +
    scale_x_continuous(
      limits = c(x_min, x_max), 
      sec.axis = sec_axis(
        ~ (. - mean_val)/sd_val,
        breaks= -2:2,
        labels = c("-2 std.av.", "-1 std.av.", "Gj.snitt", "+1 std.av.", "+2 std.av.")
      ),
    ) +
    theme(
      axis.text.y = element_blank(),
      axis.ticks.y = element_blank(),
      axis.title.y = element_blank(),
      axis.line.y = element_blank(),
    ) +
    guides(
      fill = guide_legend(position = "bottom")
    ) +
    labs(
      x = "Likestilling"
    )
  p
}

# 
# # This superimposes a normal curve
# count_max <- max(ggplot_build(p)$data[[2]]$ymax)
# 
# p +
#   stat_function(
#     fun = \(x, mean, sd)(dnorm(x, mean, sd)*count_max/dnorm(mean_val, mean_val, sd_val)), # theoretical normal curve
#     args = list(mean = mean_val, sd = sd_val),
#     color = "red", 
#     size = 1.0,
#     alpha = 0.6
#   ) +
#   annotate(
#     "text",
#     x = mean_val * 1.25,
#     y = 730,
#     #angle = 90,
#     label = "<- Gjennomsnitt",
#     size = 4
#   ) +
#   labs(
#     x = "Likestilling",
#     y = ""
#   )
# 
# 

