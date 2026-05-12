# Kvantitativ metode for lærere

Dette er en lærebok i kvantitativ metode for lærere. Den er laget for å

- være tilpasset skole og undervisning med eksempler fra utdanningsforskning
- være uten matematikk, fordi lærerstudenter flest mangler bakgrunnskunnskapen
- være kort, fordi den skal dekke kun 5 studiepoeng
- vise analyser med en enkel og åpent tilgjengelig statistikk-programvare, jamovi
- fremheve forskningsdesign og deskriptiv analyse, siden forutsetningene for inferensiell statistikk så sjeldent er oppfylt i lærerstudenters masteroppgaver og utdanningsforskning forøvrig

Boka har vært brukt ett semester, men nå har vi, (Roar Bakken Stovner, forfatter, og Anne Kristine Øgreid, redaktør) fått interne midler til å skrive den om slik at den blir enda bedre tilpasset lærerstudenter. Vi ønsker å fjerne alt om statistisk testing og bytte det ut med ulike forskningsdesign og studier som er spesielt relevante. Dette betyr at alt fra kapittel 6 skal skrives om nesten fullstendig.

- Opprinnelig versjon: Navarro DJ and Foxcroft DR (2022). learning statistics with jamovi: a tutorial for psychology students and other beginners. (Version 0.75). [Available from url: https://learnstatswithjamovi.com/]
- Nåværende versjon er en oversettelse til norsk der veldig mye er omskrevet til å gjelde skole og undervisning.
  - Forfatter: Roar Bakken Stovner
  - Redaktør: Anne Kristine Øgreid


# Struktur

Vi planlegger følgende kapittelstruktur:

1. Hvorfor bør lærere kunne kvantitativ metode?
-- Section: Design
2. Måling i utdanningsforskning
3. Forskningsdesign
-- Section: Deskriptiv statistikk
4. Deskriptiv statistikk
5. Visualisere data
-- Section: Inferensiell statistikk
6. Estimering av populasjonsparametre
-- Section: Noen viktige forskningsdesign for utdanningsforskning og norsk skole
7. ILSAs
8. Nasjonale prøver
9. Lærernes egne prøver
10. Eksamener
11. Muligens andre ting?

Forhåpentligvis klarer vi å bake inn den siste "Section" i de andre kapitlene. For eksempel kan "Lærernes egne prøver" komme etter kapittelet om "Måling i utdanningsforskning", siden de prøver å måle elevenes kompetanse, men ikke baserer seg på stoffet i resten av boka.

# Skriftlig fremstilling

- Uten sjargong annet enn de fagbegrepene som trengs.
- Kan ha muntlige fremstillingsformer for å lette inntrykket og ufarliggjøre stoffet.
- Svært sparsommelig bruk av em-dash. Bruk heller semikolon eller komma, der de er mulige, eller skriv om til å benytte parallell struktur eller liknende.

# Siteringer og referanser

- **Aldri** legg til referanser i refs.bib selv.
- Gi brukeren et BibTeX-utdrag som kan importeres fra utklippstavlen til Zotero-samlingen som genererer refs.bib. Ikke ha med Citation Key i denne, BetterBibtex lager den.
- Aldri legg til in-text referanser uten å bruke @authorYYYY fra refs.bib.

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

Defaults fra header.R: `fig.width = 6`, `fig.asp = 0.618`, `out.width = 80%` (HTML) / `100%` (LaTeX). Se https://arelbundock.com/posts/quarto_figures/index.html

Når en figur trenger annen bredde enn default, sett `out-width` til ønsket prosent og beregn `fig-width` med: `fig_width = 6 * (out_width / 0.7)`. F.eks. `out-width: 95%` gir `fig-width: 8.14`.


