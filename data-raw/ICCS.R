library(dplyr)
library(haven)
library(forcats)
library(ggplot2)

load("data-raw/ICCS_ISGNORC4.Rdata")
load("data-raw/ICCS_ISGESPC4.Rdata")

ICCS <- bind_rows(ISGESPC4, ISGNORC4) |>
  select(IDSTUD, IDGRADE, COUNTRY, IDSCHOOL, S_GENEQL, IS4G02, IS4G03) |> 
  mutate(
    `Land` = as_factor(COUNTRY),
    `Elev-ID` = as.character(IDSTUD),
    `Skole-ID` = as.character(IDSCHOOL),
    Trinn = as.integer(IDGRADE),
    `Kjønn` = as_factor(IS4G02),
    `Forventet utdanning` = as_factor(IS4G03),
    `Likestilling` = as.double(S_GENEQL),
    .keep = "none"
  ) |> 
  mutate(
    Kjønn = fct_recode(Kjønn, Gutt = "Boy", Jente = "Girl", Annet = "<Other>"),
    Land = fct_recode(Land, Spania = "ESP", Norge = "NOR"),
    `Forventet utdanning` = fct_recode(`Forventet utdanning`,
                                       `Høyere utdanning` = "<ISCED level 6, 7 or 8>",
                                       `VGS` = "<ISCED level 4 or 5>",
                                       `Delvis VGS` = "<ISCED level 3>",
                                       `Ungdomsskole` = "<ISCED level 2> or below"
                                       )
  ) |> 
  filter(
    !`Trinn` %in% c(98, 99),
    !`Kjønn` %in% c("Not administered", "Omitted"),
    !`Forventet utdanning` %in% c("Not administered", "Omitted"),
    !`Likestilling` %in% c(9998, 9999)
    )

write.csv2(ICCS, "data_and_tables/ICCS.csv")
saveRDS(ICCS, "data_and_tables/ICCS.RDS")

