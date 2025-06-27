jamovi_histogram <- function(data, var, bins = 15){
  data |> ggplot() +
  aes(x = {{ var }}) +
  geom_histogram(
    bins = bins,
    fill = jamovi_qual_palette["blue"],
    color = "black"
  )
}
