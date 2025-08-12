
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
theme_set(theme_minimal(base_size = 13))
theme_update(
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank(),
  axis.line = element_line(),
  axis.ticks = element_line()
)
# theme_set(theme_classic(base_size=30, base_family="Palatino Linotype"))
# update_geom_defaults(
#    geom = "text",
#    aes(family = "Palatino Linotype",
#        fontface = "plain",
#        size = 3)
# )
# 
# font_add(family = "Palatino Linotype",   
#           regular = "pala.ttf") # Name you want to use to call the font
# showtext_auto()

#### knitr options -----------
knitr::opts_chunk$set(
  # see https://arelbundock.com/posts/quarto_figures/index.html
          out.width =  if (knitr::is_latex_output()) "70%" else "70%",
          fig.width = 6,
          fig.asp = 0.618,
          fig.align = "center"
          )
# if (knitr::is_html_output()) options(huxtable.knitr_output_format = 'html')
# options(knitr.table.format = function() {
#   if (knitr::is_latex_output()) 'latex'
#   if (knitr::is_html_output()) 'html' else pandoc
# })

# huxtabs <- readRDS("data_and_tables/lsj_chapter_huxtabs.rds")

