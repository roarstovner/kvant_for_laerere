#library(tinytex)
library(dplyr)
library(tibble)
library(tinytable)
library(janitor)
library(magrittr)
library(tidyr)
library(ggplot2)
library(knitr)
library(showtext)
library(marquee)

set.seed(1963)
blueshade <- "#3d6da9" # match blue colour for plots to jamovi logo colour 

jamovi_qual_palette <- tibble(
  names = c("red", "blue", "green", "purple", "orange", "yellow", "brown", "pink", "grey"),
  pal = RColorBrewer::brewer.pal(9, "Pastel1")
)
jamovi_qual_palette <- deframe(jamovi_qual_palette)

marquee_style <- classic_style(body_font = "Palatino")

## ggplot options ------
theme_set(theme_classic(base_size=12, base_family="Palatino Linotype"))
update_geom_defaults(
  geom = "text",
  aes(family = "Palatino Linotype",
      fontface = "plain",
      size = 3)
)

font_add(family = "Palatino Linotype",   
         regular = "pala.ttf") # Name you want to use to call the font
showtext_auto()


#### knitr options -----------
knitr::opts_chunk$set(
  # see https://arelbundock.com/posts/quarto_figures/index.html
          fig.align = "center",
          fig.width = 6,
          fig.asp = 0.618,
          # 80 % av HTML-spalta, men full bredde i PDF (typst/LaTeX), der
          # tekstblokka er smalere. Gir samme fysiske figurbredde som før.
          out.width =  if (knitr::is_html_output()) "80%" else "100%"
          )

