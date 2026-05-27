jamovi_boxplot <- function(data, var){
  data |> ggplot() +
  aes(y = {{ var }}) +
  geom_boxplot(
    fill = jamovi_qual_palette["blue"],
    color = "black"
  ) +
  scale_x_continuous(breaks = NULL) +
  labs(x = NULL)
}
