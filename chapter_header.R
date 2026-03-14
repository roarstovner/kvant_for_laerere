
library(tinytex)
library(dplyr)
library(tibble)
library(tinytable)
library(janitor)
#library(rvest)
library(magrittr)
library(tidyr)
library(ggplot2)
library(knitr)
library(showtext)
library(marquee)
library(scales)

set.seed(1963)
blueshade <- "#3d6da9" # match blue colour for plots to jamovi logo colour 

jamovi_qual_palette <- tibble(
  names = c("red", "blue", "green", "purple", "orange", "yellow", "brown", "pink", "grey"),
  pal = RColorBrewer::brewer.pal(9, "Pastel1")
)
jamovi_qual_palette <- deframe(jamovi_qual_palette)

marquee_style <- classic_style()

## ggplot options ------
theme_set(theme_minimal(base_size = 14))
theme_update(
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank(),
  axis.line = element_line(),
  axis.ticks = element_line()
)

#### knitr options -----------
knitr::opts_chunk$set(
  # see https://arelbundock.com/posts/quarto_figures/index.html
          out.width =  if (knitr::is_latex_output()) "70%" else "70%",
          fig.width = 6,
          fig.asp = 0.618,
          fig.align = "center"
          )
