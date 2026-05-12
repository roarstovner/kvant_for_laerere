jamovi_bar <- function(data, var, dual_axis = FALSE) {
  d <- data |>
    dplyr::filter(!is.na({{ var }})) |>
    dplyr::count({{ var }})

  p <- ggplot(d) +
    aes(x = {{ var }}, y = n) +
    geom_col(fill = jamovi_qual_palette["blue"], color = "black") +
    labs(x = NULL)

  if (dual_axis) {
    total <- sum(d$n)
    p + scale_y_continuous(
      name = "Counts",
      sec.axis = sec_axis(~ . / total * 100, name = "Percentages")
    )
  } else {
    p + labs(y = "Counts")
  }
}
