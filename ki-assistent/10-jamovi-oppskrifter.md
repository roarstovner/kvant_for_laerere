# Alle jamovi-oppskriftene i boka

Fra læreboka *Kvantitativ metode for lærere* av Roar Bakken Stovner (2026-utgaven). Hele boka: https://kvant.roarstovner.no/

Dette er alle «I jamovi»-boksene i boka, samlet på ett sted. Hver oppskrift er skrevet slik at den kan leses for seg selv. Bruk dem ordrett når en student spør hvordan en analyse gjøres. Menynavnene er engelske, slik de står i programmet.


## Fra Kapittel 4. Komme i gang med jamovi

*Kapittelet på nett: https://kvant.roarstovner.no/sec-jamovi.html*


### I jamovi: åpne en datafil

Last først ned filen til maskinen din, for eksempel til Nedlastinger-mappen. Høyreklikk gjerne på lenken og velg "Lagre lenke som", så er du sikker på at filen havner et sted du finner igjen.

Klikk deretter på de tre strekene (☰) øverst til venstre i jamovi og velg **Open**. Velg **Browse** under "This Device" (bruker du Cloud-versjonen, heter valget "Upload" eller liknende), finn filen du lastet ned, og åpne den.

Dataene dukker nå opp i Data-fanen, med én rad per elev og én kolonne per variabel. Gå til Variables-fanen for å se hvilket målenivå hver variabel har. Åpnet du en .csv-fil, bør du sjekke målenivåene ekstra nøye, siden .csv-formatet ikke lagrer dem.


## Fra Kapittel 5. Å beskrive én variabel

*Kapittelet på nett: https://kvant.roarstovner.no/sec-descriptive.html*


### I jamovi: lage en frekvenstabell

Analyses → Exploration → Descriptives. Legg _Forventet utdanning_ i "Variables" og kryss av for "Frequency tables".


### I jamovi: lage et stolpediagram

Analyses → Exploration → Descriptives. Legg variabelen i "Variables", åpne "Plots" og kryss av for "Bar plot".


### I jamovi: stolpediagram med y-aksen i prosent

Descriptives gir kun y-aksen i antall. For prosent-aksen: Analyses → Frequencies → N Outcomes -- $\chi^2$ goodness of fit. Legg variabelen i "Variable", åpne "Plots", kryss av for "Bar plot" og velg "Y-axis: Percentages". Jamovi viser én akse av gangen, ikke begge samtidig.


### I jamovi: lage et histogram

Analyses → Exploration → Descriptives. Legg variabelen i "Variables", åpne "Plots" og kryss av for "Histogram".


### I jamovi: regne ut gjennomsnitt og annen deskriptiv statistikk

Analyses → Exploration → Descriptives. Legg _Likestilling_ i "Variables". En tabell med standard deskriptiv statistikk dukker opp på høyre side av skjermen.


### I jamovi: regne ut spredningsmål

Analyses → Exploration → Descriptives. Under "Statistics" finner du seksjonen "Dispersion" med avkryssingsbokser for "Std. deviation", "Variance", "Range", "Minimum" og "Maximum". Variasjonsbredde heter "Range" på engelsk, så kryss av for den.


### I jamovi: regne ut persentiler

Analyses → Exploration → Descriptives → "Percentile Values" og kryss av for "Percentiles".


### I jamovi: lage et boksplott

Analyses → Exploration → Descriptives. Legg variabelen i "Variables", åpne "Plots" og kryss av for "Box plot".


## Fra Kapittel 6. Å beskrive sammenhenger mellom variabler

*Kapittelet på nett: https://kvant.roarstovner.no/sec-associations.html*


### I jamovi: lage en krysstabell

Frequencies → Contingency Tables → Independent Samples. Legg _Forventet utdanning_ i "Rows" og _Land_ i "Columns". Under "Cells" kryss av for "Counts" og "Percentages: Columns".


### I jamovi: stolpediagram for undergrupper

Analyses → Exploration → Descriptives. Legg variabelen i "Variables", åpne "Plots" og kryss av for "Bar plot". Legg gruppevariabelen i "Split by".


### I jamovi: lage et stablet stolpediagram

Frequencies → Independent samples ($\chi^2$ test of association). Legg _Forventet utdanning_ på "Rows" og _Land_ på "Columns". Under "Plots" kryss av for "Bar plot" og velg:

- Bar Type: "Stacked"
- Y-axis: "Percentages"
- "Percentages within column" (regner prosenter innenfor hvert land)


### I jamovi: stablet stolpediagram med tre variabler

Behold oppsettet for stablet stolpediagram, men legg den tredje variabelen i "Layers".


### I jamovi: deskriptiv statistikk per undergruppe

Analyses → Exploration → Descriptives. Legg variabelen i "Variables" og gruppevariabelen i "Split by".


### I jamovi: boksplott eller histogram per undergruppe

Analyses → Exploration → Descriptives. Legg variabelen i "Variables", åpne "Plots" og kryss av for "Box plot" eller "Histogram". Legg gruppevariabelen i "Split by".


### I jamovi: lage et spredningsplott

Analyses → Exploration → Scatterplot. Legg én variabel i "X-Axis" og én i "Y-Axis".


### I jamovi: lage en korrelasjonsmatrise

Regression → Correlation Matrix. Legg de kontinuerlige variablene du vil korrelere i variabelboksen. Pearsons $r$ er valgt som standard.


## Fra Kapittel 7. Usikkerhet og konfidensintervall

*Kapittelet på nett: https://kvant.roarstovner.no/sec-inferential.html*


### I jamovi: konfidensintervall for et gjennomsnitt

Analyses → Exploration → Descriptives. Legg variabelen du vil undersøke i Variables-boksen. Åpne så seksjonen Statistics og kryss av for "Confidence interval for the mean" (du finner den i bolken om gjennomsnitt). Standardinnstillingen er 95 %, men du kan endre prosenten i feltet ved siden av. Samme sted kan du krysse av for "Std. error of Mean" hvis du vil se standardfeilen direkte.
