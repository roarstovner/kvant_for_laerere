# Kapittel 5. Å beskrive én variabel

Fra læreboka *Kvantitativ metode for lærere* av Roar Bakken Stovner (2026-utgaven).
Nettversjon av dette kapittelet: https://kvant.roarstovner.no/sec-descriptive.html
Hele boka: https://kvant.roarstovner.no/

---

Når du skal analysere et nytt datasett, må du finne måter å beskrive dataene på som er både konsise og lett forståelige. Dette kalles **deskriptiv statistikk**, eller beskrivende statistikk. I denne boka er det to kapitler om deskriptiv statistikk, dette kapittelet og det neste. I dette kapittelet beskriver vi én variabel, og i neste kapittel beskriver vi sammenhengen mellom flere variabler.

Man kan dele deskriptiv statistikk inn i to hovedformer:

- Man kan bruke tall for å beskrive dataene, for eksempel utregning av gjennomsnittet av en variabel.
- Man kan lage et diagram som viser dataene, for eksempel et søylediagram. Diagrammer kalles også figurer og plott.

I de neste to kapitlene lærer du om vanlige tall og diagrammer som man bruker for å beskrive data.

**Advarsel — Ikke tenk at du beskriver populasjonen**

Merk deg at deskriptiv statistikk kun beskriver de dataene som er samlet inn, altså utvalget. Ofte ønsker man å generalisere til en populasjon, men da må man bruke inferensiell statistikk, noe du lærer i [Kapittel 7](https://kvant.roarstovner.no/sec-inferential.html).

Rå data er sjelden informative i seg selv. Jeg har forberedt et lite datasett fra den store internasjonale undersøkelsen ICCS, International Civic and Citizenship Education Study ([Fraillon et al., 2024](https://kvant.roarstovner.no/sec-references.html#ref-fraillon2024)). Dette datasettet inneholder variabler for kjønn, skole, land, forventet høyeste fullførte utdanning og en samlevariabel for hvor enig man er i at kjønnene bør ha like rettigheter. Datasettet har 16473 rader, én rad for hver elev, men vi viser bare 50 rader. Se i [Tabell 5.1](https://kvant.roarstovner.no/sec-descriptive.html#tbl-ICCS-data) for å vurdere hvor informative disse dataene er.

| Skole-ID | Land | Kjønn | Forventet utdanning | Likestilling |
|----------|--------|-------|---------------------|--------------|
| 5150 | Spania | Gutt | VGS | 46,8 |
| 5016 | Polen | Jente | Ungdomsskole | 40,9 |
| 5134 | Spania | Gutt | Høyere utdanning | 65,7 |
| 5018 | Polen | Jente | Høyere utdanning | 65,7 |
| 5062 | Polen | Jente | Høyere utdanning | 65,7 |
| 5025 | Norge | Gutt | VGS | 65,7 |
| 5173 | Brasil | Jente | Høyere utdanning | 52,7 |
| 5126 | Polen | Gutt | Høyere utdanning | 42,6 |
| 5037 | Norge | Jente | Kort utdanning | 65,7 |
| 5041 | Brasil | Gutt | VGS | 37,6 |
| 5123 | Norge | Jente | Høyere utdanning | 65,7 |
| 5019 | Brasil | Gutt | Høyere utdanning | 52,7 |
| 5169 | Brasil | Gutt | Høyere utdanning | 65,7 |
| 5106 | Polen | Jente | Høyere utdanning | 57,1 |
| 5107 | Norge | Gutt | Ungdomsskole | 39,2 |
| 5120 | Brasil | Gutt | Kort utdanning | 52,7 |
| 5071 | Norge | Jente | VGS | 37,6 |
| 5126 | Norge | Jente | Ungdomsskole | 57,1 |
| 5020 | Norge | Gutt | VGS | 57,1 |
| 5170 | Polen | Jente | Kort utdanning | 52,7 |
| 5064 | Brasil | Jente | Høyere utdanning | 52,7 |
| 5149 | Norge | Jente | Høyere utdanning | 49,4 |
| 5076 | Polen | Gutt | VGS | 39,2 |
| 5013 | Polen | Jente | Høyere utdanning | 49,4 |
| 5006 | Norge | Jente | VGS | 65,7 |
| 5158 | Polen | Gutt | Kort utdanning | 65,7 |
| 5201 | Brasil | Jente | Høyere utdanning | 49,4 |
| 5010 | Spania | Gutt | Kort utdanning | 40,9 |
| 5114 | Brasil | Gutt | Kort utdanning | 49,4 |
| 5013 | Norge | Gutt | Høyere utdanning | 46,8 |
| 5092 | Polen | Jente | Høyere utdanning | 57,1 |
| 5012 | Norge | Gutt | Høyere utdanning | 65,7 |
| 5151 | Polen | Jente | Høyere utdanning | 46,8 |
| 5112 | Norge | Jente | Høyere utdanning | 65,7 |
| 5036 | Norge | Gutt | Høyere utdanning | 65,7 |
| 5187 | Brasil | Gutt | Høyere utdanning | 37,6 |
| 5081 | Brasil | Jente | Høyere utdanning | 42,6 |
| 5024 | Norge | Gutt | Kort utdanning | 40,9 |
| 5143 | Norge | Jente | Ungdomsskole | 65,7 |
| 5185 | Norge | Gutt | Kort utdanning | 46,8 |
| 5012 | Polen | Jente | Høyere utdanning | 65,7 |
| 5037 | Norge | Gutt | Høyere utdanning | 65,7 |
| 5067 | Spania | Jente | VGS | 65,7 |
| 5048 | Norge | Gutt | Høyere utdanning | 40,9 |
| 5195 | Norge | Jente | Ungdomsskole | 52,7 |
| 5134 | Polen | Jente | VGS | 65,7 |
| 5067 | Polen | Jente | Høyere utdanning | 65,7 |
| 5120 | Norge | Gutt | Kort utdanning | 37,6 |
| 5051 | Brasil | Jente | Høyere utdanning | 65,7 |
| 5107 | Polen | Jente | VGS | 39,2 |

Tabell 5.1. Utvalgte variabler fra ICCS-studien.

Gir denne tabellen deg egentlig noen klar forståelse av mønstre i dataene, for eksempel forskjeller mellom grupper, typiske verdier eller sammenhenger mellom variabler? Sannsynligvis ikke. De fleste vil oppleve at det er vanskelig å få øye på slike trekk direkte i rådataene, og at man trenger at dataene blir oppsummert og fremstilt på en mer oversiktlig måte.

Det er dette som er deskriptiv statistikk, å gjøre rå data om til tall og figurer som gir innsikt.

I dag gjør man all statistikk på en datamaskin, så la oss vise dataene i statistikkprogrammet, jamovi. Etter å ha åpnet filen *[ICCS.omv](https://kvant.roarstovner.no/data_and_tables/ICCS.omv)* ser det ut som i [Figur 5.1](https://kvant.roarstovner.no/sec-descriptive.html#fig-descriptive-ICCS-data). Trenger du hjelp til å få filen inn i jamovi, står det forklart i [Seksjon 4.2](https://kvant.roarstovner.no/sec-jamovi.html#sec-jamovi-datafiler).

Bildebeskrivelse: Et jamovi-skjermbilde viser et dataanalysegrensesnitt med 7 kolonner. Én kolonne med numeriske data er merket "likestilling".

Figur 5.1. Et skjermbilde av jamovi som viser variablene lagret i filen *ICCS.omv*

For å få en nærmere forståelse av dataene må vi beskrive dem med tall og figurer. Vi organiserer framstillingen etter typen variabel vi analyserer. Først presenteres kategoriske variabler (nominelle og ordinale), og deretter kontinuerlige variabler (intervall- og forholdstallsnivå). De kategoriske variablene er markert med et symbol med tre fargede sirkler i jamovi, og er altså *Land*, *Trinn*, *Kjønn* og *Forventet utdanning*.

## 5.1 Kategoriske variabler

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#kategoriske-variabler*

Hvis du ser på variabelen *Forventet utdanning* i [Figur 5.1](https://kvant.roarstovner.no/sec-descriptive.html#fig-descriptive-ICCS-data), vil du se at den har verdiene «Høyere utdanning», «Kort utdanning», «VGS» og «Ungdomsskole». Denne variabelen viser hva elevene ser for seg at de har som høyeste utdanning når de er ferdige med studiene. Hvordan ville du analysert denne variabelen? Sannsynligvis på de to måtene du skal lære nå.

### 5.1.1 Frekvenstabeller

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#frekvenstabeller*

En av de mest grunnleggende oppgavene innen dataanalyse er å telle antall observasjoner for de ulike verdiene til nominelle og ordinale variabler. For variabelen *Forventet utdanning* vil det si å telle hvor mange som ser for seg å ta høyere utdanning, en kort utdanning, kun VGS eller kanskje stoppe etter ungdomsskolen. Siden et slikt antall kalles en *frekvens*, kalles tabellen der man viser opptellingen for en **frekvenstabell**.

Frekvenstabellen vises i [Tabell 5.2](https://kvant.roarstovner.no/sec-descriptive.html#tbl-descriptive-frequency).

**Tips — I jamovi: lage en frekvenstabell**

Analyses → Exploration → Descriptives. Legg *Forventet utdanning* i «Variables» og kryss av for «Frequency tables».

| Forventet utdanning | Antall | Prosent |
|---------------------|--------|---------|
| Ungdomsskole | 923 | 5,6 |
| VGS | 3786 | 23,1 |
| Kort utdanning | 2362 | 14,4 |
| Høyere utdanning | 9342 | 56,9 |

Tabell 5.2. Frekvenstabell for *Forventet utdanning*

Tabellen viser en opptelling av *Forventet utdanning*. Radene svarer til de ulike verdiene, og i *Antall*-kolonnen finner du hvor mange det var av hver verdi, altså frekvensen. I tillegg viser kolonnen *Prosent* hvor stor andel av totalen hvert antall utgjør. Legger vi sammen prosentene for de to laveste verdiene, ser vi at 28,7 % av elevene ser for seg «Ungdomsskole» eller «VGS» som høyeste fullførte utdanning.

Stort mer er det ikke å si om frekvenstabeller, annet enn hvordan man lager et diagram for å vise det samme.

### 5.1.2 Stolpediagram

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#sec-diagram-bar*

Frekvenstabeller er enkle å lage og lese, men ofte er en visualisering enda mer slående. For nominelle og ordinale data er **stolpediagrammet** den vanligste visualiseringen. Et stolpediagram for *Forventet utdanning* vises i [Figur 5.2](https://kvant.roarstovner.no/sec-descriptive.html#fig-diagram-jamovi-bar). Siden *Forventet utdanning* er en ordinal variabel, er stolpene sortert i riktig rekkefølge.

**Tips — I jamovi: lage et stolpediagram**

Analyses → Exploration → Descriptives. Legg variabelen i «Variables», åpne «Plots» og kryss av for «Bar plot».

Bildebeskrivelse: Et stolpediagram med fire blå stolper for hver verdi av Forventet utdanning. Venstre y-akse er merket Antall og viser antall elever; høyre y-akse er merket Prosent og viser samme informasjon som andel i prosent.

Figur 5.2. Et stolpediagram over *Forventet utdanning*. Venstre y-akse viser antall elever, høyre y-akse viser samme stolper avlest som andel i prosent.

Man kan velge om stolpediagrammet skal vise antall eller prosent. I [Figur 5.2](https://kvant.roarstovner.no/sec-descriptive.html#fig-diagram-jamovi-bar) har jeg laget to y-akser for å vise begge. Venstre viser antall elever, altså frekvensen fra *Antall*-kolonnen i frekvenstabellen. Høyre akse viser nøyaktig de samme stolpene, men avlest som andel i prosent, de samme tallene som står i *Prosent*-kolonnen i [Tabell 5.2](https://kvant.roarstovner.no/sec-descriptive.html#tbl-descriptive-frequency).

Hvorfor vise begge? For én variabel er det egentlig samme bilde, bare lest på to måter. Disse to lesemåtene blir imidlertid viktige når vi senere skal sammenligne grupper av ulik størrelse. Antallet kan da være misvisende: Gruppen med flest elever vil få høyest stolpe nesten uansett hva andelene er. Andelene gjør stolpene sammenliknbare på tvers av grupper og datasett av ulik størrelse, og det er som regel det vi er ute etter. Vi viser slike analyser i neste kapittel, i [Seksjon 6.1.3](https://kvant.roarstovner.no/sec-associations.html#sec-associations-stacked-bar).

**Tips — I jamovi: stolpediagram med y-aksen i prosent**

Descriptives gir kun y-aksen i antall. For prosent-aksen: Analyses → Frequencies → N Outcomes – χ² goodness of fit. Legg variabelen i «Variable», åpne «Plots», kryss av for «Bar plot» og velg «Y-axis: Percentages». Jamovi viser én akse av gangen, ikke begge samtidig.

### 5.1.3 Typetallet

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#sec-mode*

Typetallet til en variabel er den verdien som forekommer hyppigst. Typetallet er det eneste sentraltendensmålet som fungerer for nominelle variabler; hverken median eller gjennomsnitt gir mening når verdiene ikke har noen naturlig rekkefølge eller tallverdi. En nominell variabel i ICCS-dataene er *Kjønn*, som har de tre mulige verdiene «Jente», «Gutt» og «Annet». Typetallet til *Kjønn* vil si oss hvilket kjønn det er flest av i dataene. De syv første elevene i datasettet er:

> Gutt, Jente, Gutt, Jente, Jente, Gutt, Jente.

Typetallet til *Kjønn* for disse syv elevene er «Jente» fordi det var flest av den verdien.

For å finne typetallet i hele datasettet lager vi en **frekvenstabell** for *Kjønn* på samme måte som vi gjorde for *Forventet utdanning* tidligere i kapittelet. Frekvenstabellen, [Tabell 5.3](https://kvant.roarstovner.no/sec-descriptive.html#tbl-descriptive-frequency-kjonn), viser at «Jente» er den hyppigste verdien, dog med knapp margin, så typetallet til *Kjønn* er «Jente».

| Kjønn | Antall | Prosent |
|-------|--------|---------|
| Jente | 8317 | 50,5 |
| Gutt | 7992 | 48,5 |
| Annet | 164 | 1 |

Tabell 5.3. Frekvenstabell for *Kjønn*

Selv om typetallet er det eneste sentraltendensmålet som fungerer for nominelle variabler, kan det også være nyttig å vite typetallet til en ordinal-, intervall- eller forholdstallsvariabel. Hvis vi ser tilbake på frekvenstabellen for *Forventet utdanning* i [Tabell 5.2](https://kvant.roarstovner.no/sec-descriptive.html#tbl-descriptive-frequency), så var «Høyere utdanning» den hyppigste verdien. Typetallet til *Forventet utdanning* er altså «Høyere utdanning».

### 5.1.4 Medianen for ordinale data

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-median-ordinal*

For ordinale data kan vi i tillegg bruke **medianen** som mål på sentraltendens. Medianen er den midterste verdien når observasjonene er sortert i rekkefølge. Den fungerer når verdiene har en naturlig rekkefølge, selv uten tallverdier.

La oss se på *Forventet utdanning* for de 7 første elevene i utvalget:

> VGS, Ungdomsskole, Høyere utdanning, Høyere utdanning, Høyere utdanning, VGS, Høyere utdanning.

Sorterer vi dem i rekkefølge får vi:

> Ungdomsskole, VGS, VGS, Høyere utdanning, Høyere utdanning, Høyere utdanning, Høyere utdanning.

Middelverdien er «Høyere utdanning», og det er altså medianen til *Forventet utdanning* for disse 7 elevene.

For tallvariabler regner vi medianen på akkurat samme måte: Sorter, og finn middelverdien. Av og til er det ingen verdier helt i midten, slik som her:

> 1, 3, 5, 6, 10, 15

Her er både 5 og 6 like nære midten. Da er medianen definert til å være gjennomsnittet av disse to verdiene, altså 5,5. For ordinale variabler går ikke dette, siden verdiene ikke kan legges sammen; er de to midterste verdiene forskjellige, oppgir man dem derfor gjerne begge som median.

Vi kommer tilbake til medianen i [Seksjon 5.2.2.2](https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-mean-or-median), der vi ser hvordan den står seg mot gjennomsnittet.

## 5.2 Tallvariabler

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#tallvariabler*

Nå beveger vi oss over til tallvariabler, altså data på intervall- eller forholdstallsnivå. I resten av kapittelet skal vi fokusere på variabelen *Likestilling* fra ICCS-dataene. Som du kanskje oppfattet fra [Kapittel 2](https://kvant.roarstovner.no/sec-measurement.html) bør man først spørre seg hva variabelen egentlig måler. Dette er viktig nok til at vi bruker litt tid på det.

Jeg fant frem i dokumentasjonen til ICCS 2022 ([Fraillon et al., 2024](https://kvant.roarstovner.no/sec-references.html#ref-fraillon2024)) at *Likestilling* er en samlevariabel satt sammen av følgende Likert-påstander (se [Kapittel 2](https://kvant.roarstovner.no/sec-measurement.html)):

- Men and women should have equal opportunities to take part in government.
- Men and women should have the same rights in every way.
- Women should stay out of politics.
- When there are not many jobs available, men should have more right to a job than women.
- Men and women should get equal pay when they are doing the same jobs.
- Men are better qualified to be political leaders than women.

Alle påstandene ser jo ut til å måle likestilling på en relevant måte, men i Norge kan operasjonaliseringen kanskje virke litt tam, siden nesten alle norske elever støtter likestilling mellom kjønnene. For norske elever ville man kanskje valgt påstander som det faktisk er uenighet om. En mer relevant vinkling kunne være holdninger til likestilling i idrett: er det rettferdig at mannlige fotballspillere tjener mye mer og har bedre betingelser enn kvinnelige spillere, eller er forskjeller mellom kvinner og menn i idretter som skihopp akseptable? Slike påstander ligger nærmere ungdomsskoleelevenes egen erfaring og er lettere å være uenige i. Men nasjonalt tilpassede påstander som dette ville neppe passet like godt i alle de andre landene der ICCS gjennomføres.

Den verdien eleven får på variabelen *Likestilling* gir altså bare mening i lys av disse påstandene. Hadde påstandene vært annerledes, hadde verdien vært en annen og kanskje fortalt en annen historie. I tillegg regner ICCS om elevenes svar på disse påstandene til en samlevariabel. Den går fra ca. 15 (svært imot likestilling mellom kjønnene) til ca. 67 (svært for). Hvis du er interessert i å vite hvordan ICCS gjør denne omregningen, er det bare å slå opp i dokumentasjonen, men det trenger vi ikke for denne boka.

Nå skal vi beskrive denne variabelen ved hjelp av deskriptiv statistikk, og vi starter med histogrammer.

### 5.2.1 Histogrammer

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#sec-histogram*

**Histogrammer** er blant de mest grunnleggende og nyttige måtene å visualisere data på. De fungerer for tallvariabler, altså variabler på intervall- eller forholdstallsnivå, og gir et tydelig inntrykk av hvordan tallene fordeler seg. De fleste kjenner nok til histogrammer, siden de brukes så ofte, men jeg vil likevel forklare kort hvordan de fungerer.

Prinsippet er enkelt: Du deler opp de mulige verdiene i intervaller og teller hvor mange observasjoner som faller innenfor hvert intervall. Denne tellingen kalles frekvensen til intervallet og vises som en vertikal stolpe. Jeg tror noe av grunnen til at de oppfattes som så enkle, er at de minner om stolpediagrammer. Forskjellen på histogram og stolpediagram er at histogrammet brukes for tallvariabler og viser fordelingen med sammenhengende stolper, mens stolpediagrammet brukes for kategoriske variabler og viser kategorier med adskilte stolper. [Figur 5.3](https://kvant.roarstovner.no/sec-descriptive.html#fig-diagram-ICCS-histogram) viser et histogram av *Likestilling* for alle elevene i datasettet, altså elever fra Norge, Spania, Polen og Brasil. Vi ser at de fleste elevene skårer høyt på variabelen, men at en betydelig andel svarer mye lavere. Stolpen helt til høyre representerer de elevene som fikk høyest skår, og høyden på stolpen viser at det er rundt 6000 av dem. Antallet elever leser du av på y-aksen, mens selve skåren står på x-aksen.

Bildebeskrivelse: Histogram som viser variabelen _Likestilling_. Den horisontale aksen (x-aksen) strekker seg fra 15 til 70, og den vertikale aksen (y-aksen) viser tetthet, altså hvor mange svar som havner innad i hver søyle.

Figur 5.3. Et histogram av variabelen *Likestilling* fra ICCS 2022.

**Tips — I jamovi: lage et histogram**

Analyses → Exploration → Descriptives. Legg variabelen i «Variables», åpne «Plots» og kryss av for «Histogram».

Problemet med histogrammer er at utseende deres er veldig avhengig av hvor mange stolper man lager. I [Figur 5.4](https://kvant.roarstovner.no/sec-descriptive.html#fig-diagram-histogram-bins) ser vi den samme variabelen med litt forskjellig valg av antall stolper. De blir seende helt forskjellige ut.

Bildebeskrivelse: Fire histogrammer av variabelen _Likestilling_ ved siden av hverandre, med henholdsvis 5, 10, 20 og 50 stolper. Alle har den samme horisontale aksen (x-aksen), og den vertikale aksen (y-aksen) viser tetthet. Med få stolper blir fordelingen grovkornet og detaljer forsvinner; med mange stolper blir den taggete og tilfeldige småvariasjoner blir synlige.

Figur 5.4. Variabelen *Likestilling* framstilt med ulikt antall stolper.

Det finnes ingen fasit for hvor mange stolper man skal lage i et histogram. Antall stolper bør velges slik at histogrammet gir et tydelig og informativt bilde av fordelingen, uten at viktige mønstre forsvinner eller drukner i detaljer.

### 5.2.2 Sentraltendensmål for tallvariabler

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#sentraltendensmål-for-tallvariabler*

Å tegne histogrammer er en effektiv måte å vise fram hovedbudskapet i dataene dine, men det kan også være nyttig å sammenfatte dataene med noen få enkle tall. Det første du som regel vil vite noe om, er **sentraltendensen**, altså hva som er «midten», «gjennomsnittet», «det typiske» for dataene. Du har allerede møtt to sentraltendensmål, typetallet i [Seksjon 5.1.3](https://kvant.roarstovner.no/sec-descriptive.html#sec-mode) og medianen i [Seksjon 5.1.4](https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-median-ordinal). Nå legger vi til **gjennomsnittet**.

#### 5.2.2.1 Gjennomsnittet

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#gjennomsnittet*

**Gjennomsnittet** finner vi ved å legge sammen alle verdiene og dele på antall verdier. De første 7 verdiene for variabelen *Likestilling* i [Tabell 5.1](https://kvant.roarstovner.no/sec-descriptive.html#tbl-ICCS-data) var

> 46,8, 40,9, 65,7, 65,7, 65,7, 65,7, 52,7,

så gjennomsnittet blir:

 (46,8 + 40,9 + 65,7 + 65,7 + 65,7 + 65,7 + 52,7) / (7) = (403,2) / (7) = 57,6 

Dette er sannsynligvis godt kjent for de fleste.

Det som kanskje er nytt, er at man nesten aldri regner dette ut for hånd. Når du har mange observasjoner, slik som 16473 elever i ICCS-dataene, gjør vi heller beregningene digitalt. [Tabell 5.4](https://kvant.roarstovner.no/sec-descriptive.html#tbl-descriptive-mean) viser standard deskriptiv statistikk for *Likestilling*.

**Tips — I jamovi: regne ut gjennomsnitt og annen deskriptiv statistikk**

Analyses → Exploration → Descriptives. Legg *Likestilling* i «Variables». En tabell med standard deskriptiv statistikk dukker opp på høyre side av skjermen.

| Mål | Likestilling |
|----------------|--------------|
| N | 16 473 |
| Gjennomsnitt | 53,4 |
| Median | 52,7 |
| Standardavvik | 11,4 |
| Minimumsverdi | 15,9 |
| Maksimumsverdi | 65,7 |

Tabell 5.4. Standard deskriptiv statistikk for variabelen *Likestilling*.

Tabellen viser at gjennomsnittsverdien for *Likestilling* er 53,4. I tillegg får du annen nyttig informasjon som det totale antallet observasjoner (N = 16473) [^1], samt median-, minimumsverdi- og maksimumsverdi og standardavviket for variabelen.

Det er viktig å huske at disse sentraltendensene og spredningsmålene er en oppsummering av hele gruppa, ikke en beskrivelse av noen enkelt elev. At gjennomsnittsskåren på *Likestilling* er 53,4, betyr ikke at den typiske eleven skåret 53,4; elevene fordeler seg over et stort spenn rundt det tallet.

Variabelen *Likestilling* gir tallverdier, men hvordan gjør vi det hvis vi vil regne ut gjennomsnittet av variabelen *Forventet utdanning*? De 7 første verdiene av denne variabelen er

> VGS, Ungdomsskole, Høyere utdanning, Høyere utdanning, Høyere utdanning, VGS, Høyere utdanning.

Hvordan skal man regne gjennomsnittet av dette? Det går ikke, for man kan ikke legge sammen verdiene. Derfor kan man bare regne gjennomsnitt for variabler med tall, altså variabler på intervall- og forholdstallskala.

#### 5.2.2.2 Gjennomsnitt eller median?

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-mean-or-median*

Det er ikke nok å vite hvordan man regner ut gjennomsnitt og median; du må også forstå hva de forteller deg om dataene dine. Dette er illustrert i [Figur 5.5](https://kvant.roarstovner.no/sec-descriptive.html#fig-descriptive-weight). Tenk på gjennomsnittet som «tyngdepunktet» til datasettet ditt, mens medianen er «middelverdien» i dataene. Her er noen praktiske retningslinjer:

- **For nominelle variabler** kan du hverken bruke gjennomsnitt eller median, typetall er den eneste sentraltendensen som fungerer.

- **For ordinale variabler** vil medianen stort sett være det beste valget. Medianen bruker kun rekkefølgeinformasjonen i dataene dine (hvilke verdier som er større eller mindre enn andre), noe som passer perfekt for ordinale data. Gjennomsnittet derimot, er avhengig av presise tallverdier. Det er likevel ganske vanlig å regne gjennomsnitt av variabler på ordinalnivå. Da setter man for eksempel det laveste nivået til tallet 1, det neste nivået til tallet 2 osv.

- **For tallvariabler** er både median og gjennomsnitt relevante valg.

Hva du velger av median og gjennomsnitt for å analysere tallvariabler, avhenger av hva du ønsker å fremheve.

Jeg må forklare med et eksempel. Tenk deg at Arne (månedsinntekt 50 000 kr), Berit (60 000 kr) og Cato (65 000 kr) sitter ved et bord. Gjennomsnittsinntekten ved bordet er 58 333 kr og medianinntekten er 60 000 kr. Begge disse er gode sentralverdier for dataene.

Så kommer Erling Braut Haaland og setter seg ved bordet (månedsinntekt 30 000 000 kr). Plutselig gjør gjennomsnittsinntekten et byks til 7 543 750 kr, mens medianen kun stiger til 62 500 kr! Gjennomsnittsverdien representerer plutselig ikke de andre i det hele tatt, fordi den ekstreme verdien til Erling Braut Haaland trekker gjennomsnittet opp for mye. Medianen, derimot, ser ikke den ekstreme verdien i det hele tatt.

Medianens styrke er altså at den er robust mot ekstreme verdier. Gjennomsnittet kan likevel være relevant hvis du er interessert i den totale inntekten ved bordet, men hvis du vil vite hva som er en typisk inntekt ved Haaland-bordet, ville medianen gi deg et mye mer representativt bilde.

Virkeligheten er vanligvis ikke like ekstrem som Haaland-eksempelet, men samme tankemåte spiller inn når fordelingen er skjev. [Figur 5.5](https://kvant.roarstovner.no/sec-descriptive.html#fig-descriptive-weight) illustrerer at i en skjev fordeling, med hovedtyngden til venstre og en hale av ekstreme verdier til høyre, ligger medianen nærmere hovedtyngden, mens gjennomsnittet trekkes mot halen.

Bildebeskrivelse: Et stolpediagram på venstre side har 48 observasjoner og ligner på et trappetrinnmønster med avtagende høyder fra venstre til høyre. Teksten lyder: "Gjennomsnittet er 'balansepunktet' til dataene." Under diagrammet er det en horisontal linje merket "balansepunkt" med et trekantet støttepunkt som symboliserer balanse. Det samme stolpediagrammet vises på høyre side med dataene delt inn i to grupper på 24 observasjoner. Den venstre gruppen er skyggelagt i lys grå, og den høyre gruppen er skyggelagt i mørk grå. En pil peker på den 24. observasjonen med teksten "Medianen er den 'midterste observasjonen' i datasettet"

Figur 5.5. En illustrasjon av forskjellen mellom hvordan gjennomsnittet og medianen bør tolkes. Gjennomsnittet er "balansepunktet" til datasettet. Hvis du forestiller deg at histogrammet av dataene er et klosser på et brett, så er gjennomsnittet balansepunktet. Medianen er derimot den midterste observasjonen, slik at halvparten av klossene ligger til venstre og halvparten ligger til høyre for medianen.

Valget mellom gjennomsnitt og median er viktig når dataene har en hale som trekker opp eller ned gjennomsnittet. I slike tilfeller bør du velge median for at sentraltendensmålet skal samsvare best med hovedtyngden av dataene. Slike fordelinger med en lang hale på én side kalles **skjeve**, og du vil møte begrepet i forskningsartikler. Et eksempel der skjevhet er viktig er sammenlikninger av gjennomsnittsinntekt. USA har høyere gjennomsnittsinntekt enn Norge, men lavere medianinntekt. Årsaken er at USA har flere superrikinger som trekker opp gjennomsnittet på samme måte som Erling Braut Haaland gjorde i vårt eksempel. Men den vanlige lønnstaker sin inntekt er mer lik medianinntekten, og en vanlig lønnstaker tjener mer i Norge enn i USA.

### 5.2.3 Spredningsmål

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-dispersion*

Alt vi har sett på så langt handler om sentraltendens, altså hvilke verdier som ligger «i midten» eller som er mest «typiske» i dataene våre. I tillegg trenger vi ofte å forstå hvor spredt dataene er. Ligger de fleste observasjonene tett rundt gjennomsnittet, eller er de spredt jevnt utover? Dette kaller vi **spredning**.

Spredning er også en viktig egenskap ved dataene. Tenk deg to klasser som begge har 4,0 i snitt på en prøve. I den ene ligger nesten alle elevene rundt fireren. I den andre er halve klassen på topp og halve på bunn, slik at snittet på 4,0 skjuler at nesten ingen elever egentlig ligger der. Som lærer vet du at dette er to helt forskjellige klasser å undervise, men gjennomsnittet alene klarer ikke å skille dem. Det er nettopp dette et spredningsmål fanger opp: om elevene ligger tett rundt gjennomsnittet, eller spredt utover.

La oss utforske fire ulike måter å måle spredning på ved hjelp av ICCS-dataene. Hvert spredningsmål har sine egne fordeler og ulemper, så det er nyttig å kjenne til flere.

#### 5.2.3.1 Variasjonsbredde

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-range*

**Variasjonsbredden** er det aller enkleste spredningsmålet. Den regnes ut ved å ta den største verdien minus den minste verdien. [Tabell 5.5](https://kvant.roarstovner.no/sec-descriptive.html#tbl-descriptive-dispersion) viser variasjonsbredden og andre spredningsmål for *Likestilling*.

**Tips — I jamovi: regne ut spredningsmål**

Analyses → Exploration → Descriptives. Under «Statistics» finner du seksjonen «Dispersion» med avkryssingsbokser for «Std. deviation», «Variance», «Range», «Minimum» og «Maximum». Variasjonsbredde heter «Range» på engelsk, så kryss av for den.

| Mål | Likestilling |
|------------------|--------------|
| Variasjonsbredde | 49,8 |
| Kvartilbredde | 23,1 |
| Standardavvik | 11,4 |
| Varians | 129,9 |
| Minimumsverdi | 15,9 |
| Maksimumsverdi | 65,7 |

Tabell 5.5. Spredningsmål for variabelen *Likestilling*.

Variasjonsbredden er lett å forstå, men har en egenskap som ofte er en ulempe: Den påvirkes veldig av ekstreme verdier.

Se for deg denne lille datamengden: -100, 2, 3, 4, 5, 6, 7, 8, 9, 10

Her får vi en variasjonsbredde på hele 110 på grunn av den ene ekstreme verdien (-100). Men hvis vi fjerner denne ekstreme verdien, blir variasjonsbredden bare 8. Det er en enorm forskjell! Dette må man være obs på når man benytter variasjonsbredden.

#### 5.2.3.2 Kvartilbredde

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#kvartilbredde*

Ordet «kvartil» i **kvartilbredden** er satt sammen av «kvart» og «persentil». «Kvart» betyr en firedel, og tanken er at vi deler det sorterte datasettet i fire like store deler. En **persentil** er en verdi som en viss andel av observasjonene ligger under: den 25. persentilen er verdien som 25 % av observasjonene er mindre enn. Kvartilene er navn på tre bestemte persentiler, 25., 50. og 75., og kalles henholdsvis første, andre og tredje kvartil.

**Kvartilbredden** er litt som variasjonsbredden, men i stedet for forskjellen mellom den største og minste verdien ser vi på forskjellen mellom første og tredje kvartil, altså mellom 25. og 75. persentil.

**Tips — I jamovi: regne ut persentiler**

Analyses → Exploration → Descriptives → «Percentile Values» og kryss av for «Percentiles».

Kvartilbredden (*interquartile range, IQR*) er altså differansen mellom 25. og 75. persentil, og for variabelen *Likestilling* er

- første kvartil lik 42,6,
- andre kvartil lik 52,7,
- tredje kvartil lik 65,7.

Vi kan finne kvartilbredden ved å regne avstanden mellom første og tredje kvartil: 65,7 - 42,6 = 23,1. Siden 25% av dataene er mindre enn 42,6 og 75% av dataene er mindre enn 65,7, ligger 50% av dataene i et intervall som er 23,1 bredt. Legg også merke til at 50. persentil og medianen har samme verdi, 52,7, akkurat slik det skal være. I forskningsartikler oppsummeres alt dette slik:

> The median value of *gender equality* was 52.7 (IQR = 42.6–65.7).

Dette er en effektiv måte å vise sentraltendens og spredning. Medianen viser hva midtpunktet i dataene er og kvartilbredden viser hvor spredt halvparten av verdiene ligger rundt medianen. Senere skal du lese om boksplott, som er bygd rundt median og interkvartilbredde, [Seksjon 5.2.4](https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-box-plot).

Kvartilbredden har den samme gode egenskapen som medianen: den påvirkes lite av ekstreme verdier. Har du mange observasjoner, vil én enkelt ekstremverdi som Haalands lønn knapt flytte 25.- og 75.-persentilen, mens gjennomsnittet spretter opp slik vi så i [Seksjon 5.2.2.2](https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-mean-or-median). Derfor fungerer kvartilbredden dårlig til å vise spredningen rundt et gjennomsnitt, siden gjennomsnittet kan ligge utenfor 25. og 75. persentil. Det ville den gjort i Haaland-eksempelet.

Kvartilbredden fungerer teknisk sett også for ordinale data, men i praksis brukes den nesten utelukkende på tallvariabler.

#### 5.2.3.3 Standardavvik og varians

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-sd*

De to spredningsmålene vi har sett på så langt er differanser, enten mellom største og minste verdi eller mellom tjuefemte og syttifemte persentil. En annen tilnærming er å regne ut hvor stort et «typisk» avvik er fra gjennomsnittet. Det mest brukte spredningsmålet som gjør dette er **standardavviket**.

La oss regne det ut for hånd på de samme 7 verdiene av *Likestilling* som vi brukte for gjennomsnittet, se *Data* i [Tabell 5.6](https://kvant.roarstovner.no/sec-descriptive.html#tbl-descriptive-sd). Gjennomsnittet av dem var 57,6. **Avviket** til en observasjon er hvor langt den ligger fra gjennomsnittet, altså verdien minus gjennomsnittet; det første avviket er for eksempel 46,8 - 57,6 = -10,8. Avvikene vises som *Avvik* i samme tabell.

[TABLE]

Tabell 5.6. Utregning av standardavviket for de syv første *Likestilling*-verdiene, én verdi per elev. Avvikene har gjennomsnitt null, mens gjennomsnittet av de kvadrerte avvikene er variansen.

Vi vil sammenfatte avvikene til ett tall som forteller hvor stort et typisk avvik er. Det nærliggende er å ta gjennomsnittet av avvikene, men det går ikke: de positive og negative avvikene opphever hverandre, så gjennomsnittet blir alltid nøyaktig null, slik *Gjennomsnitt* i [Tabell 5.6](https://kvant.roarstovner.no/sec-descriptive.html#tbl-descriptive-sd) viser. Trikset er å **kvadrere** hvert avvik først, slik at alt blir positivt; det første avviket, -10,8, blir da (-10,8)^2 = 116,6, se raden *Kvadrert avvik*. Nå kan vi ta gjennomsnittet: snittet av de kvadrerte avvikene er 97,4, og standardavviket er kvadratroten av det, slik at vi kommer tilbake til samme størrelsesorden som dataene:

s = √97,4 = 9,9

Et typisk avvik fra gjennomsnittet er altså omtrent 9,9 likestillingspoeng for disse elevene. Det virker jo ganske fornuftig ut fra *Avvik*-verdiene i tabellen.

Tallet under rottegnet, 97,4, har et eget navn: det er **variansen**, altså det gjennomsnittlige kvadrerte avviket nederst til høyre i tabellen. Variansen er viktig, og vi møter det igjen i [Kapittel 7](https://kvant.roarstovner.no/sec-inferential.html).

**Tips — Teknisk om variansen**

Det er vanskelig å tolke variansen direkte fordi enheten også er kvadrert. Akkurat som «meter» og «kvadratmeter» er helt forskjellige ting, så er «likestillingspoeng» og «kvadratlikestillingspoeng» helt forskjellige ting. Hvis du hører fra gymlæreren at elevene i klassen din sprang i gjennomsnitt 2300 meter på Cooper-testen, så vil du synes det var rart om han sa at variasjonen var ca. 160 000 kvadratmeter. Det gir mye mening å ta kvadratroten og oppgi at variasjonen var 400 m. Standardavviket er intuitivt fordi vi tar kvadratroten til slutt. I [Kapittel 7](https://kvant.roarstovner.no/sec-inferential.html) skal vi se hvorfor variansen også er viktig.

**Advarsel — Teknisk advarsel om jamovi**

En liten teknisk detalj: vi delte summen av de kvadrerte avvikene på antallet observasjoner, n = 7. Statistikkprogrammer som jamovi deler i stedet på n - 1, og ville derfor fått et litt annet tall enn vårt. Forskjellen er ubetydelig for store datasett, men *hvorfor* det gjøres slik henger sammen med skillet mellom å beskrive utvalget og å estimere populasjonen. Det kommer vi tilbake til i [Kapittel 7](https://kvant.roarstovner.no/sec-inferential.html).

Husk likevel at standardavviket sammenfatter spredningen i ett enkelt tall og sier ingenting om *formen* på fordelingen. To variabler kan ha samme standardavvik selv om histogrammene deres ser helt forskjellige ut. Dette gjelder for alle sentraltendensene og spredningsmålene: Figurer gir ofte et bedre bilde enn tallene alene.

Når man rapporterer standardavviket i en forskningsartikkel gjøres det gjerne slik:

> The mean of the variable *Gender equality* was 53.4 (SD = 11.4).

Her står SD for *standard deviation*, som er engelsk for standardavvik.

#### 5.2.3.4 Hvilket spredningsmål skal du bruke?

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#hvilket-spredningsmål-skal-du-bruke*

Jeg har gitt deg fire ulike spredningsmål: variasjonsbredde, kvartilbredde, varians og standardavvik. Jeg oppsummerer egenskapene deres kort:

- **Variasjonsbredde**: Viser avstanden mellom den største og minste verdien i dataene. Variasjonsbredden påvirkes lett av ekstremverdier, så den brukes vanligvis kun når du har spesielle grunner til å fokusere på ytterpunktene.
- **Kvartilbredde**: Beskriver hvor «den midterste halvdelen» av dataene befinner seg. Den er robust mot ekstremverdier og passer perfekt sammen med medianen. Et godt valg!
- **Standardavvik**: Er kvadratroten av variansen. Den kombinerer matematisk nytteverdi og praktisk tolkbarhet siden den bruker samme enheter som dataene. Den klare favoritten når gjennomsnittet er din foretrukne sentraltendens. Standardavviket er definitivt det mest brukte spredningsmålet!
- **Varians**: Grunnlaget standardavviket er utledet fra. Variansen bruker kvadrerte enheter og er derfor vanskelig å tolke direkte, men den er nyttig i videre statistikk.

Kort fortalt: Kvartilbredde og standardavvik er de to klart mest populære valgene for å beskrive variabilitet, men variansen er den nyttigste i senere utregninger. Variasjonsbredden bruker mange studenter som spredningsmål i mastergradene sine, sikkert fordi den er så intuitiv, så det er viktig å vite om dens styrker og svakheter også.

### 5.2.4 Boksplott

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-box-plot*

Et godt alternativ til histogrammer er **boksplott**. Ideen bak et boksplott er å gi deg en rask og tydelig visuell oversikt over medianen og kvartilbredden. Siden denne informasjonen var enkel å regne ut også før datamaskiner ble vanlig, og fordi boksplott presenterer all denne informasjonen på en kompakt måte, er boksplott populære. Vi tar en titt på variabelen *Likestilling*, se i [Figur 5.6](https://kvant.roarstovner.no/sec-descriptive.html#fig-diagram-boxplot-equality).

**Tips — I jamovi: lage et boksplott**

Analyses → Exploration → Descriptives. Legg variabelen i «Variables», åpne «Plots» og kryss av for «Box plot».

Bildebeskrivelse: Et stående boksplott av variabelen Likestilling. Boksen strekker seg fra 25. til 75. persentil med en tykk medianlinje inni. En tynn linje (whisker) går nedover til den minste verdien, men det er ingen linje oppover siden 75. persentil er lik den største verdien. Ingen avviksverdier vises.

Figur 5.6. Et boksplott av variabelen *Likestilling*.

Den blågrå boksen starter og slutter ved første og tredje kvartil, og viser derfor kvartilbredden. Den tykke linjen midt i boksen viser medianen. De tynne linjene viser variasjonsbredden ved at de strekker seg ut til de mest ekstreme datapunktene i hver retning, i hvert fall nesten. I dette plottet går det ingen strek oppover, fordi ingen verdier er høyere enn 75. persentil; så mange elever fikk toppskår på *Likestilling*. Som jeg skrev i [Seksjon 5.2.3.1](https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-range), så er variasjonsbredden veldig følsom for hvor ekstreme de mest ekstreme verdiene er. Derfor viser de fleste boksplott ikke variasjonsbredden, men kutter strekene ved en eller annen grense. Som standard er denne grensen satt til 1,5 ganger kvartilbredden (IQR). Hvis noen observasjoner faller utenfor dette området, vises de som prikker eller sirkler i stedet for. Disse kalles **avviksverdier** (*outliers* på engelsk). [^2]

I våre *Likestilling*-data er det ingen observasjoner som er avvikende, så det er ingen avviksverdier og derfor ingen prikker.

Boksplottet kommer virkelig til sin rett når man sammenlikner undergrupper, som kommer i [Seksjon 6.2.1](https://kvant.roarstovner.no/sec-associations.html#sec-associations-subgroup).

## 5.3 Profesjonelle grafer

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#profesjonelle-grafer*

Alle grafene i dette kapittelet er laget i jamovi, og jamovi tegner standardgrafer som er tydelige og minimalistiske. Hva skiller dem fra mer forseggjorte grafer? Stort sett fargevalg og tekst-annoteringer som må skreddersys til hver graf. Se for eksempel på stolpediagrammet i [Figur 5.7](https://kvant.roarstovner.no/sec-descriptive.html#fig-diagram-owid-bar). Det er et vanlig stolpediagram, men

- det er lagt horisontalt slik at teksten skal bli lettere å lese,
- hver søyle er markert med prosenter,
- aksene er fjernet,
- farger er brukt for å vise grupper av søyler,
- tittel og figurnoter forteller hele historien.

Alt i alt blir øyet ledet rundt i figuren slik at den samlet sett forteller en interessant historie om globale utdanningsforskjeller.

Bildebeskrivelse: Liggende stolpediagram fra Our World in Data med tittelen "What share of children are not able to read with comprehension by the end of primary school age?". Fire mørkerøde stolper viser landgrupper etter inntektsnivå. Høyinntektsland 9 prosent, øvre middelinntektsland 29 prosent, nedre middelinntektsland 55 prosent og lavinntektsland 90 prosent. Under dem står to stolper i andre farger. Det globale gjennomsnittet, i blått, er 48 prosent, og landene som gjør det best, i grønt, ligger på 1,6 til 3 prosent. Tallet står skrevet ved enden av hver stolpe, og fargen på stolpen går igjen i teksten som navngir den.

Figur 5.7. Et profesjonelt stolpediagram. Legg merke til forklarende tekst og farger. Grafen er laget av Roser ([2022](https://kvant.roarstovner.no/sec-references.html#ref-roser2022)). Utgitt under lisensen CC-BY.

Eksempelet i [Figur 5.7](https://kvant.roarstovner.no/sec-descriptive.html#fig-diagram-owid-bar) er et standard stolpediagram; andre diagrammer er spesiallaget. Se for eksempel på [Figur 5.8](https://kvant.roarstovner.no/sec-descriptive.html#fig-diagram-owid-line), som på en svært illustrerende måte viser at ungene lærer mer i Sør-Korea, Finland og Nederland enn i Brasil og Uruguay, selv hvis man sammenlikner familier med samme kjøpekraft.

Bildebeskrivelse: Linjediagram fra Our World in Data. Den horisontale aksen (x-aksen) viser årlig husholdningsinntekt på en logaritmisk skala fra rundt 1 000 til over 20 000 dollar, og den vertikale aksen (y-aksen) viser gjennomsnittlig prøveskår i matematikk fra 300 til 600. Én linje per land, hver med landsnavnet skrevet i samme farge som linjen ved enden av den. Alle linjene stiger, altså skårer rikere elever bedre enn fattigere elever innad i hvert land. Men linjene ligger på svært ulike nivåer. Sør-Korea, Finland og Nederland ligger over 530, mens Brasil, Uruguay, Tunisia og Marokko ligger under 490. To forklarende tekster inne i figuren peker på hovedpoenget. De fattigste elevene i et rikt land skårer ofte høyere enn de rikeste elevene i et fattigere land.

Figur 5.8. Et profesjonelt linjediagram. Legg merke til forklarende tekst og farger. Grafen er laget av Roser ([2022](https://kvant.roarstovner.no/sec-references.html#ref-roser2022)). Utgitt under lisensen CC-BY.

Andre visualiseringer er enda mer spesialiserte, som for eksempel for [å vise hvordan amerikanere tilbringer dagene sine](https://flowingdata.com/2015/12/15/a-day-in-the-life-of-americans/) eller hele denne saken fra NRKs team med data-journalister som [visualiserer naturnedbygging i Norge](https://www.nrk.no/dokumentar/xl/nrk-avslorer_-44.000-inngrep-i-norsk-natur-pa-fem-ar-1.16573560). Det er lov å la seg inspirere!

## 5.4 Lagre bildefiler med jamovi

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#lagre-bildefiler-med-jamovi*

Du lurer kanskje på hvordan du lagrer alle grafene vi har laget. Bare høyreklikk på grafen og eksporter det til en fil. Du kan velge mellom flere formater som «png», «eps», «svg» eller «pdf». Alle disse formatene gir deg høy kvalitet på bildene, perfekt for å dele med kolleger, inkludere i oppgaver eller bruke i artikler og presentasjoner, men «.png» er trolig det som vil samarbeide best med Microsoft Word.

## 5.5 Oppsummering

*Lenke: https://kvant.roarstovner.no/sec-descriptive.html#oppsummering*

Å beregne grunnleggende deskriptiv statistikk og lage gode figurer er noe av det første du gjør når du analyserer data. Deskriptiv statistikk beskriver utvalget og forteller altså ingenting om verdiene for populasjonen.

Jeg har dekket disse temaene:

- **Kategoriske variabler**: Jeg viste hvordan man lager [Frekvenstabeller](https://kvant.roarstovner.no/sec-descriptive.html#frekvenstabeller) og [Stolpediagram](https://kvant.roarstovner.no/sec-descriptive.html#sec-diagram-bar) for nominelle og ordinale data, og hvordan man finner [Typetallet](https://kvant.roarstovner.no/sec-descriptive.html#sec-mode).
- **Histogrammer**: [Histogrammer](https://kvant.roarstovner.no/sec-descriptive.html#sec-histogram) viser fordelingen av tallvariabler og er ofte det mest informative verktøyet.
- **Mål for sentraltendens**: [Typetallet](https://kvant.roarstovner.no/sec-descriptive.html#sec-mode) fungerer for alle variabeltyper, [medianen](https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-median-ordinal) krever ordinal- eller tallvariabler, og [gjennomsnittet](https://kvant.roarstovner.no/sec-descriptive.html#sentraltendensmål-for-tallvariabler) krever tallvariabler. Bruk medianen hvis dataene er [skjeve](https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-mean-or-median); bruk gjennomsnittet ellers.
- **Mål for spredning**: [Spredningsmål](https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-dispersion) viser deg hvor «spredt» dataene dine er. De viktigste målene er kvartilbredde og standardavvik, mens varians spiller en nøkkelrolle i videre statistikk.
- **Boksplott**: [Boksplott](https://kvant.roarstovner.no/sec-descriptive.html#sec-descriptive-box-plot) er en kompakt måte å visualisere spredning og sentraltendens, spesielt nyttig for å sammenligne undergrupper.

Fraillon, J., Friedman, T., & Fraillon, J. (Red.). (2024). *ICCS 2022 Technical Report*.

Roser, M. (2022). Millions of Children Learn Only Very Little. How Can the World Provide a Better Education to the next Generation? *Our World in Data*.

[^1]: Bokstaven *n*, enten den er stor eller liten, beskriver alltid utvalgsstørrelsen.

[^2]: Av naturlige årsaker blir dette ofte oversatt til «uteliggere» på norsk. Av like naturlige årsaker velger jeg å *ikke* benytte ordet «uteligger» for avviksverdiene.
