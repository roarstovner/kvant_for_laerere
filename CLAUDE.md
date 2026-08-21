# Kvantitativ metode for lærere

Dette er en lærebok i kvantitativ metode for lærere. Den er laget for å

- være tilpasset skole og undervisning med eksempler fra utdanningsforskning
- være uten matematikk, fordi lærerstudenter flest mangler bakgrunnskunnskapen
- være kort, fordi den skal dekke kun 5 studiepoeng
- vise analyser med en enkel og åpent tilgjengelig statistikk-programvare, jamovi
- fremheve forskningsdesign og deskriptiv analyse, siden forutsetningene for inferensiell statistikk så sjeldent er oppfylt i lærerstudenters masteroppgaver og utdanningsforskning forøvrig

Boka ble brukt ett semester i 2025-utgaven. Med interne midler har vi (Roar Bakken Stovner, forfatter, og Anne Kristine Øgreid, redaktør) skrevet den om for 2026 slik at den blir bedre tilpasset lærerstudenter. Alt om statistisk hypotesetesting er tatt ut og erstattet med måling, forskningsdesign og en inferensiell del som holder seg til konfidensintervall. 2026-utgaven ble utgitt 19. august 2026; se [release.md](release.md) for utgivelsesrutinen. Arbeidet foregår på `openbook`.

- Opprinnelig versjon: Navarro DJ and Foxcroft DR (2022). learning statistics with jamovi: a tutorial for psychology students and other beginners. (Version 0.75). [Available from url: https://learnstatswithjamovi.com/]
- Nåværende versjon er en oversettelse til norsk der veldig mye er omskrevet til å gjelde skole og undervisning.
  - Forfatter: Roar Bakken Stovner
  - Redaktør: Anne Kristine Øgreid


# Struktur

Kapittelrekkefølgen er definert i `_quarto-all_chapters.yml`, ikke i `_quarto.yml` (boka bruker Quarto-profiler; se også `_quarto-chapter.yml` og `_quarto-print.yml`).

Den planlagte fjerde delen om måleinstrumenter som er særlig relevante for norsk
skole (ILSA-er, nasjonale prøver, kartleggingsprøver, summative vurderinger) er
**ikke skrevet ennå**, og er utsatt til en senere utgave. Det står som et
uttrykt ønske sist i `sec-epilogue.qmd`. Instrumentene nevnes underveis i
kapitlene om måling og forskningsdesign, men har ingen egne kapitler.

# Skriftlig fremstilling

- Uten sjargong annet enn de fagbegrepene som trengs.
- Kan ha muntlige fremstillingsformer for å lette inntrykket og ufarliggjøre stoffet.
- Svært sparsommelig bruk av em-dash. Bruk heller semikolon eller komma, der de er mulige, eller skriv om til å benytte parallell struktur eller liknende.

# Siteringer og referanser

- **Aldri** legg til referanser i refs.bib selv.
- Gi brukeren et BibTeX-utdrag som kan importeres fra utklippstavlen til Zotero-samlingen som genererer refs.bib. Ikke ha med Citation Key i denne, BetterBibtex lager den.
- Aldri legg til in-text referanser uten å bruke @authorYYYY fra refs.bib.
- Bruk klammeform `[@authorYYYY]` når referansen står som en parentetisk kildeangivelse på slutten av en setning eller et ledd. Bar `@authorYYYY` gir narrativ form ("Koretz (2017)") og skal bare brukes når forfatternavnet er en del av setningen. Det er lett å skrive `... flervalgsprøver @koretz2017` og få "flervalgsprøver Koretz (2017)" i brødteksten.

# Jamovi-instruksjoner

Hovedteksten skal være konseptuell og forklare hva og hvorfor, ikke hvor man klikker. Klikkinstruksjoner legges i sammenklappede callouts:

```
::: {.callout-tip collapse="true" title="I jamovi: <kort beskrivelse>"}
Analyses → Exploration → Descriptives. ...
:::
```

- Bruk konsekvent tittelformatet `I jamovi: <kort beskrivelse>` (f.eks. "I jamovi: lage et histogram").
- `collapse="true"` gjør at de er sammenklappet i HTML.
- Ikke krysshenvis til figurer eller andre seksjoner inni callouten -- den skal være selvstendig.
- Grunnleggende jamovi-navigasjon (Analyses-knappen, Variables-boksen, layout) forutsettes kjent fra et eget jamovi-grunnlagskapittel før deskriptiv statistikk. Senere callouts trenger derfor ikke forklare grunnleggende UI-mønstre.

# Figurer

Defaults fra header.R: `fig.width = 6`, `fig.asp = 0.618`, `out.width = 80%` (HTML/EPUB) / `100%` (PDF).

Når en figur trenger annen bredde enn default, sett `out-width` til ønsket prosent og beregn `fig-width` med: `fig_width = 6 * (out_width / 0.7)`. F.eks. `out-width: 95%` gir `fig-width: 8.14`. Se https://arelbundock.com/posts/quarto_figures/index.html

Merk at tekstblokka i PDF-en er 12 cm bred (ikke 15 cm som før), så figurer med
eksplisitt `out-width` blir ca. 20 % smalere enn de var. Skal en slik figur ha
samme skriftstørrelse på siden som før, må `fig-width` ned med samme faktor.

# Tall og desimaler

Boka bruker norsk desimalkomma via `options(OutDec = ",")` (satt i `chapter_header.R`).

- Tall som skal vises for leseren (i brødtekst eller figurtekst) må formateres slik at de respekterer `OutDec`. Bruk numeriske verdier eller `format(round(x, 1), nsmall = 1)`; da blir desimaltegnet komma automatisk.
- **Ikke bruk `sprintf()`** for tall som skal vises. `sprintf()` ignorerer `OutDec` og gir alltid punktum.
- Unntak: eksempler som etterligner engelske forskningsartikler (f.eks. "M = 3.4 (SD = 1.2)") skal ha punktum, som er engelsk konvensjon. Der er `sprintf("%.1f", x)` riktig.

# Output-format: typst og HTML

Byggets ikke-opplagte tilpasninger (tinytable under typst, sidesats, slutten på
siste del, tikz under HTML) er kommentert der de står: `chapter_header.R`,
`typst-show.typ` og sist i `sec-inferential.qmd`. Ikke fjern dem uten å teste
både PDF- og HTML-bygget.

# Innspill fra redaktør (kommentarer og sporendringer)

Anne Kristine leser kapitler som .docx og leverer dem tilbake med kommentarer og
sporendringer. Arbeidsflyten for å hente disse innspillene inn i .qmd er
dokumentert i [review-docx-comments.md](review-docx-comments.md): filene ligger i
`tmp/`, vi trekker ut (ikke sammenlikner) innspillene, og filtrerer på Annes
forfatternavn.

# Don't run full build after completion

The user has a `quarto preview` running.
