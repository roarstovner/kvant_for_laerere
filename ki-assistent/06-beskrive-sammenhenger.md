# Kapittel 6. Å beskrive sammenhenger mellom variabler

Fra læreboka *Kvantitativ metode for lærere* av Roar Bakken Stovner (2026-utgaven).
Nettversjon av dette kapittelet: https://kvant.roarstovner.no/sec-associations.html
Hele boka: https://kvant.roarstovner.no/

---

I forrige kapittel lærte du å beskrive én variabel om gangen, med blant annet frekvenstabeller, histogram, gjennomsnitt og standardavvik. Det er nyttig for å forstå *hva* dataene inneholder, men i de fleste studier er vi mest interessert i *hvordan variabler henger sammen*. Er det forskjell mellom elever fra ulike land? Henger sosioøkonomisk status sammen med holdninger til likestilling? Slike spørsmål krever at vi ser på to variabler samtidig.

Framgangsmåten avhenger av hva slags variabler vi har. Derfor er kapittelet organisert etter variabeltype: først undersøker vi sammenhengen mellom to kategoriske variabler, deretter mellom en kategorisk og en kontinuerlig variabel, og til slutt mellom to kontinuerlige variabler.

Vi bruker syv variabler fra ICCS-datasettet gjennom kapittelet. [Tabell 6.1](https://kvant.roarstovner.no/sec-associations.html#tbl-associations-codebook) viser målenivået for hver variabel og hva verdiene representerer. Inndelingen i *Type* (kategorisk eller kontinuerlig) er den grove grupperingen kapittelet er organisert etter, mens *Målenivå* er det mer finmaskede vokabularet (nominal, ordinal, intervall, forhold) fra [Kapittel 5](https://kvant.roarstovner.no/sec-descriptive.html). Det kan være lurt å gå tilbake til [Tabell 6.1](https://kvant.roarstovner.no/sec-associations.html#tbl-associations-codebook) underveis i kapittelet hvis du er usikker på variablene.

| Variabel | Type | Målenivå | Verdier |
|----|----|----|----|
| Land | Kategorisk | Nominal | Norge, Spania, Polen, Brasil |
| Kjønn | Kategorisk | Nominal | Jente, Gutt, Annet |
| Forventet utdanning | Kategorisk | Ordinal | Ungdomsskole \< VGS \< Kort utdanning \< Høyere utdanning |
| Likestilling | Kontinuerlig | Intervall | Høyere skår betyr mer positiv til likestilling |
| Demokratikunnskap | Kontinuerlig | Intervall | Høyere skår betyr mer kunnskap om demokrati |
| Sosioøkonomisk status | Kontinuerlig | Intervall | Standardisert indeks; 0 ≈ gjennomsnittet |
| Forventet politisk deltakelse | Kontinuerlig | Intervall | Høyere skår betyr mer forventet politisk engasjement |

Tabell 6.1. Variablene fra ICCS-datasettet som vi bruker i dette kapittelet.

## 6.1 Kategorisk × kategorisk

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-cat-cat*

Når begge variablene er kategoriske (nominelle eller ordinale) bruker vi krysstabeller og stablede stolpediagram for å beskrive sammenhengen mellom variablene.

### 6.1.1 Krysstabeller

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-contingency*

I [Kapittel 5](https://kvant.roarstovner.no/sec-descriptive.html) lærte du å lage frekvenstabeller for enkeltvariabler. Hvis du ønsker en tabell med to variabler (for eksempel for å kombinere *Forventet utdanning* og *Land* for å se om det er forskjell i hvor lang utdanning elevene ser for seg i de ulike landene), trenger du en **krysstabell** (*contingency table* på engelsk). Resultatet for vårt eksempel ser du i [Tabell 6.2](https://kvant.roarstovner.no/sec-associations.html#tbl-associations-contingency). Tallene er antall elever, og prosentene i parentes er andelen innenfor hvert land (kolonneprosent).

| Forventet utdanning | Norge | Spania | Polen | Brasil |
|---------------------|---------------|---------------|---------------|---------------|
| Ungdomsskole | 568 (12,2 %) | 225 (7,5 %) | 130 (3,1 %) | NA |
| VGS | 820 (17,7 %) | 831 (27,6 %) | 1541 (36,5 %) | 594 (12,9 %) |
| Kort utdanning | 770 (16,6 %) | 492 (16,3 %) | 202 (4,8 %) | 898 (19,5 %) |
| Høyere utdanning | 2465 (53,1 %) | 1450 (48,2 %) | 2319 (55,0 %) | 3108 (67,5 %) |
| NA | 17 (0,4 %) | 13 (0,4 %) | 26 (0,6 %) | 4 (0,1 %) |

Tabell 6.2. Krysstabell over *Forventet utdanning* og *Land*. Kolonnene viser antall elever og kolonneprosent (andel innenfor hvert land).

**Tips — I jamovi: lage en krysstabell**

Frequencies → Contingency Tables → Independent Samples. Legg *Forventet utdanning* i «Rows» og *Land* i «Columns». Under «Cells» kryss av for «Counts» og «Percentages: Columns».

Når du tolker krysstabellen, kan du for eksempel se på cellen for spanske elever som ser for seg en kort utdanning (som kan være ett- til to-årig fagskole). Tallet utenfor parentesen er frekvensen, altså hvor mange spanske elever i utvalget dette gjelder. Tallet i parentesen er kolonneprosenten, og siden *Land* ligger på kolonnene betyr det «andel innenfor Spania som ser for seg kort utdanning». Hvis jeg i stedet hadde vist radprosenter, ville prosent-verdien vært en annen og betydd «andelen av elevene som ser for seg kort utdanning, som er fra Spania». Det er to ulike spørsmål, så det er viktig å være bevisst på hvilken type prosent som brukes.

Krysstabeller er nyttige! Se for eksempel at norske elever skiller seg ut ved at en betydelig andel ser for seg å avslutte utdanningen etter ungdomsskolen, mens ingen brasilianske elever gjør det.

### 6.1.2 Grupperte stolpediagram

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-bar-subgroup*

Du lærte å lage stolpediagram i [Kapittel 5](https://kvant.roarstovner.no/sec-descriptive.html). Et **gruppert stolpediagram** lar deg sammenligne undergrupper ved å dele opp dataene etter en ekstra kategorisk variabel. I [Figur 6.1 (a)](https://kvant.roarstovner.no/sec-associations.html#fig-associations-edu-x-country) er *Forventet utdanning* plassert på x-aksen, og hvert utdanningsnivå har én stolpe per *Land*. I [Figur 6.1 (b)](https://kvant.roarstovner.no/sec-associations.html#fig-associations-country-x-edu) er det byttet om, slik at *Land* er plassert på x-aksen og hvert land har én stolpe per utdanningsnivå. Hvis du lurer på hvilken du skal velge, må du tenke over hvilken visualisering som best kommuniserer ditt poeng eller som best besvarer forskningsspørsmålet ditt.

**Tips — I jamovi: stolpediagram for undergrupper**

Analyses → Exploration → Descriptives. Legg variabelen i «Variables», åpne «Plots» og kryss av for «Bar plot». Legg gruppevariabelen i «Split by».

Bildebeskrivelse: Gruppert stolpediagram. X-aksen viser de fire kategoriene av Forventet utdanning, og innenfor hver kategori er det fire stolper, én for hvert land. Stolpene for Høyere utdanning er klart høyest i alle land.

(a) *Forventet utdanning* på x-aksen, gruppert etter *Land*.

Bildebeskrivelse: Gruppert stolpediagram. X-aksen viser de fire landene, og innenfor hvert land er det fire stolper, én for hvert utdanningsnivå. Stolpene for Høyere utdanning er klart høyest i alle land.

(b) *Land* på x-aksen, gruppert etter *Forventet utdanning*.

Figur 6.1. Gruppert stolpediagram av *Forventet utdanning* og *Land*, vist på to måter.

Vi kan også legge til *enda en variabel*, slik at vi sammenligner undergrupper langs to dimensjoner samtidig. I [Figur 6.2](https://kvant.roarstovner.no/sec-associations.html#fig-associations-bar-threeway) ser du resultatet for *Land*, *Forventet utdanning* og *Kjønn*, der hvert kjønn vises for seg. Figuren blir imidlertid omfattende og noe uoversiktlig. Dette gjelder særlig diagrammet for «Annet» (nederst), der det lave antallet observasjoner gjør mønstrene vanskelige å lese. I neste delkapittel viser jeg hvordan slike fremstillinger kan forbedres ved hjelp av stablede stolpediagrammer.

Bildebeskrivelse: Tre paneler med grupperte stolpediagram, ett for hvert kjønn. Hvert panel viser antall elever fordelt på Land og Forventet utdanning. Stolpene for Jente og Gutt er tydelige, men stolpene i Annet-panelet er nesten ikke synlige fordi gruppen er så mye mindre.

Figur 6.2. Antall elever per *Forventet utdanning* og *Land*, der hvert kjønn vises for seg.

### 6.1.3 Stablede stolpediagram

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-stacked-bar*

I [Seksjon 5.1.2](https://kvant.roarstovner.no/sec-descriptive.html#sec-diagram-bar) så du at vi ofte ikke ønsker å vise antallet i hver stolpe, men andelen, fordi antallet blir misvisende når gruppene har ulik størrelse. **Stablede stolpediagram** er en god måte å vise andelene på. Du stabler stolpene oppå hverandre slik at de summerer til 100 %, og hver stolpe viser sammensetningen innenfor den aktuelle stolpen. Det blir både kompakt og direkte sammenliknbart mellom grupper, se [Figur 6.3](https://kvant.roarstovner.no/sec-associations.html#fig-associations-stacked-bar).

**Tips — I jamovi: lage et stablet stolpediagram**

Frequencies → Independent samples (χ² test of association). Legg *Forventet utdanning* på «Rows» og *Land* på «Columns». Under «Plots» kryss av for «Bar plot» og velg:

- Bar Type: «Stacked»
- Y-axis: «Percentages»
- «Percentages within column» (regner prosenter innenfor hvert land)

Bildebeskrivelse: Fire stablede stolper, én per land, der hver stolpe er delt i fire fargede segmenter for verdiene av Forventet utdanning. Stolpene summerer alle til 100 prosent, slik at andelene kan sammenlignes direkte mellom landene.

Figur 6.3. Stablet stolpediagram av *Forventet utdanning* for hvert *Land*. Hver stolpe summerer til 100 %, og segmentene viser andelen innenfor landet.

I [Figur 6.3](https://kvant.roarstovner.no/sec-associations.html#fig-associations-stacked-bar) ser vi et stablet stolpediagram som viser *Forventet utdanning* for hvert land. Vi ser tydelig at en større andel elever i Brasil planlegger å ta høyere utdanning enn i Norge. Forskjellene er forholdsvis små, og i stolpediagrammene [Figur 6.1 (a)](https://kvant.roarstovner.no/sec-associations.html#fig-associations-edu-x-country) og [Figur 6.1 (b)](https://kvant.roarstovner.no/sec-associations.html#fig-associations-country-x-edu), er det vanskelig å se at brasilianere oftere ser for seg å ta høyere utdanning.

Med vanlige stolpediagram var det vanskelig å gjøre en analyse på tvers av to variabler, siden [Figur 6.2](https://kvant.roarstovner.no/sec-associations.html#fig-associations-bar-threeway) ble så stor. Vi kan prøve å lage en liknende figur med stablede stolper. Resultatet blir som i [Figur 6.4](https://kvant.roarstovner.no/sec-associations.html#fig-associations-stacked-bar-threeway), og det stablede stolpediagrammet er mye mer kompakt og lesbart enn samme informasjon vist som et vanlig stolpediagram ([Figur 6.2](https://kvant.roarstovner.no/sec-associations.html#fig-associations-bar-threeway)). Den største forskjellen mellom de to diagrammene er at «Annet»-gruppen var nesten umulig å lese med det vanlige stolpediagrammet fordi stolpene ble så små. Med stablede stolper står hver stolpe like høyt (100 %), og vi ser sammensetningen innenfor hver liten gruppe. (Men husk at disse stolpene er basert på veldig få elever, så andelene er usikre.)

**Tips — I jamovi: stablet stolpediagram med tre variabler**

Behold oppsettet for stablet stolpediagram, men legg den tredje variabelen i «Layers».

Bildebeskrivelse: Tre paneler med stablede stolpediagram, ett for hvert kjønn. Hvert panel har fire stolper, én per land, som hver summerer til 100 prosent og er delt i fargede segmenter for verdiene av Forventet utdanning.

Figur 6.4. Stablet stolpediagram av *Forventet utdanning* for hvert *Land* og *Kjønn*. Hver stolpe summerer til 100 %.

For å oppsummere: Analyse av sammenhengen mellom to kategoriske variabler betyr å gjøre en undergruppeanalyse der den ene variablen bestemmer undergruppene. Resultatene kan framstilles enten i en krysstabell eller som flere stolpediagram ved siden av hverandre. Stablede stolpediagram gir en kompakt framstilling av andeler, som ofte er det mest relevante i slike analyser.

## 6.2 Kategorisk × kontinuerlig

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-cat-cont*

Hva om du vil analysere sammenhengen mellom en *kontinuerlig* variabel og en kategorisk variabel? For eksempel vil en analyse av *Land* og *Likestilling* vise om elever fra ulike land svarer forskjellig på variabelen *Likestilling*. I likhet med forrige delkapittel er det bare å lage deskriptiv statistikk *separat for hver gruppe*, der gruppen er definert av den kategoriske variabelen, akkurat som i krysstabellen og stolpediagrammene i forrige delkapittel.

### 6.2.1 Sentraltendens og spredning per gruppe

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-subgroup*

Egentlig er dette å regne sentraltendens og spredning per gruppe det samme grepet som vi allerede gjorde med krysstabellen ([Tabell 6.2](https://kvant.roarstovner.no/sec-associations.html#tbl-associations-contingency)) og de grupperte stolpediagrammene ([Figur 6.1](https://kvant.roarstovner.no/sec-associations.html#fig-associations-bar-subgroups)): vi splittet dataene etter en kategorisk variabel og tok for oss hvert utsnitt for seg. Forskjellen nå er at det vi regner ut innenfor hver gruppe er gjennomsnitt, median og standardavvik, ikke antall eller andel. Det hadde for eksempel vært interessant å vite om de spanske og norske elevene svarer forskjellig på variabelen *Likestilling*, eller om de som ser for seg høyere utdanning svarer forskjellig fra de som ser for seg å avslutte utdanningen etter videregående. Slike spørsmål er svært interessante, og derfor er undergruppeanalyser ofte det masterstudenter og andre forskere benytter til å besvare forskningsspørsmålene sine.

Undergruppene vi kan undersøke er nettopp de forskjellige verdiene til de tre kategoriske variablene fra [Tabell 6.1](https://kvant.roarstovner.no/sec-associations.html#tbl-associations-codebook): *Land*, *Forventet utdanning* og *Kjønn*. En måte å tenke på verdiene til nominelle og ordinale variabler er altså som undergrupper.

> Å gjøre deskriptiv statistikk for undergrupper er å gjøre utregningene separat for hver verdi av en kategorisk variabel.

For å regne ut deskriptiv statistikk separat for «Gutt», «Jente» og «Annet», må vi dele opp dataene etter verdiene i variabelen *Kjønn*. Resultatet ser du i [Tabell 6.3](https://kvant.roarstovner.no/sec-associations.html#tbl-associations-equality-x-gender).

**Tips — I jamovi: deskriptiv statistikk per undergruppe**

Analyses → Exploration → Descriptives. Legg variabelen i «Variables» og gruppevariabelen i «Split by».

| Kjønn | N | Gjennomsnitt | Median | SD |
|-------|-------|--------------|--------|------|
| Jente | 8 317 | 58,2 | 65,7 | 9,6 |
| Gutt | 7 992 | 48,4 | 46,8 | 10,9 |
| Annet | 164 | 50,3 | 49,4 | 13,5 |

Tabell 6.3. Deskriptiv statistikk for *Likestilling* separat for hver verdi av *Kjønn*.

I [Tabell 6.3](https://kvant.roarstovner.no/sec-associations.html#tbl-associations-equality-x-gender) ser vi at jentene har mye høyere gjennomsnittskår på *Likestilling* enn guttene, 58,2 mot 48,4. De som oppga «Annet», ligger nærmere guttene, med et gjennomsnitt på 50,3. Jentene har dessuten litt mindre standardavvik enn guttene, 9,6 mot 10,9, mens de som oppga «Annet» har mer sprikende svar (SD = 13,5). Bildet er det samme for alle tre gruppene om vi heller ser på medianen og kvartilbredden enn gjennomsnittet og standardavviket.

Vi kan også undersøke om det er forskjell mellom landene for hvert kjønn. Da gjør vi undergruppeanalysen inndelt etter både *Kjønn* og *Land*, se [Tabell 6.4](https://kvant.roarstovner.no/sec-associations.html#tbl-associations-equality-x-gender-country).

| Land | Kjønn | N | Gjennomsnitt | Median | SD |
|--------|-------|-------|--------------|--------|------|
| Norge | Jente | 2 281 | 61,6 | 65,7 | 8,0 |
| Norge | Gutt | 2 264 | 49,5 | 46,8 | 11,5 |
| Norge | Annet | 95 | 50,0 | 49,4 | 13,7 |
| Spania | Jente | 1 475 | 59,3 | 65,7 | 9,2 |
| Spania | Gutt | 1 467 | 51,0 | 49,4 | 10,7 |
| Spania | Annet | 69 | 50,7 | 52,7 | 13,4 |
| Polen | Jente | 2 220 | 57,5 | 57,1 | 8,7 |
| Polen | Gutt | 1 998 | 44,6 | 42,6 | 10,0 |
| Polen | Annet | 0 | — | — | — |
| Brasil | Jente | 2 341 | 54,8 | 57,1 | 10,7 |
| Brasil | Gutt | 2 263 | 49,1 | 46,8 | 10,5 |
| Brasil | Annet | 0 | — | — | — |

Tabell 6.4. Deskriptiv statistikk for *Likestilling* separat for hver kombinasjon av *Land* og *Kjønn*. Polen og Brasil har ingen elever som har oppgitt *Annet* kjønn.

Mønsteret fra [Tabell 6.3](https://kvant.roarstovner.no/sec-associations.html#tbl-associations-equality-x-gender) går igjen i alle land: jentene har høyere gjennomsnittskår på *Likestilling* enn guttene. Men det er noen interessante variasjoner. De norske jentene er mer for likestilling enn de spanske (61,6 mot 59,3), mens de norske guttene er *mindre* for likestilling enn de spanske guttene (49,5 mot 51,0). Polske gutter ligger lavest av alle med et gjennomsnitt på 44,6. Men vær forsiktig med å tolke resultatet: dette er forskjeller mellom gjennomsnitt i ett utvalg, og noen av forskjellene kan være tilfeldige. Mer om dette i [Kapittel 7](https://kvant.roarstovner.no/sec-inferential.html).

Når man deler inn i undergrupper på denne måten, kan det være at enkelte undergrupper har svært få eller ingen respondenter. ICCS-utvalget fra Polen og Brasil inneholder ingen elever som har oppgitt «Annet» kjønn, og selv i Norge og Spania er gruppen liten (henholdsvis 95 og 69 respondenter). Det er fremdeles mange nok til at det gir mening å regne gjennomsnitt der vi har dem, men andre ganger vil det være like greit å si at man ikke har mange nok respondenter til å gjøre en undergruppeanalyse for akkurat den gruppen. Merk at dette er et etisk dilemma for forskere: hvis forskning skal gagne mennesker, er det et problem om noen grupper mennesker systematisk blir utelatt fordi de er for små til å analyseres.

### 6.2.2 Boksplott og histogrammer per gruppe

*Lenke: https://kvant.roarstovner.no/sec-associations.html#boksplott-og-histogrammer-per-gruppe*

Undergruppeanalyse med tall er nyttig, men en visualisering gjør sammenhengen mye tydeligere. Du lærte i [Kapittel 5](https://kvant.roarstovner.no/sec-descriptive.html) at boksplott og histogrammer egner seg godt for kontinuerlige variabler, og ved å dele dataene inn i undergrupper får vi automatisk ett plott per gruppe.

**Tips — I jamovi: boksplott eller histogram per undergruppe**

Analyses → Exploration → Descriptives. Legg variabelen i «Variables», åpne «Plots» og kryss av for «Box plot» eller «Histogram». Legg gruppevariabelen i «Split by».

Se [Figur 6.5](https://kvant.roarstovner.no/sec-associations.html#fig-associations-equ-x-edu) for en sammenlikning av visualisering med henholdsvis histogram og boksplott. Det er vanskelig å sammenlikne undergruppene med histogrammet fordi det er forskjellig antall observasjoner i hver søyle, men i boksplottet ser vi klart at elever som ser for seg *Høyere utdanning* er mer for likestilling enn elever med lavere utdanningsambisjoner. Forskjellen kommer kanskje tydeligst frem ved å titte på medianen, den svarte streken i midten av boksen.

Bildebeskrivelse: Fire histogrammer av Likestilling stablet vertikalt, ett for hvert forventet utdanningsnivå. Alle har omtrent samme form, med en lang hale av lave verdier og en topp i øvre del av skalaen, men panelene for Ungdomsskole og Kort utdanning er nesten flate fordi de deler y-akse med det mye større Høyere utdanning-panelet.

(a) Med histogrammet er det vanskelig å se forskjell på gruppene.

Bildebeskrivelse: Fire vertikale boksplott av Likestilling, ett for hvert forventet utdanningsnivå. Medianen for Høyere utdanning ligger klart over de tre andre gruppene, som ligger på omtrent samme nivå.

(b) Med boksplott kommer forskjellen tydelig frem; særlig at *Høyere utdanning* ligger høyere enn de andre gruppene.

Figur 6.5. Sammenlikning av histogram og boksplott for å vise variabelen *Likestilling* for hvert forventede utdanningsnivå.

For å oppsummere: Å analysere sammenhengen mellom en kategorisk og en kontinuerlig variabel er en undergruppeanalyse, men det vi regner ut innenfor hver gruppe er sentraltendens og spredning i stedet for antall. Resultatet kan vises som tabell eller som ett boksplott per gruppe. Boksplottet er som regel et bedre visuelt valg enn histogrammet, fordi det lar oss sammenligne medianer direkte og gir en tydelig framstilling som ikke påvirkes like mye av ulik gruppestørrelse.

## 6.3 Kontinuerlig × kontinuerlig

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-cont-cont*

Hva om begge variablene er kontinuerlige? Da kan vi ikke dele inn i grupper, siden det ville bli altfor mange. I stedet bruker vi spredningsplott og korrelasjon.

### 6.3.1 Spredningsplott

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-scatter*

**Spredningsplott** viser sammenhengen mellom to tallvariabler. ICCS-datasettet vårt har fire kontinuerlige variabler (se [Tabell 6.1](https://kvant.roarstovner.no/sec-associations.html#tbl-associations-codebook)); to av dem er *Demokratikunnskap* og *Likestilling*. *Demokratikunnskap* er hovedvariabelen i ICCS, og måler elevenes kunnskap om demokrati og samfunn, for eksempel hvordan lover blir til, hva som kjennetegner frie valg, og hvilke rettigheter og plikter innbyggere har. Et naturlig spørsmål å stille er om elever som kan mer om demokrati og samfunn også svarer annerledes på spørsmål om likestilling mellom kjønnene.

Hvis man skulle analysere dette på samme måte som for de kategoriske variablene, måtte man gjort en undergruppeanalyse av *Likestilling* der gruppene er definert av de ulike verdiene av *Demokratikunnskap*. Men fordi *Demokratikunnskap* er satt sammen av mange enkeltspørsmål, har den 15817 ulike verdier, og da ville man støtt på problemer. Man kan ikke vise så mange undergrupper!

Løsningen er å legge hver sin variabel på hver sin akse og plotte hver elev som ett punkt: elevens *Demokratikunnskap* bestemmer hvor langt til høyre punktet ligger, og elevens *Likestilling* hvor langt opp. [Figur 6.6](https://kvant.roarstovner.no/sec-associations.html#fig-associations-scatter-howto) viser prinsippet for noen få elever.

Bildebeskrivelse: Et spredningsplott med tolv punkter. Ett punkt er markert med en rød ring og merket 'én elev'. Fra dette punktet går det en stiplet pil loddrett ned til x-aksen, der verdien for Demokratikunnskap er markert, og en stiplet pil vannrett bort til y-aksen, der verdien for Likestilling er markert.

Figur 6.6. Slik leser du et spredningsplott: hvert punkt er én elev, og elevens verdi på hver variabel leser vi av ved å følge punktet loddrett ned til x-aksen (*Demokratikunnskap*) og vannrett bort til y-aksen (*Likestilling*). Her er bare tolv elever tegnet inn, slik at hvert punkt er lett å se.

Gjør vi dette for alle de rundt 16 000 elevene, får vi [Figur 6.7](https://kvant.roarstovner.no/sec-associations.html#fig-associations-scatter). Vi ser en tendens til at punkter som ligger lengre til høyre også ligger litt lenger opp. Dette betyr at elever med høyere *Demokratikunnskap* i større grad mener det skal være *Likestilling* mellom kjønnene.

**Tips — I jamovi: lage et spredningsplott**

Analyses → Exploration → Scatterplot. Legg én variabel i «X-Axis» og én i «Y-Axis».

Bildebeskrivelse: Et spredningsplott med Demokratikunnskap på x-aksen og Likestilling på y-aksen. En tett, mørk horisontal stripe ligger langs hele toppen, og ellers er punktene jevnt spredt utover skyen, med en svak tendens til at høyere Demokratikunnskap følges av høyere Likestilling.

Figur 6.7. Spredningsplott over *Demokratikunnskap* og *Likestilling*. Hvert punkt er en elev; den mørke randen langs toppen viser at svært mange elever har høyest mulig skår på *Likestilling*.

Spredningsplottet antyder en sammenheng ved at punktskyen trekker svakt oppover mot høyre, men det er vanskelig å si *hvor sterk* sammenhengen er. Er den sterk, moderat eller svak? For å avgjøre det trenger vi et tall som oppsummerer styrken. Det tallet er korrelasjonskoeffisienten.

### 6.3.2 Korrelasjonskoeffisienten

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-correlation-coefficient*

**Korrelasjonskoeffisienten** kalles mer presist Pearsons korrelasjonskoeffisient og skrives som r. Det er et tall mellom -1 og 1 som måler styrken og retningen på sammenhengen mellom to variabler, X og Y.

- En r = 1 betyr en perfekt positiv lineær sammenheng.
- En r = -1 betyr en perfekt negativ lineær sammenheng.
- En r = 0 betyr at det ikke er noen lineær sammenheng i det hele tatt.

Hvordan ser ulike korrelasjoner ut? [Figur 6.8](https://kvant.roarstovner.no/sec-associations.html#fig-associations-correlation-examples) viser eksempler. Disse punktskyene er ikke hentet fra virkelige observasjoner, de er *simulerte* slik at vi kan vise nøyaktige verdier av r i pene spredningsplott.

Bildebeskrivelse: Spredningsplott med varierende grad av positiv og negativ korrelasjon. Positive korrelasjoner: 0, 0.33, 0.66 og 1. Negative korrelasjoner: 0, -0.33, -0.66 og -1. 0 viser ingen korrelasjon, og 1 og -1 viser perfekte korrelasjoner.

Figur 6.8. Illustrasjon av effekten av å variere styrken og retningen på en korrelasjon. I venstre kolonne er korrelasjonene 0; 0{,}33; 0{,}66 og 1. I høyre kolonne er korrelasjonene 0; -0{,}33; -0{,}66 og -1.

Korrelasjonen måler altså i hvor stor grad punktene faller på en rett linje. Jo nærmere r ligger ± 1, jo tettere samler punktene seg rundt linja. Jo nærmere r er 0, jo mer ser plottet ut som en sky uten retning. Merk at r ikke viser hvor bratt linja er, den viser bare hvor tett punktene ligger rundt linja.

### 6.3.3 Styrke og retning i ekte data

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-correlation-strength*

Stiliserte plott er rene og tydelige, men ekte data ser sjelden så pene ut. Nå vender vi tilbake til ICCS og bruker korrelasjonskoeffisienten r til å sammenligne ekte korrelasjoner. I figurene som følger, har vi regnet ut den rette linja som best viser sammenhengen mellom variablene fordi det gjør det lettere å se hellingen i en rotete punktsky. For å vise ulike sammenhenger henter vi inn enda en variabel fra ICCS, nemlig *Sosioøkonomisk status* som er en samlevariabel for utdanningen, inntekten og yrket til elevenes foresatte.

**Styrken** ser vi best ved å sammenligne to plott der retningen er den samme. I [Figur 6.9](https://kvant.roarstovner.no/sec-associations.html#fig-associations-scatter-strength) står *Sosioøkonomisk status* × *Likestilling* (r = 0{,}18) til venstre og *Demokratikunnskap* × *Likestilling* (r = 0{,}44) til høyre. Begge er positive, men korrelasjonen til høyre er omtrent dobbelt så sterk. Det vises ved at punktene samler seg tettere rundt linja, ikke ved at linja er brattere. Sammenligner du med de stiliserte plottene i [Figur 6.8](https://kvant.roarstovner.no/sec-associations.html#fig-associations-correlation-examples), ser du raskt at de ekte dataene ser helt annerledes ut og at det ikke er enkelt å se i hvilket spredningsplott sammenhengen mellom variablene er sterkest. Slik er det med ekte data, så da er det godt å ha et tall som kan måle det for oss.

Bildebeskrivelse: To spredningsplott side om side, begge med Likestilling på y-aksen. Det venstre har Sosioøkonomisk status på x-aksen, undertittel r = 0,18, og regresjonslinja heller bare svakt oppover. Det høyre har Demokratikunnskap på x-aksen, undertittel r = 0,44, og regresjonslinja heller tydelig brattere oppover.

Figur 6.9. Sammenligning av to positive sammenhenger med ulik styrke. Til venstre *Sosioøkonomisk status* × *Likestilling*; til høyre *Demokratikunnskap* × *Likestilling*. Over hvert plott vises korrelasjonskoeffisienten.

**Retningen** ser vi best ved å bytte ut én av variablene. I [Figur 6.10](https://kvant.roarstovner.no/sec-associations.html#fig-associations-scatter-direction) beholder vi *Demokratikunnskap* på x-aksen, men sammenligner *Likestilling* (r = 0{,}44) til venstre med *Forventet politisk deltakelse* (r = -0{,}23) til høyre. Det viktige er fortegnet. Til venstre heller linja oppover (positiv sammenheng), til høyre heller den nedover (negativ sammenheng). Den negative korrelasjonen er overraskende, for den betyr jo at elever som kan mer om demokrati forventer å delta *mindre* politisk! Det er et resultat vi kommer tilbake til i [Seksjon 6.4.4](https://kvant.roarstovner.no/sec-associations.html#sec-associations-simpson).

Bildebeskrivelse: To spredningsplott side om side, begge med Demokratikunnskap på x-aksen. Det venstre har Likestilling på y-aksen, undertittel r = 0,44, og linja heller oppover. Det høyre har Forventet politisk deltakelse på y-aksen, undertittel r = -0,23, og linja heller nedover.

Figur 6.10. Sammenligning av en positiv og en negativ sammenheng, med *Demokratikunnskap* på x-aksen i begge. Til venstre *Likestilling* på y-aksen; til høyre *Forventet politisk deltakelse*. Over hvert plott vises korrelasjonskoeffisienten.

### 6.3.4 Korrelasjonsmatrise

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-correlation-matrix*

Vi har nå sett på tre par av variabler og lest av r for hvert par. Når vi vil sammenligne korrelasjoner for mange variabler samtidig, er det vanlig å samle alle korrelasjonene i én tabell, en **korrelasjonsmatrise**. [Tabell 6.5](https://kvant.roarstovner.no/sec-associations.html#tbl-associations-correlation-matrix) viser matrisen for de fire ICCS-variablene vi har jobbet med: *Demokratikunnskap*, *Likestilling*, *Sosioøkonomisk status* og *Forventet politisk deltakelse*.

**Tips — I jamovi: lage en korrelasjonsmatrise**

Regression → Correlation Matrix. Legg de kontinuerlige variablene du vil korrelere i variabelboksen. Pearsons r er valgt som standard.

| | Demokratikunnskap | Likestilling | Sosioøkonomisk status | Forventet politisk deltakelse |
|----|----|----|----|----|
| Demokratikunnskap | 1,00 | | | |
| Likestilling | 0,44 | 1,00 | | |
| Sosioøkonomisk status | 0,39 | 0,18 | 1,00 | |
| Forventet politisk deltakelse | -0,23 | -0,14 | -0,03 | 1,00 |

Tabell 6.5. Korrelasjonsmatrise for fire kontinuerlige ICCS-variabler. Hver celle er Pearsons r mellom variabelen i raden og variabelen i kolonnen.

Hver celle er korrelasjonen mellom variabelen i raden og variabelen i kolonnen. Diagonalen er 1{,}00 fordi en variabel henger perfekt sammen med seg selv, og den øvre halvdelen er tom fordi den ville gjentatt den nedre: korrelasjonen mellom *Likestilling* og *Demokratikunnskap* er den samme som mellom *Demokratikunnskap* og *Likestilling*.

Matrisen bekrefter mønsteret fra [Figur 6.9](https://kvant.roarstovner.no/sec-associations.html#fig-associations-scatter-strength) og [Figur 6.10](https://kvant.roarstovner.no/sec-associations.html#fig-associations-scatter-direction) og legger til to par vi ikke har sett. *Demokratikunnskap* henger positivt sammen med både *Likestilling* (r = 0{,}44) og *Sosioøkonomisk status* (r = 0{,}39); det er de to sterkeste sammenhengene i tabellen. *Forventet politisk deltakelse* skiller seg ut ved å henge negativt sammen med alle de tre andre variablene, sterkest med *Demokratikunnskap* (r = -0{,}23) og svakest med *Sosioøkonomisk status* (r = -0{,}03, som er så nær null at sammenhengen i praksis er fraværende).

## 6.4 Tolkning av deskriptiv statistikk

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-interpretation*

Vi har i disse to kapitlene sett mange måter å beskrive data på, som grovt sett kan deles opp i oppsummerende tall og diagrammer. Resten av kapittelet handler om noen forhold du bør være bevisst på når du leser eller lager slike tall og diagrammer.

### 6.4.1 Hvordan tolke størrelsen på oppsummerende tall?

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-context*

De fleste oppsummerende tall sier lite i seg selv. Tenk for eksempel over at 53,1 % av norske elever i ICCS så for seg å ta høyere utdanning. Er dette tallet høyt eller lite? For å besvare dette må man tolke tallet i kontekst, for eksempel ved å sammenlikne med naboland eller opp mot en eller annen politisk målsetting om hvor mange vi ønsker at skal ta høyere utdanning.

Størrelsen på korrelasjoner kan i hvert fall være vanskelige å tolke. I det virkelige liv ser man sjelden korrelasjoner på 1. Hvordan skal man tolke en korrelasjon på, si, r = 0{,}4? Det ærlige svaret er at det avhenger av hva du skal bruke dataene til, og hvor sterke sammenhengene i fagfeltet ditt pleier å være. Ser man for eksempel etter korrelasjoner mellom undervisning og læring, gjør man det svært bra hvis man får en korrelasjon på 0{,}3, fordi læring påvirkes av så mye annet enn undervisningen at slike sammenhenger er vanskelige å påvise. Men korrelerer man hvor godt en elev gjør det på den samme rettskrivningprøven på mandag og tirsdag, bør korrelasjonen være svært høy. Tolkningen avhenger i stor grad av konteksten.

Egenskaper ved målingen er en del av denne konteksten. Hvis variablene er lite reliable, blir sammenhengen mellom dem svakere enn den «egentlig» er. Det er en av grunnene til at korrelasjoner i utdanningsforskning sjelden er store; se [Kapittel 2](https://kvant.roarstovner.no/sec-measurement.html) for mer om hva som påvirker målekvalitet.

### 6.4.2 Visualiser alltid

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-anscombe*

Jeg kan ikke få sagt det nok: Visualiser dataene før du tolker oppsummerende tall. Grunnen er enkel: Tallene betyr ikke alltid det du tror.

Et klassisk eksempel som viser dette perfekt, er «Anscombes kvartett» ([Anscombe, 1973](https://kvant.roarstovner.no/sec-references.html#ref-Anscombe1973)). Kvartetten består av fire datasett, og hvert av dem har en X- og en Y-variabel. Kvartetten er laget slik at de deskriptive statistikkene er så å si identiske for alle fire:

- Gjennomsnittet for alle X-variablene er 9{,}0 og for alle Y-variablene er 7{,}5.
- Standardavvikene er også praktisk talt like for både X og Y.
- Og for å toppe det hele, er korrelasjonen mellom X og Y i *alle* de fire tilfellene r = 0{,}816.

Dette kan du forresten enkelt sjekke selv, for dataene ligger klare i filen *[anscombe.csv](https://kvant.roarstovner.no/data_and_tables/anscombe.csv)*.

Basert på kun disse tallene skulle man tro at datasettene er nokså like, men det er de absolutt ikke. Først når vi visualiserer dataene som spredningsplott, slik du ser i [Figur 6.11](https://kvant.roarstovner.no/sec-associations.html#fig-associations-anscombe), avsløres sannheten: De fire datasettene er helt ulike. Da skjønner vi hvorfor mange statistikere har følgende leveregel, som mange dessverre glemmer i praksis:

> **Visualiser alltid dataene dine!**

Bildebeskrivelse: Fire spredningsplott som viser samme positive korrelasjon mellom x og y. De fire plottene illustrerer henholdsvis en lineær sammenheng, en ikke-lineær sammenheng, en avviksverdi og en innflytelsesrik observasjon.

Figur 6.11. Spredningsplott for Anscombes kvartett. Alle fire datasettene har en Pearson-korrelasjon på r = 0,816, men de er likevel svært forskjellige fra hverandre.

### 6.4.3 Gruppestatistikk er ikke individstatistikk

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-ecological*

Når vi rapporterer et gjennomsnitt for en gruppe, er det fristende å lese tallet som om det beskriver den typiske personen i gruppa. Men gjennomsnittet er en oppsummering av mange ulike individer, ikke en beskrivelse av noen enkelt av dem. Å forveksle de to nivåene kalles en **økologisk feilslutning**.[^1]

Tenk på en setning som «Norge skårer rundt 490 på PISA i lesing». Det betyr ikke at «den typiske norske 15-åringen skårer rundt 490». Det betyr at *gjennomsnittet* over alle norske 15-åringer er omtrent 490, mens enkeltelevene fordeler seg over et stort spenn rundt det tallet. Standardavviket er nettopp et mål på hvor lite «typisk» gjennomsnittet er for et tilfeldig enkeltindivid.

Samme logikk gjelder mange steder i utdanningssystemet. Klassegjennomsnittet på en prøve forteller deg ikke karakteren hvert individ fikk. Skolegjennomsnittet forteller deg ikke hvilken klasse som drar snittet opp eller ned. Det er greit å sammenligne grupper med grupper, men ikke å hente ut en påstand om enkeltindivider fra et grupperesultat.

Vi har sett dette i ICCS-tallene allerede. Det landsgjennomsnittet på variabelen *Likestilling* skjuler at jenter og gutter svarer ganske forskjellig ([Tabell 6.4](https://kvant.roarstovner.no/sec-associations.html#tbl-associations-equality-x-gender-country)). Stopper man ved landgjennomsnittet, mister man at norske elever er en heterogen gruppe.

Og noen ganger blir det enda verre, for sammenhengen mellom to variabler kan endre seg, eller til og med snu, når vi undersøker undergrupper. Det skal vi se på nå.

### 6.4.4 Sammenhenger kan endre seg i undergrupper

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-simpson*

I [Seksjon 6.3.3](https://kvant.roarstovner.no/sec-associations.html#sec-associations-correlation-strength) så vi at korrelasjonen mellom *Demokratikunnskap* og *Forventet politisk deltakelse* var negativ (r = -0{,}23): elever som vet mer om demokrati, forventer å delta *mindre* politisk. Hmm, snodig. Men se hva som skjer hvis vi regner korrelasjonen separat for hvert land, [Tabell 6.6](https://kvant.roarstovner.no/sec-associations.html#tbl-associations-simpson).

| Land | N | r |
|-----------|--------|-------|
| Alle land | 16 473 | -0,23 |
| Norge | 4 640 | -0,10 |
| Spania | 3 011 | -0,13 |
| Polen | 4 218 | -0,11 |
| Brasil | 4 604 | -0,31 |

Tabell 6.6. Korrelasjon mellom *Demokratikunnskap* og *Forventet politisk deltakelse* totalt og innenfor hvert land.

Korrelasjonen er fortsatt svakt negativ, men den er mye svakere innenfor hvert land enn det er totalt. Hvordan kan det henge sammen?

Forklaringen ligger i Brasil. Brasilianske elever har lavest gjennomsnittlig *Demokratikunnskap* av de fire landene, men høyest *Forventet politisk deltakelse*. Når vi regner korrelasjonen med alle elevene sammen, drar denne forskjellen *mellom* land korrelasjonen tydelig nedover. Sammenhengen *innenfor* hvert land (altså om en elev som vet mer enn klassekameraten sin også tenker hun skal delta mer politisk) er langt svakere.

Dette er et eksempel på et mer generelt poeng: en samlet korrelasjon kan være drevet av forskjeller mellom undergrupper, ikke av sammenhengen innenfor undergruppene. I ekstreme tilfeller snur korrelasjonen fortegn når man studerer undergruppene hver for seg; det kalles **Simpson-paradokset**, og du så et eksempel på dette allerede i [Kapittel 1](https://kvant.roarstovner.no/sec-why-statistics.html) med opptaksdata fra Berkeley-universitetet.

### 6.4.5 Sammenheng er ikke kausalitet

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-causation*

Jeg må minne om lærdommen fra [Seksjon 3.4](https://kvant.roarstovner.no/sec-design.html#sec-correlation-causality), nemlig at korrelasjon ikke er kausalitet. Selv om variabelen *Demokratikunnskap* hang positivt sammen med *Likestilling* (r = 0{,}44), betyr det ikke at vi kan endre elevers syn på likestilling ved å heve demokratikunnskapene deres. Faktisk bør du kunne navngi grunner til at vi ikke kan trekke denne kausale slutningen.

### 6.4.6 Teorien velger hva vi ser etter

*Lenke: https://kvant.roarstovner.no/sec-associations.html#sec-associations-theory*

Det er ikke dataene som forteller oss hvilke par av variabler det er interessant å sammenligne, det gjør forskningsspørsmålet vårt og teorien vår. Med teori mener vi her forestillingene våre om hvilke begreper som kan henge sammen og hvorfor; den gir føringer for hva vi ser etter og hvordan vi analyserer dataene. Vi regnet korrelasjonen mellom *Forventet utdanning* og *Land* fordi vi hadde en forestilling om at landenes skoletradisjoner påvirket om elevene ser for seg å ta høyere utdanning, ikke fordi datasettet ba oss om det. Tester man derimot «alt mot alt» i et stort datasett, finner man nesten alltid sammenhenger ved ren tilfeldighet, og slike funn betyr lite. Selv om noe finnes i dataene, betyr ikke det at det er sant; du må ikke lytte utelukkende til dataene, slik vi advarte i [Kapittel 1](https://kvant.roarstovner.no/sec-why-statistics.html), for forskningsspørsmål og teori spiller en avgjørende rolle.

## 6.5 Oppsummering

*Lenke: https://kvant.roarstovner.no/sec-associations.html#oppsummering*

Deskriptiv statistikk kan fortelle deg om enkeltvariabler i dataene ([Kapittel 5](https://kvant.roarstovner.no/sec-descriptive.html)), men også om sammenhenger mellom variabler (dette kapittelet). I dette kapittelet har vi sett at man undersøker sammenhenger forskjellig avhengig av variabeltypen:

- **Kategorisk × kategorisk**: Bruk [krysstabeller](https://kvant.roarstovner.no/sec-associations.html#sec-associations-contingency) eller [stablede stolpediagram](https://kvant.roarstovner.no/sec-associations.html#sec-associations-stacked-bar).
- **Kategorisk × kontinuerlig**: Bruk [sentraltendens og spredningsmål per gruppe](https://kvant.roarstovner.no/sec-associations.html#sec-associations-subgroup), eller [boksplott og histogram per gruppe](https://kvant.roarstovner.no/sec-associations.html#boksplott-og-histogrammer-per-gruppe) for å vise forskjellene visuelt.
- **Kontinuerlig × kontinuerlig**: Bruk [spredningsplott](https://kvant.roarstovner.no/sec-associations.html#sec-associations-scatter) for å visualisere sammenhengen, og [korrelasjonskoeffisienten](https://kvant.roarstovner.no/sec-associations.html#sec-associations-correlation-coefficient) for å beskrive styrken og retningen med et tall.

Tallene og diagrammene er bare oppsummeringer. [Tolkning av deskriptiv statistikk](https://kvant.roarstovner.no/sec-associations.html#sec-associations-interpretation) minner deg om noen forhold som er lette å glemme: Tolkningen avhenger av konteksten. Du må alltid visualisere dataene, et gruppegjennomsnitt sier lite om enkeltindivider, en sammenheng mellom variabler kan endre seg i undergrupper, en sammenheng er ikke det samme som en årsakssammenheng, og det er forskningsspørsmålet og teorien (ikke dataene) som bør styre hvilke variabler du undersøker.

Anscombe, F. J. (1973). Graphs in Statistical Analysis. *American Statistician*, *27*, 17–21. <https://doi.org/10.1080/00031305.1973.10478966>

[^1]: Ingen gir dårligere navn enn statistikere. Hvorfor kalle det en *økologisk* feilslutning når det ikke har noe med økologi å gjøre? Hvor er økosystemene, liksom? Jeg velger å tenke at informasjon om økologien (økosystemet) ikke gir presis informasjon om individene, for da passer navnet litt.
