# ICCS 2022 — utdrag for bruk i boka
#
# Kilde: IEA ICCS 2022 International Database (R-distribusjon), ISG*C4-filer.
#
# Land (4): Norge, Spania, Polen, Brasil. Norge+Spania er beholdt fra
# forrige versjon; Polen legger til en øst-europeisk kontekst, Brasil en
# latinamerikansk. USA og Finland er ikke med i ICCS 2022.
#
# Variable:
#   Kontinuerlige
#     - Demokratikunnskap: gj.snitt av de fem plausible values (PV1CIV–PV5CIV).
#       Gj.snitt er valgt framfor én enkelt PV for å dempe tilfeldig variasjon.
#     - Likestilling (S_GENEQL): sterk positiv r mot Demokratikunnskap (pooled ~0.44).
#     - Sosioøkonomisk status (S_NISB): nasjonalt indeks.
#     - Åpen klasseromsdiskusjon (S_OPDISC): moderat positiv r (~0.24),
#       lærerrelevant.
#     - Tradisjonelt medborgerskap (S_CITCON): tilnærmet null r (~-0.06) —
#       illustrerer «ingen sammenheng» i sec-associations.
#     - Forventet politisk deltakelse (S_POLPART): tydelig negativ r (~-0.23),
#       didaktisk interessant kontraintuitiv sammenheng.
#   Kategoriske / ordinale
#     - Kjønn (IS4G02), Forventet utdanning (IS4G03): beholdt.
#     - Bøker hjemme (IS4G10): 5-nivå ordinal, klassisk SES-proxy.
#     - Innvandringsstatus (S_IMMIG): 3 nivåer.
#     - Elevinteresse (S_SINT): 4-nivå ordinal (Ikke–Svært interessert).
#
# Total N etter filtrering: ~16 500 (ca. 3 000–4 700 per land).
# Råfiler ligger som ICCS_ISG<ISO>C4.Rdata i data-raw/, hentet fra
# ICCS2022_IDB_R.zip.

library(dplyr)
library(haven)
library(forcats)
library(jmvReadWrite)

load("data-raw/ICCS_ISGNORC4.Rdata")
load("data-raw/ICCS_ISGESPC4.Rdata")
load("data-raw/ICCS_ISGPOLC4.Rdata")
load("data-raw/ICCS_ISGBRAC4.Rdata")

raw <- bind_rows(ISGNORC4, ISGESPC4, ISGPOLC4, ISGBRAC4)

ICCS <- raw |>
  mutate(
    `Elev-ID` = as.character(IDSTUD),
    `Skole-ID` = as.character(IDSCHOOL),
    Trinn = as.integer(IDGRADE),
    Land = as_factor(COUNTRY),
    `Kjønn` = as_factor(IS4G02),
    `Forventet utdanning` = as_factor(IS4G03),
    `Bøker hjemme` = as_factor(IS4G10),
    `Innvandringsstatus` = as_factor(S_IMMIG),
    `Elevinteresse` = as_factor(S_SINT),
    `Demokratikunnskap` = rowMeans(across(PV1CIV:PV5CIV), na.rm = FALSE),
    `Likestilling` = as.double(S_GENEQL),
    `Sosioøkonomisk status` = as.double(S_NISB),
    `Åpen klasseromsdiskusjon` = as.double(S_OPDISC),
    `Tradisjonelt medborgerskap` = as.double(S_CITCON),
    `Forventet politisk deltakelse` = as.double(S_POLPART),
    .keep = "none"
  ) |>
  mutate(
    Land = fct_recode(Land,
                      Norge = "NOR", Spania = "ESP",
                      Polen = "POL", Brasil = "BRA"),
    `Kjønn` = fct_recode(`Kjønn`, Gutt = "Boy", Jente = "Girl", Annet = "<Other>"),
    `Forventet utdanning` = fct_recode(`Forventet utdanning`,
                                       `Ungdomsskole` = "<ISCED level 2> or below",
                                       `VGS` = "<ISCED level 3>",
                                       `Kort utdanning` = "<ISCED level 4 or 5>",
                                       `Høyere utdanning` = "<ISCED level 6, 7 or 8>"
    ) |>
      factor(ordered = TRUE, levels = c("Ungdomsskole",
                                        "VGS",
                                        "Kort utdanning",
                                        "Høyere utdanning")),
    `Bøker hjemme` = fct_recode(`Bøker hjemme`,
                                `0–10` = "None or very few (0\u201310 books)",
                                `11–25` = "Enough to fill one shelf (11\u201325 books)",
                                `26–100` = "Enough to fill one bookcase (26\u2013100 books)",
                                `101–200` = "Enough to fill two bookcases (101\u2013200 books)",
                                `Over 200` = "Enough to fill three or more bookcases (more than 200 books)"
    ) |>
      factor(ordered = TRUE, levels = c("0–10", "11–25", "26–100",
                                        "101–200", "Over 200")),
    `Innvandringsstatus` = fct_recode(`Innvandringsstatus`,
                                      `Født i landet, minst én forelder født i landet` =
                                        "At least one parent born in country",
                                      `Født i landet, foreldre født utenlands` =
                                        "Students born in country but parent(s) born abroad",
                                      `Elev og foreldre født utenlands` =
                                        "Students and parent(s) born abroad"),
    `Elevinteresse` = fct_recode(`Elevinteresse`,
                                 `Ikke interessert i det hele tatt` = "Not interested at all",
                                 `Lite interessert` = "Not very interested",
                                 `Ganske interessert` = "Quite interested",
                                 `Svært interessert` = "Very interested"
    ) |>
      factor(ordered = TRUE, levels = c("Ikke interessert i det hele tatt",
                                        "Lite interessert",
                                        "Ganske interessert",
                                        "Svært interessert"))
  ) |>
  filter(
    !Trinn %in% c(98, 99),
    !`Kjønn` %in% c("Not administered", "Omitted"),
    !`Forventet utdanning` %in% c("Not administered", "Omitted"),
    !`Bøker hjemme` %in% c("Invalid", "Not administered", "Omitted"),
    !`Innvandringsstatus` %in% c("Invalid", "Not administered", "Omitted"),
    !is.na(`Elevinteresse`),
    !`Likestilling` %in% c(9997, 9998, 9999),
    !`Sosioøkonomisk status` %in% c(9997, 9998, 9999),
    !`Åpen klasseromsdiskusjon` %in% c(9997, 9998, 9999),
    !`Tradisjonelt medborgerskap` %in% c(9997, 9998, 9999),
    !`Forventet politisk deltakelse` %in% c(9997, 9998, 9999)
  ) |>
  mutate(across(where(is.factor), fct_drop)) |>
  relocate(Likestilling, .after = `Forventet utdanning`)

write.csv2(ICCS, "data_and_tables/ICCS.csv", row.names = FALSE)
saveRDS(ICCS, "data_and_tables/ICCS.RDS")
write_omv(ICCS, "data_and_tables/ICCS.omv")
