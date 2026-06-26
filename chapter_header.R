
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
# knitr Suggests these; the tikz engine needs them for HTML output. Loaded
# explicitly so renv::snapshot() records them in the lockfile.
library(magick)
library(pdftools)
library(showtext)
library(marquee)
library(scales)
library(patchwork)

set.seed(1963)
blueshade <- "#3d6da9" # match blue colour for plots to jamovi logo colour
# Utvalgsfordelinger (fordelingen til en observator) tegnes i grønt, til forskjell
# fra rådata (populasjon/utvalg) i blueshade. Grønntonen velges etter outputformat:
#  - HTML/skjerm (farge): mettet grønn med omtrent samme lyshet som blå, så de to
#    skiller seg på kulør og danner et harmonisk par.
#  - typst (PDF/trykk): lys grønn, så de to skiller seg i *lyshet* og dermed også
#    fungerer i svart-hvitt. Lys nok til at en svart referanselinje (f.eks. en
#    normalfordeling) fortsatt synes godt oppå søylene.
# Standard er farge; typst slår automatisk om til den svart-hvitt-trygge paletten.
# Overstyr eksplisitt med options(kvant.blackwhite = TRUE) (eller FALSE).
blackwhite <- isTRUE(getOption("kvant.blackwhite", isTRUE(knitr::pandoc_to("typst"))))
if (blackwhite) {
  samplingfarge <- "#a1d99b" # lys grønn -> lys grå i gråtone (skiller seg fra blå)
  samplingtekst <- "#238b45" # mørk grønn til etiketter, lesbar på hvitt
} else {
  samplingfarge <- "#2e8b57" # mettet grønn, ~samme lyshet som blå (skjerm)
  samplingtekst <- "#1d6f44" # mørkere grønn til etiketter
}

options(OutDec = ",")

# tinytable's typst writer builds stroke widths and font sizes with
# `sprintf("%sem", x)`, which goes through `as.character()` and therefore picks
# up `OutDec`. With OutDec="," that emits e.g. `0,05em`, which typst parses as
# the integer 0 followed by `05em` and refuses to compile. Wrap the affected
# tinytable internals so they always emit a period for typst length literals,
# while leaving cell content untouched (cells are already strings by then).
local({
  if (!requireNamespace("tinytable", quietly = TRUE)) return()
  patch <- function(fname) {
    orig <- getFromNamespace(fname, "tinytable")
    wrapped <- function() {}
    formals(wrapped) <- formals(orig)
    body(wrapped) <- bquote({
      .op <- options(OutDec = ".")
      on.exit(options(.op), add = TRUE)
      .(body(orig))
    })
    environment(wrapped) <- environment(orig)
    assignInNamespace(fname, wrapped, ns = "tinytable")
  }
  for (fn in c("typst_hlines", "typst_vlines", "style_string_typst")) {
    if (exists(fn, envir = asNamespace("tinytable"), inherits = FALSE)) patch(fn)
  }
})

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
