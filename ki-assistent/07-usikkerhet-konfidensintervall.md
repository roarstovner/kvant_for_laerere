# Kapittel 7. Usikkerhet og konfidensintervall

Fra læreboka *Kvantitativ metode for lærere* av Roar Bakken Stovner (2026-utgaven).
Nettversjon av dette kapittelet: https://kvant.roarstovner.no/sec-inferential.html
Hele boka: https://kvant.roarstovner.no/

---

> *\[God\] has afforded us only the twilight … of Probability.*\
> – John Locke

I de foregående kapitlene har vi beskrevet dataene våre ved å regne ut gjennomsnitt og andre oppsummerende tall og laget figurer. Men forskere ønsker nesten alltid å si noe som går *utover* dataene vi faktisk har samlet inn. Da trenger vi **inferensiell statistikk**, og det møter du faktisk oftere enn du tror.

Samme dag som jeg skriver dette, våren 2025, er hovedoppslagene i media en ny meningsmåling der 28% av 1000 respondenter svarer at, om det hadde vært valg i dag, så hadde de stemt på Arbeiderpartiet. Dette viser at Arbeiderpartiet ligger an til å gjøre et godt valg, fortelles det. Ser du at dette går forbi deskriptiv statistikk? At 280 av 1000 personer svarte at de ville stemme Arbeiderpartiet betyr ikke at de vil gjøre et godt valg, for Arbeiderpartiet trenger mange flere stemmer enn 280 for å gjøre det godt. Media antar at disse 1000 personene sier noe om de 4 350 000 andre stemmeberettigede i Norge også. Dette krever inferensiell statistikk: Ved å spørre 0,02% av populasjonen kan man finne ut noe om de resterende 99,98%.

Dette kapittelet handler kun om et spørsmål fra inferensiell statistikk: Hvor godt kan man estimere gjennomsnittsverdien i en populasjon fra et utvalg? Å *estimere* betyr å anslå størrelsen på noe. Når vi estimerer gjennomsnittet i populasjonen, forsøker vi altså å finne et tall på hvor stort gjennomsnittet er. Problemet med å estimere gjennomsnittet i populasjonen er at estimatet ville blitt annerledes med et annet utvalg.

Målet med kapittelet er å skjønne begrepet **standardfeil**. Deretter er det forholdsvis enkelt å skjønne hva et **konfidensintervall** er. Med disse begrepene vil du kunne forstå flere resultater i forskningsartikler, samt skjønne magien [^1] statistikere støtter seg til når de uttaler seg sikkert om populasjonen uten å ha samlet noe særlig data fra den. Det vil også gjøre det lettere for deg å forstå statistisk hypotesetesting, noe de fleste innføringsbøker i kvantitativ metode bruker mye plass på, men som jeg ikke ser meg tjent med i denne sammenhengen.

**Tips — Men jeg ønsker å lære om statistisk hypotesetesting!**

Statistisk hypotesetesting er en metode som bruker data og beregninger til å vurdere om en antakelse om en populasjon kan forkastes. Et eksempel på en slik antakelse er at «gutter og jenter har lik lesehastiget i populasjonen». Noen lærerutdannere (og kanskje noen studenter) ønsker gjerne å dekke hypotesetesting i innføringskurs i kvantitative metoder. Argumentene *for* å lære om hypotesetesting er at det opptrer svært ofte i forskningslitteraturen og at noen sensorer kanskje vil forvente hypotesetesting i en kvantitativ masteroppgave. Argumentene *mot* er svært mye bedre.

- statistisk hypotesetesting passer til *svært* få forskningsspørsmål
- statistisk hypotesetesting blir svært ofte misforstått av studenter, forskere ([Lytsy et al., 2022](https://kvant.roarstovner.no/sec-references.html#ref-lytsy2022)) og lærebokforfattere i kvantitativ metode ([Cassidy et al., 2019](https://kvant.roarstovner.no/sec-references.html#ref-cassidy2019))
- statistisk hypotesetesting innbyr til tanketom bruk ([Gigerenzer, 2018](https://kvant.roarstovner.no/sec-references.html#ref-gigerenzer2018))
- å lære om andre ting (utvalgsfordeling og standardfeil) gjør deg bedre rustet til å lære annen statistikk

Statistisk hypotesetesting er så ofte misbrukt at foreningen for amerikanske statistikere advarer mot å bruke det ([Wasserstein & Lazar, 2016](https://kvant.roarstovner.no/sec-references.html#ref-wasserstein2016)).

## 7.1 Fire typer usikkerhet

*Lenke: https://kvant.roarstovner.no/sec-inferential.html#sec-inf-typer-usikkerhet*

Når en forsker rapporterer et resultat, er det alltid beheftet med usikkerhet. Det er sikkert en million forskjellige kilder til usikkerhet, og for oss vil det være nyttig å skille mellom minst fire:

- **Måleusikkerhet.** Måleinstrumentene våre er aldri perfekte. En lesehastighetsprøve fanger ikke opp lesehastighet helt presist; dagsform, konsentrasjon og tilfeldigheter ved akkurat den teksten eleven leser, spiller inn. Vi drøftet dette i [Kapittel 2](https://kvant.roarstovner.no/sec-measurement.html).
- **Modellusikkerhet.** Når vi analyserer data, gjør vi en rekke antakelser: at utvalget er tilfeldig, at en effekt er den samme for alle, og så videre. Hvis antakelsene ikke stemmer overens med virkeligheten, er også konklusjonene usikre.
- **Utvalgsusikkerhet.** Vi har bare et utvalg, ikke hele populasjonen, og et annet utvalg ville gitt et annet estimat.
- **Tilordningsusikkerhet.** I eksperimenter fordeles deltakerne tilfeldig på en intervensjons- og en kontrollgruppe. Da vil den tilfeldige tilordningen være en kilde til usikkerhet: En annen tilfeldig inndeling av de *samme* deltakerne ville gitt et litt annet resultat. Dette ligner utvalgsusikkerheten, men oppstår under prosessen med gruppetilordning, ikke utvalg.

Vi skal lære inferensiell statistikk som tar hensyn til de to siste usikkerhetene, utvalgs- og tilordningsusikkerhet. Men begrepene du lærer, standardfeil og konfidensintervall, gjelder ikke bare dem; de vil være grunnlag for å lære mye annen statistikk også. Måle- og modellusikkerheten ser vi bort fra, slik det dessverre ofte gjøres i utdanningsforskning. Selvsagt er det usikkerhet i målingene og selvsagt er det usikkerhet i de statistiske modellene, men det tas for sjeldent hensyn til disse usikkerhetene. Grunnen er neppe at forskerne ikke vet om dem, men at det ikke er del av vanlig statistisk praksis, og at det krever mer faglig skjønn enn en formel kan gi.

## 7.2 Populasjonsparametre og observatorer

*Lenke: https://kvant.roarstovner.no/sec-inferential.html#sec-inf-populasjon*

Gjennom hele kapittelet skal vi bruke estimering av lesehastighet som eksempel. Konstruktet er altså lesehastighet, og vi skal måle den i antall ord per minutt. Lesehastighet måles i de svært mye brukte Carlstenprøvene, som finnes i varianter fra 1. til 10. trinn. Carlstenprøven benyttes i nesten 80% av norske barneskoler ([Arnesen et al., 2019](https://kvant.roarstovner.no/sec-references.html#ref-arnesen2019)). Jeg husker selv at jeg tok denne prøven på barneskolen. Hele klassen ble bedt om å lese i et lesehefte, læreren sa fra når vi skulle stoppe å lese, vi markerte hvor langt vi kom med en strek, og så svarte vi på spørsmål om teksten så langt vi var kommet. I likhet med nesten alle kartleggingsprøvene som benyttes i norsk skole, har Carlstenprøven ingen informasjon om validitet og reliabilitet, og ingen studier har undersøkt dette ([Arnesen et al., 2019](https://kvant.roarstovner.no/sec-references.html#ref-arnesen2019)).

Vi tenker oss en forskergruppe som vil estimere den gjennomsnittlige lesehastigheten for alle norske 4.-klassinger. [^2] Prosessen vi nå skal forstå, er vist i [Figur 7.1](https://kvant.roarstovner.no/sec-inferential.html#fig-inferential-estimate), som er en presisering av [Figur 3.3](https://kvant.roarstovner.no/sec-design.html#fig-design-sampling).

[Figur uten tekstbeskrivelse; se figuren i nettversjonen av boka.]

Figur 7.1. Logikken bak estimering av populasjonsparametre

Populasjonen er hele gruppa forskerne vil si noe om, altså alle norske 4.-klassinger. For å beskrive den bruker statistikere en **fordeling**: en kurve som viser hvilke lesehastigheter som er vanlige blant disse elevene, og hvilke som er sjeldne. Egenskapene ved denne fordelingen kalles **populasjonsparametre**. De to viktigste er populasjonsgjennomsnittet og populasjonsstandardavviket. Disse kjenner forskerne ikke, og det er nettopp dem de vil finne ut av.

Siden forskerne ikke kan teste alle de rundt 60 000 fjerdeklassingene, trekker de et utvalg og gir dem Carlstenprøven. Da får de mange størrelser de *kan* regne ut, slik som gjennomsnittet og standardavviket i utvalget sitt. Slike størrelser, som beregnes fra dataene, kalles **observatorer**. Observatorene ligner gjerne på populasjonsparametrene, men de er ikke de samme. Vi benytter altså observatorene til å anslå populasjonsparametrene.

> Populasjonsparametre beskriver *populasjonen*. Observatorer beskriver *utvalget*.

Det vi skal lære nå, er den siste pila i [Figur 7.1](https://kvant.roarstovner.no/sec-inferential.html#fig-inferential-estimate), hvordan man estimerer populasjonsparametre. Vi skal også lære hvordan man estimerer utvalgsusikkerheten. (Og for ordens skyld: Legg merke til at figuren ikke nevner måleusikkerhet eller andre former for usikkerhet. Livet som utdanningsforsker blir mer komfortabelt hvis man bare lukker øyene for slikt.)

## 7.3 Populasjonsfordelingen og utvalg trukket fra den

*Lenke: https://kvant.roarstovner.no/sec-inferential.html#sec-inf-populasjonsfordeling*

Til vanlig har man ikke kunnskap om hele populasjonen, men nå, for å forklare estimering av populasjonsparametre, skal vi ha det. Det beste hadde vært om vi hadde et datasett der Carlstenprøven var gitt til hele populasjonen av norske fjerdeklassinger. Da hadde vi kunnet sett hvor godt populasjonsparameteren ble estimert fra et utvalg. Det nest beste hadde vært å simulere et datasett som likner, så det er det jeg har gjort. Dessverre er jeg ikke lesedidaktiker, men jeg har gjort mitt beste for å lage et datasett som virker ekte.

Populasjonsfordelingen til det simulerte datasettet vises i panel (a) i [Figur 7.2](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-population). Legg merke til at fordelingen har to humper. Helt til venstre, nær 0–20 ord/min, er det en liten hump av elever som ennå ikke har knekt lesekoden. Hovedtyngden av elevene leser raskere, med en topp litt over 100 ord/min, men denne humpen er skjev: den har en lengre hale av elever med lavere lesehastighet. [^3]

For å få gode estimater må utvalget være representativt for populasjonen, og den enkleste måten å få til representative utvalg på er ved tilfeldige utvalg. Se [Seksjon 3.6.2](https://kvant.roarstovner.no/sec-design.html#sec-design-simple-random) hvis du trenger å friske opp enkle tilfeldige utvalg. [Figur 7.2](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-population) (b), (c) og (d) viser tre enkle tilfeldige utvalg med forskjellig størrelse. Alle tre har omtrent samme form som populasjonen, men de store utvalgene likner mer på populasjonen enn de små. Gjennomsnittene for utvalgene (observatorene) er vist som en grå vertikal strek og med `M =`. Populasjonsgjennomsnittet er vist i rødt og er 99. Legg merke til at utvalgenes gjennomsnitt blir bedre og bedre estimater på populasjonsgjennomsnittet med større utvalg. For det minste utvalget (n = 10) er gjennomsnittet langt unna populasjonsgjennomsnittet, det mellomste (n = 100) er nære, og det største utvalget (n = 10 000) er nesten eksakt.

Bildebeskrivelse: Fire figurer av lesehastighet. Panel (a) er en glattet fordeling med to topper, en liten nær null og en stor rundt 110 ord per minutt. Panel (b), (c) og (d) er histogrammer av tre utvalg på henholdsvis 10, 100 og 10 000 elever, alle med omtrent samme form. Hvert panel har en rød stiplet loddrett strek på populasjonsgjennomsnittet, og utvalgspanelene har i tillegg en grå strek på utvalgets eget gjennomsnitt

(a) Hele populasjonen

Bildebeskrivelse: Fire figurer av lesehastighet. Panel (a) er en glattet fordeling med to topper, en liten nær null og en stor rundt 110 ord per minutt. Panel (b), (c) og (d) er histogrammer av tre utvalg på henholdsvis 10, 100 og 10 000 elever, alle med omtrent samme form. Hvert panel har en rød stiplet loddrett strek på populasjonsgjennomsnittet, og utvalgspanelene har i tillegg en grå strek på utvalgets eget gjennomsnitt

(b) Utvalg på 10 elever

Bildebeskrivelse: Fire figurer av lesehastighet. Panel (a) er en glattet fordeling med to topper, en liten nær null og en stor rundt 110 ord per minutt. Panel (b), (c) og (d) er histogrammer av tre utvalg på henholdsvis 10, 100 og 10 000 elever, alle med omtrent samme form. Hvert panel har en rød stiplet loddrett strek på populasjonsgjennomsnittet, og utvalgspanelene har i tillegg en grå strek på utvalgets eget gjennomsnitt

(c) Utvalg på 100 elever

Bildebeskrivelse: Fire figurer av lesehastighet. Panel (a) er en glattet fordeling med to topper, en liten nær null og en stor rundt 110 ord per minutt. Panel (b), (c) og (d) er histogrammer av tre utvalg på henholdsvis 10, 100 og 10 000 elever, alle med omtrent samme form. Hvert panel har en rød stiplet loddrett strek på populasjonsgjennomsnittet, og utvalgspanelene har i tillegg en grå strek på utvalgets eget gjennomsnitt

(d) Utvalg på 10 000 elever

Figur 7.2. Lesehastighet på 4. trinn i hele populasjonen og i tre tilfeldige utvalg trukket fra den. Den røde stiplede streken er populasjonsgjennomsnittet; i utvalgspanelene viser den grå streken utvalgets eget gjennomsnitt.

Hvis vi hadde vært lite ambisiøse kunne kapittelet sluttet her. I så fall hadde du lært følgende:

> **Hvis vi gjør et enkelt tilfeldig utvalg fra en populasjon** vil
>
> - utvalgsfordelingen tilnærme seg populasjonsfordelingen med større utvalg
> - observatorene tilnærme seg populasjonsparameteren med større utvalg

Men vi skal ikke slutte her, for i virkeligheten er det ikke nok å vite at vi kan estimere populasjonsparameteren bedre hvis vi gjør et større utvalg; vi må vite hvor godt vi har estimert populasjonsparameteren med det utvalget vi har. Hvis vi bare har råd til å gjøre Carlstenprøven på 100 elever, hvor godt får vi da estimert gjennomsnittet?

Målet nå er å sette et tall på hvor usikre estimatene er, men vi trenger litt teori først. Et naturlig sted å begynne er normalfordelingen.

## 7.4 Normalfordelingen

*Lenke: https://kvant.roarstovner.no/sec-inferential.html#sec-inf-normalfordeling*

**Normalfordelingen** er berømt, så du har kanskje hørt om den allerede. Du skal ikke lære så mye om den, annet enn at den har bjelleform og er fullt ut beskrevet av sitt gjennomsnitt og standardavvik.

[Figur 7.3](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-standardnormal) viser en normalfordeling med gjennomsnitt 0 og standardavvik 1. Denne normalfordelingen kalles en standard normalfordeling. På den vannrette aksen leser vi av verdien til en eller annen variabel, og høyden på kurven forteller hvilke verdier av variabelen som er sannsynlige.

Bildebeskrivelse: En bjelleformet kurve med topp ved x lik 0, symmetrisk om toppen, som faller mot null på begge sider

Figur 7.3. Normalfordelingen med gjennomsnitt 0 og standardavvik 1. På x-aksen finner man verdien til en variabel, og høyden på kurven forteller hvor sannsynlig den verdien er

Normalfordelinger kan ha andre gjennomsnitt og standardavvik enn det som ble vist over, så nå skal vi forandre normalfordelingens gjennomsnitt og standardavvik for å se hvordan kurven forandrer seg. Jeg tenker på gjennomsnittet og standardavviket som to knotter vi kan skru på for å endre fordelingen. Endrer vi gjennomsnittet, *flytter* hele kurven til venstre eller høyre uten å endre formen. Endrer vi standardavviket, blir kurven bredere eller smalere, men den blir værende på samme sted. En bred kurve betyr stor spredning; en smal kurve betyr at verdiene ligger tett rundt gjennomsnittet.

Skru på de to bryterne under og se selv! Den stiplede streken viser gjennomsnittet.

*(Her ligger en interaktiv figur som bare virker i nettversjonen av boka: https://kvant.roarstovner.no/sec-inferential.html)*

Nå vet du hvordan alle mulige normalfordelinger ser ut; de kan være lenger til høyre og venstre eller være smalere og bredere.

For alle normalfordelingene gjelder en enkel tommelfingerregel, **68–95–99,7-regelen**. Uansett hvilket gjennomsnitt og standardavvik fordelingen har, vil rundt 68 % av observasjonene ligge innenfor ett standardavvik fra gjennomsnittet, rundt 95 % innenfor to standardavvik, og hele 99,7 % innenfor tre. [Figur 7.4](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-normal-sds) illustrerer de to første tilfellene.

Bildebeskrivelse: To bjellekurver. I den venstre er det midterste området innenfor ett standardavvik skravert og merket 68,3 prosent. I den høyre er området innenfor to standardavvik skravert og merket 95,4 prosent

(a) 68,3 % av observasjonene faller innenfor ett standardavvik fra gjennomsnittet

Bildebeskrivelse: To bjellekurver. I den venstre er det midterste området innenfor ett standardavvik skravert og merket 68,3 prosent. I den høyre er området innenfor to standardavvik skravert og merket 95,4 prosent

(b) 95,4 % faller innenfor to standardavvik

Figur 7.4. Andelen av en normalfordeling som ligger innenfor ett og to standardavvik fra gjennomsnittet.

Kanskje lurer du på hvorfor du må lære dette om normalfordelingen. Lesehastigheten i populasjonen var jo *ikke* normalfordelt; den har blant annet to humper, slik vi nettopp så i [Figur 7.2](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-population). Vi forventer ikke at fordelinger i den virkelige verden er normalfordelte, så hvorfor er normalfordelingen da så viktig for oss? Bare les videre.

## 7.5 Utvalgsfordelingen til gjennomsnittet

*Lenke: https://kvant.roarstovner.no/sec-inferential.html#sec-inf-utvalgsfordeling*

Vi skal nå forstå noe litt vanskelig, så ta det rolig, les sakte, og forsøk å henge med. Hvis du ikke helt forstår, kan det være fint å lese videre uansett, men deretter returnere til disse delkapitlene senere. Du skal lære at *utvalgets gjennomsnitt* har sin egen fordeling. Dette er rart. Vi har jo bare ett utvalg vi kan estimere populasjonsgjennomsnittet med, så vi får bare én verdi for utvalgets gjennomsnitt. Hvordan kan denne ene verdien ha en fordeling?

For å forstå dette må vi gjøre et tankeeksperiment: Vi må se for oss alle tenkelige utvalg vi kunne fått. Tenk deg at vi gjør studien vår med 5 elever, altså n = 5. I [Tabell 7.1](https://kvant.roarstovner.no/sec-inferential.html#tbl-inf-replikasjoner) vises 10 forskjellige tilfeldige utvalg vi kunne fått. Vi ser de fem elevene i utvalget har forskjellige lesehastigheter, og at dette gir forskjellige gjennomsnitt (kolonnen helt til høyre). Det er dette man mener med at utvalgets gjennomsnitt har en fordeling. Dette er bare 10 utvalg; det finnes enormt mange forskjellige slike utvalg man kunne trukket.

| | Elev 1 | Elev 2 | Elev 3 | Elev 4 | Elev 5 | Utvalgets gjennomsnitt |
|-----------|--------|--------|--------|--------|--------|------------------------|
| Utvalg 1 | 102 | 99 | 112 | 87 | 45 | 89 |
| Utvalg 2 | 110 | 79 | 97 | 103 | 96 | 97 |
| Utvalg 3 | 127 | 110 | 134 | 17 | 100 | 98 |
| Utvalg 4 | 93 | 94 | 125 | 103 | 122 | 107 |
| Utvalg 5 | 115 | 92 | 120 | 50 | 96 | 95 |
| Utvalg 6 | 119 | 124 | 87 | 106 | 66 | 100 |
| Utvalg 7 | 49 | 109 | 86 | 112 | 134 | 98 |
| Utvalg 8 | 110 | 135 | 11 | 102 | 100 | 92 |
| Utvalg 9 | 100 | 60 | 30 | 92 | 91 | 75 |
| Utvalg 10 | 94 | 130 | 115 | 111 | 113 | 113 |

Tabell 7.1. Ti forskjellige utvalg av en liten lesehastighetsstudie, hver med et utvalg på n = 5 elever. Utvalgsgjennomsnittet varierer en god del fra utvalg til utvalg

Legg merke til hvordan gjennomsnittet varierer fra utvalg til utvalg. Lesehastighetene til hver enkelt elev varierer fra ca. 10 til 130, men gjennomsnittene varierer fra ca. 75 til 115. Gjennomsnittene varierer altså mindre enn lesehastighetene til enkeltelever. Hvis jeg hadde vist mange flere slike utvalg, med tilhørende gjennomsnitt, hadde vi fått mange forskjellige gjennomsnittsverdier. Da kunne jeg vist **utvalgsfordelingen til gjennomsnittet**, altså fordelingen til alle utvalgsgjennomsnitt man kan få. Denne fordelingen vil bestå av tallene i kolonnen lengst til høyre i [Tabell 7.1](https://kvant.roarstovner.no/sec-inferential.html#tbl-inf-replikasjoner), i hvert fall hvis kolonnen hadde vist alle mulige utvalg man kunne fått.

Men – hey! – vi har jo simulert et datasett med hele populasjonen, det som ble vist i [Figur 7.2](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-population), så jeg *kan* faktisk vise dette. Nyt og beundre [Figur 7.5](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-replikasjoner), der jeg har tegnet opp gjennomsnittene man kan få fra populasjonen når man trekker utvalg på n = 5 elever.

Bildebeskrivelse: Et histogram av utvalgsgjennomsnitt som er samlet rundt 100, lagt oppå en bredere bimodal kurve som viser populasjonen. Histogrammet er merket «Utvalgsfordelingen til gjennomsnittet» og kurven er merket «Populasjonsfordelingen». En rød stiplet loddrett strek merket «Gjennomsnitt» går gjennom begge fordelingene

Figur 7.5. Utvalgsfordelingen til gjennomsnittet for studier med n = 5 elever, vist som et grønt histogram. Til sammenligning viser den svarte linjen populasjonsfordelingen av lesehastighet. Den røde stiplede streken er gjennomsnittet, som er det samme i begge fordelingene

Jeg har tegnet inn populasjonsfordelingen som en svart linje, slik at vi kan sammenlikne den med utvalgsfordelingen til gjennomsnittet. Legg merke til det følgende i figuren:

- Utvalgsfordelingen til gjennomsnittet er jevnere og ser mer normalformet ut enn populasjonsfordelingen. De to humpene i populasjonsfordelingen har forsvunnet i utvalgsfordelingen, og de grønne søylene ser mer ut som en normalfordeling.
- Utvalgsfordelingen til gjennomsnittet og populasjonsfordelingen har samme gjennomsnitt; den røde stiplede streken er gjennomsnittet til begge fordelingene. Derfor kan vi bruke utvalgets gjennomsnitt til å estimere populasjonens gjennomsnitt.
- Utvalgsfordelingen til gjennomsnittet er mindre spredt enn populasjonsfordelingen. Tenk på forskjellen mellom to måter å trekke på. Trekker du én elev om gangen, kan du få nesten hva som helst: noen elever leser svært sakte, andre svært raskt. Trekker du derimot fem elever og regner ut gjennomsnittet deres, betyr det mindre om én av dem er en uvanlig rask eller uvanlig langsom leser, for de andre fire drar gjennomsnittet mot midten. Gjennomsnittet av fem tilfeldige elever er derfor mer stabilt enn lesehastigheten til én tilfeldig elev.

Dette delkapittelet er verdt å skjønne ordentlig, for utvalgsfordelingen til gjennomsnittet er nøkkelen for resten. Her er oppsummeringen:

- Vi prøver å estimere populasjonens gjennomsnitt ut fra utvalgets gjennomsnitt.
- Vi har bare ett utvalg og derfor bare ett gjennomsnitt, og det lager ingen fordeling. Men vi kan tenke oss gjennomsnittene til alle mulige utvalg vi kunne trukket; de utgjør utvalgsfordelingen til gjennomsnittet.
- Denne utvalgsfordelingen likner mer på normalfordelingen og har samme gjennomsnitt, men mindre spredning, enn populasjonsfordelingen.

Når vi har vårt ene utvalg og regner ut vårt ene gjennomsnitt, ser vi på dette som et trekk fra denne utvalgsfordelingen.

Men dersom ulike tilfeldige utvalg kan gi ulike gjennomsnitt, hvor mye kan vi egentlig stole på det gjennomsnittet vi har observert? Og hvordan kan ett enkelt utvalg brukes til å si noe om den ukjente populasjonen? For å svare på disse spørsmålene må vi se nærmere på utvalgsfordelingens form og spredning, og det er beskrevet av sentralgrenseteoremet og standardfeilen.

## 7.6 Sentralgrenseteoremet og standardfeilen

*Lenke: https://kvant.roarstovner.no/sec-inferential.html#sec-inf-clt*

I forrige delkapittel så vi at utvalgsfordelingen så litt normalfordelt ut, men det var kun for utvalg på fem elever, n = 5. Hvordan vil utvalgsfordelingen se ut for større utvalg?

Vi finner ut av det ved å tegne samme figur, bare for flere forskjellige n. I [Figur 7.6](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-clt) viser jeg utvalgsfordelingen for utvalg med 2 elever, 5 elever, 10 elever og 100 elever. Hvert grønt histogram er altså utvalgsfordelingen til gjennomsnittet for én bestemt utvalgsstørrelse. Denne gangen er den svarte kurven den best tilpassede normalfordelingen, slik at man ser tydeligere hvorvidt utvalgsfordelingen er lik normalfordelingen.

Bildebeskrivelse: Histogram av utvalgsgjennomsnittene ved n lik 2, med en normalfordelingskurve lagt over. Den horisontale aksen (x-aksen) viser utvalgsgjennomsnitt fra 0 til 170 ord per minutt. Fordelingen er bred og har to tydelige topper, og kurven treffer den dårlig.

(a) For n = 2 ser man fremdeles de to humpene, og normalfordelingen passer dårlig

Bildebeskrivelse: Histogram av utvalgsgjennomsnittene ved n lik 5, med en normalfordelingskurve lagt over. Den horisontale aksen (x-aksen) er den samme som i forrige panel. Fordelingen er smalere enn ved n lik 2, de to toppene er nesten borte, og kurven treffer bedre.

(b) Allerede ved n = 5 ligner fordelingen mer på en normalfordeling, og den er smalere

Bildebeskrivelse: Histogram av utvalgsgjennomsnittene ved n lik 10, med en normalfordelingskurve lagt over. Den horisontale aksen (x-aksen) er den samme som i de forrige panelene. Fordelingen er enda smalere, har én topp, og kurven følger søylene tett.

(c) Ved n = 10 er normalfordelingen en meget god tilnærming

Bildebeskrivelse: Histogram av utvalgsgjennomsnittene ved n lik 100, med en normalfordelingskurve lagt over. Den horisontale aksen (x-aksen) er den samme som i de forrige panelene. Fordelingen er en smal, symmetrisk søyle rundt populasjonsgjennomsnittet, og kurven ligger praktisk talt oppå den.

(d) Ved n = 100 er fordelingen svært smal og praktisk talt normal

Figur 7.6. Sentralgrenseteoremet demonstrert med lesehastighets-eksempelet. Hvert panel viser utvalgsfordelingen til gjennomsnittet (grønne søyler) for én bestemt utvalgsstørrelse n, med den best tilpassede normalfordelingen lagt over (svart linje). Selv om populasjonens fordeling er humpete, blir gjennomsnittets fordeling mer og mer normal når n øker. Den blir også mindre spredt.

Selv om populasjonsfordelingen var aldri så humpete, ser vi at utvalgsfordelingen til gjennomsnittet fort blir normalfordelt. Allerede ved n = 10 er utvalgsfordelingen nesten en perfekt bjellekurve, og ved n = 100 er den smal og praktisk talt helt normal. Dette er innholdet i sentralgrenseteoremet:

> **Sentralgrenseteoremet:**
>
> Uansett hvilken fordeling populasjonen har, gjelder følgende om gjennomsnittets utvalgsfordeling:
>
> - den blir tilnærmet normal når utvalget er tilstrekkelig stort
> - den har samme gjennomsnitt som populasjonsfordelingen
> - den blir smalere og smalere (får mindre og mindre standardavvik) når n øker.

> Standardavviket til utvalgsfordelingen kalles **standardfeilen**, og sentralgrenseteoremet gir oss en enkel formel for den:
>
> standardfeil = (populasjonens standardavvik) / (√n)

Men her stusser du kanskje: Formelen krever populasjonens standardavvik, og det er jo nettopp et av tallene vi ikke kjenner. Løsningen er den samme som ellers i kapittelet: Siden vi sjelden kan undersøke hele populasjonen, bruker vi variasjonen i utvalget som beste anslag på variasjonen i populasjonen. Vi setter altså inn utvalgets standardavvik i formelen.

Vanligvis skrives dette med forkortelser, SE for standardfeilen (av engelsk *standard error*) og SD for standardavviket (*standard deviation*), altså SE = (SD) / (√n). Det er slik du vil se den i forskningsartikler, og slik vi kommer til å regne i [Seksjon 7.7](https://kvant.roarstovner.no/sec-inferential.html#sec-inf-eksempel).

**Advarsel — En unødvendig presisering: Bessels korreksjon**

Å bruke utvalgets standardavvik i stedet for populasjonens er en tilnærming, og her innfrir jeg et løfte fra [Kapittel 5](https://kvant.roarstovner.no/sec-descriptive.html). Regner man ut standardavviket slik vi gjorde der, ved å dele på antallet observasjoner n, får man en litt for lav verdi når målet er å *anslå* populasjonens standardavvik. Verdien må derfor ganges med **Bessels korreksjon**, som for standardavviket er √((n) / (n-1)). Det er det samme som å dele på n - 1 i stedet for n inne under rottegnet, og det er nettopp dette jamovi gjør, så du får korreksjonen gratis. Den gjør standardfeilen bittelitt høyere enn den ellers ville blitt. For alt annet enn ørsmå utvalg er forskjellen helt ubetydelig, så du trenger ikke tenke mer på den.

Dette gjør normalfordelingen nyttig for oss. Selv om populasjonen vår slett ikke er normalfordelt, vet vi at utvalgsfordelingen til gjennomsnittet er normalfordelt (så lenge utvalget er stort nok). Og ikke nok med det, vi vet presisjonen vi anslår gjennomsnittet med, siden vi vet standardfeilen.

Legg merke til kvadratroten i nevneren. Den har en viktig konsekvens: for å *halvere* standardfeilen må du *firedoble* utvalget, og for å gjøre den en tidel så stor må utvalget bli hundre ganger større. Presisjon er dyrt, og det er grunnen til at studier sjelden har så store utvalg som vi skulle ønske.

## 7.7 Et eksempel

*Lenke: https://kvant.roarstovner.no/sec-inferential.html#sec-inf-eksempel*

La oss se hvordan dette faktisk benyttes. Vi har søkt penger til studien vår for å anslå lesehastigheten til norske fjerdeklassinger. Vi ble svært skuffet da vi bare fikk nok penger til å samle data fra n = 64 tilfeldig trukkede elever. Huff, det er jommen dyrt å reise land og strand rundt for å gi Carlstenprøven til tilfeldige elever. Hvordan skal det gå, når vi anslår lesehastigheten til 60 000 elever ut fra bare 64?

Etter å ha samlet dataene, gjør vi litt deskriptiv statistikk. Husk at i virkeligheten ville vi ikke visst populasjonsfordelingen, det er bare i dette kapittelet vi faktisk vet «fasiten», så nå må du late som om du ikke aner noe om den. [Figur 7.7 (a)](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-se-vs-sd-1) viser lesehastigheten til de 64 elevene vi testet: gjennomsnittet ble M = 97 ord/min og standardavviket SD = 31 ord/min. Disse tallene gjelder utvalget. Kanskje blir vi bekymret av det rare histogrammet. Har vi hatt uflaks som har så mange elever med lav lesehastighet? Er utvalget vårt blitt lite representativt, slik at gjennomsnittet (M = 97) bommer grovt på populasjonen? Ingen grunn til bekymring, sentralgrenseteoremet kommer til unnsetning!

Ut fra de tre tallene, (M, SD og n), gir sentralgrenseteoremet oss en normalfordeling som er en svært god tilnærming til utvalgsfordelingen til gjennomsnittet. Denne er tegnet i [Figur 7.7 (b)](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-se-vs-sd-2). Som vi lærte i forrige delkapittel, er den sentrert på samme gjennomsnitt som populasjonen, men er mye smalere. Standardfeilen er SE = (SD) / (√n) = (31) / (√64) = 3,9. Nå er vi i mål!

I mål med hva da? Med å estimere populasjonsgjennomsnittet ut fra utvalget vårt. La oss tenke over hva vi har oppnådd. Utvalget vårt, [Figur 7.7 (a)](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-se-vs-sd-1), hadde en rar fordeling og høyt standardavvik. Sentralgrenseteoremet forteller oss at gjennomsnittet til utvalget er trukket fra en annen fordeling, vist i [Figur 7.7 (b)](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-se-vs-sd-2), en normalfordeling med mindre standardavvik som vi husker kalles standardfeilen. Vi har derfor svært god grunn til å tro at gjennomsnittet i populasjonen er ca. 97. Og på grunn av 68-95-99,7-regelen ([Seksjon 7.4](https://kvant.roarstovner.no/sec-inferential.html#sec-inf-normalfordeling)) er vi 68 % sikre på at gjennomsnittet er innenfor én standardfeil fra estimatet vårt.

Haha! For en berusende følelse! Vi visste ingenting om lesehastigheten til de 60 000 fjerdeklassingene, og så målte vi kun 64 av elevene, men likevel kan vi være 68% sikre på at snitthastigheten er 97 ± 3,9!!! Og siden to standardavvik er 3,9 · 2 = 7,8, så kan vi være 95% sikre på at gjennomsnittet er 97 ± 7,8. Wow!

Bildebeskrivelse: To paneler med samme vannrette akse for lesehastighet. Panel (a) er et bredt histogram av64 elevers lesehastighet med en vannrett pil som markerer standardavviket. Panel (b) er en smal, høy normalfordeling sentrert på samme gjennomsnitt, med en mye kortere vannrett pil som markerer standardfeilen

(a) Lesehastigheten til hver enkelt elev, med gjennomsnittet (M) og standardavviket (SD)

Bildebeskrivelse: To paneler med samme vannrette akse for lesehastighet. Panel (a) er et bredt histogram av64 elevers lesehastighet med en vannrett pil som markerer standardavviket. Panel (b) er en smal, høy normalfordeling sentrert på samme gjennomsnitt, med en mye kortere vannrett pil som markerer standardfeilen

(b) Utvalgsfordelingen til gjennomsnittet slik sentralgrenseteoremet spår den: en normalfordeling sentrert på det samme gjennomsnittet, men med en spredning, standardfeilen (SE), som er mindre enn standardavviket

Figur 7.7. En sammenlikning av fordelingen til utvalget på 64 elever, og den tilhørende utvalgsfordelingen til gjennomsnittet. Fordelingene har samme gjennomsnitt, men svært ulik spredning.

Jeg pepret forrige avsnitt med utropstegn, fordi dette virkelig er helt fantastisk. Vi har en hemmelig ingrediens som, krydret med litt matematikk, gir oss muligheten til å si hvor godt vi har estimert gjennomsnittet til 60 000 elever ut fra bare 64. Og hva er den hemmelige ingrediensen?

Tilfeldig utvalg.

Uten tilfeldige utvalg fungerer ingenting av dette; vi har ikke peiling på om utvalgets gjennomsnitt er en tilnærming av populasjonsgjennomsnittet og vi har i hvert fall ingen peiling på usikkerheten.

Men, for å ikke bli alt for beruset av lykke over sentralgrenseteoremet, så kan det være lurt å komme med noen innvendinger:

- Tenk tilbake på [Seksjon 3.6.2](https://kvant.roarstovner.no/sec-design.html#sec-design-simple-random) om hvor enkelt det var å hente inn et tilfeldig utvalg. Det var så vanskelig at jeg skrev, litt satt på spissen, at enkle tilfeldige utvalg ikke finnes! Oops.
- Husk at statistiske resultater er heftet med mange typer usikkerhet. Enkelt tilfeldig utvalg lar oss kun anslå utvalgsusikkerheten. Hva med måleusikkerheten, for eksempel? Kanskje har vi ikke anslått elevenes lesehastighet så godt som vi tror.

## 7.8 Konfidensintervall

*Lenke: https://kvant.roarstovner.no/sec-inferential.html#sec-inf-konfidensintervall*

> *Statistics means never having to say you’re certain*

Å rapportere et estimat sammen med en øvre og nedre grense er så vanlig at det har fått sitt eget navn, **konfidensintervall**. Det vanligste er å oppgi 95% konfidensintervall.

Oppskriften er enkel når vi først har standardfeilen. Vi vet fra sentralgrenseteoremet at gjennomsnittets utvalgsfordeling er normal, og vi vet fra 68–95–99,7-regelen at 95 % av en normalfordeling ligger innenfor (nesten nøyaktig) to standardavvik fra sentrum. [^4] Standardavviket til utvalgsfordelingen er jo standardfeilen, så derfor blir et **95 % konfidensintervall** ganske enkelt:

estimat ± 2 · standardfeil

La oss regne det ut for studien vår. Vi trakk 64 elever, fikk gjennomsnittet M = 97 ord/min og standardfeilen SE = 3,9 (regnet ut i forrige delkapittel). Et 95 % konfidensintervall har da

- nedre grense på 97 - 2 · 3,9 = 89,3
- øvre grense på 97 + 2 · 3,9 = 104,9.

Konfidensintervallet strekker seg dermed fra 89,3 til 104,9 ord/min.[^5]

[Figur 7.8](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-ci) viser konfidensintervallet tegnet på gjennomsnittets utvalgsfordeling. Det skraverte området utgjør 95 % av fordelingen og er alt som ligger innenfor 2 standardfeil av estimatet. Det er nettopp dette midtpartiet konfidensintervallet fanger. Legg merke til hvor smalt det er sammenlignet med spennet av lesehastigheter som ble vist i [Figur 7.7 (a)](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-se-vs-sd-1).

Bildebeskrivelse: En bjelleformet normalfordeling sentrert på gjennomsnittet, tegnet på en akse fra 0 til 160 slik at kurven er smal. Det midterste området, innenfor cirka to standardfeil fra gjennomsnittet, er skravert og utgjør de 95 prosentene som er konfidensintervallet

Figur 7.8. 95 % konfidensintervall for studien vår, tegnet på gjennomsnittets utvalgsfordeling og på samme vannrette akse som forrige figur, slik at man ser hvor smal fordelingen er. Det skraverte området er de 95 % av fordelingen som ligger innenfor 2 standardfeil til hver side av estimatet (M); det er konfidensintervallet

I en forskningsartikkel ser du gjerne estimatet og konfidensintervallet skrevet svært kompakt, ofte med engelsk *CI* for *confidence interval*:

> Gjennomsnittlig lesehastighet var 97 ord/min, 95% CI \[89.3, 104.9\].

**Tips — I jamovi: konfidensintervall for et gjennomsnitt**

Analyses → Exploration → Descriptives. Legg variabelen du vil undersøke i Variables-boksen. Åpne så seksjonen Statistics og kryss av for «Confidence interval for the mean» (du finner den i bolken om gjennomsnitt). Standardinnstillingen er 95 %, men du kan endre prosenten i feltet ved siden av. Samme sted kan du krysse av for «Std. error of Mean» hvis du vil se standardfeilen direkte.

## 7.9 Tolking av konfidensintervallet

*Lenke: https://kvant.roarstovner.no/sec-inferential.html#sec-inf-tolkning*

Det vanskeligste med konfidensintervaller er å tolke dem riktig, og her snubler mange, også erfarne forskere. Den riktige tolkningen er:

> Ved tilfeldig utvalg fra en populasjon, vil et 95% konfidensintervall inneholde populasjonsparameteren i 95% av tilfellene.

Husk at populasjonsparameteren er en tallverdi som beskriver hele populasjonen. Hvis populasjonsparameteren er gjennomsnittet, sier tolkningen altså at det 95 % konfidensintervallet inneholder populasjonsgjennomsnittet i 95 % av tilfellene.

Men hva betyr «95 % av tilfellene» her? Vi har jo bare utført studien én gang. Disse tilfellene viser til et tankeeksperiment. Se for deg at du gjentar studien mange, mange ganger med nye tilfeldige utvalg og regner ut konfidensintervallet hver gang. I 95 % av disse intervallene vil man finne det sanne gjennomsnittet. Men i virkeligheten har man bare ett intervall og man vet ikke om det er blant de 95 % som traff, eller blant de 5 % som bommet. Akkurat ditt konfidensintervall kan jo ha bommet grovt.

[Figur 7.9](https://kvant.roarstovner.no/sec-inferential.html#fig-inf-ci-interpretation) illustrerer tankeeksperimentet. Det sanne populasjonsgjennomsnittet ligger fast (den stiplede linjen i midten). De loddrette strekene viser 50 gjentakelser av studien, altså samme studie utført 50 ganger med forskjellig tilfeldig utvalg, som gir forskjellige estimat på gjennomsnittlig lesehastighet. De fleste konfidensintervallene fanger det sanne gjennomsnittet, men noen få, markert i blått og med stjerne over, bommer. Når du gjør én enkelt studie, vet du ikke om du har fått et av de grå konfidensintervallene eller et av de blå, altså om konfidensintervallet inneholder populasjonsgjennomsnittet eller ikke. Det du vet, er at ved å utføre prosedyren, altså ved å gjennomføre en studie med tilfeldig utvalg, så vil konfidensintervallet inneholde populasjonsparameteren 95% av gangene.

Bildebeskrivelse: Femti loddrette intervaller side om side, de fleste krysser en vannrett stiplet linje for det sanne gjennomsnittet, men noen få ligger helt over eller under og er markert med stjerne

Figur 7.9. 95 % konfidensintervaller fra 50 forskjellige tilfeldige utvalg i en lesehastighetsstudie med n = 25. Prikken er utvalgets gjennomsnitt og linjen er konfidensintervallet. Den stiplede vannrette linjen er det sanne populasjonsgjennomsnittet. De fleste intervallene inneholder det sanne gjennomsnittet, men noen få, i blått og markert med stjerne, gjør det ikke

Så når du møter et 95 % konfidensintervall i en forskningsartikkel, må du tenke at du ikke vet om dette intervallet er blant de 95% som traff eller blant de 5% som bommet.

## 7.10 Tilordningsusikkerhet i randomiserte kontrollstudier

*Lenke: https://kvant.roarstovner.no/sec-inferential.html#sec-inf-rct*

Så langt har usikkerheten vår handlet om *tilfeldig utvalg*: vi trakk elever tilfeldig fra en populasjon, og spørsmålet var hvor godt utvalgsgjennomsnittet estimerte populasjonsgjennomsnittet. Men konfidensintervaller dukker også opp ved *tilfeldig tilordning* i randomiserte kontrollstudier.

Vi tenker oss en **randomisert kontrollstudie** (se [Kapittel 3](https://kvant.roarstovner.no/sec-design.html)), for eksempel der forskerne rekrutterer 100 elever på 4. trinn fra én skole og deler dem tilfeldig i to grupper. Den ene gruppa, intervensjonsgruppa, får prøve ut en ny lesestrategi; den andre, kontrollgruppa, fortsetter som før. Alle elevene tar Carlstenprøven noen uker etterpå. Forskjellen i lesehastighet mellom de to gruppene er effekten av intervensjonen.

Anta at intervensjonsgruppa i snitt leste 4,2 ord/min mer enn kontrollgruppa etter intervensjonen. Denne *forskjellen i gjennomsnitt* er også et estimat som har sin egen utvalgsfordeling og sin egen standardfeil, akkurat slik som gjennomsnittet i forrige eksempel. Forskere kan dermed finne et konfidensintervall, for eksempel et 95 % konfidensintervall på 0,3 til 8,1.

Forskjellen på dette konfidensintervallet og det forrige er hva usikkerheten beskriver. Her er det ingen tilfeldig trekning fra en populasjon av norske 4.-klassinger; det er bare disse 100 elevene, og de er ikke trukket tilfeldig fra noe sted. Det tilfeldige er *tilordningen* til gruppene. Konfidensintervallet svarer derfor ikke på spørsmålet «hva er effekten av leseintervensjonen for norske 4.-klassinger generelt?», men på spørsmålet «hva er effekten av leseintervensjonen for akkurat disse 100 elevene?». Det er en usikkerhet knyttet til den tilfeldige tilordningen, siden estimatet av effekten hadde blitt annerledes med en annen tilordning. Den randomiserte kontrollstudien sier i utgangspunktet bare noe om elevene i utvalget, ikke om at funnet skal gjelde andre elever. Den ytre validiteten er altså ikke noe konfidensintervallet gir svar på for randomiserte kontrollstudier.

## 7.11 Hva konfidensintervallet ikke fanger

*Lenke: https://kvant.roarstovner.no/sec-inferential.html#sec-inf-grenser*

Kapittelet begynte med å skille mellom fire typer usikkerhet, men har hittil kun vist hvordan konfidensintervallet kan dekke utvalgs- og tilordningsusikkerhet. Det er fordi konfidensintervallet i dette kapittelet, som er det som vanligvis brukes i forskning, ikke tar hensyn til de andre typene usikkerhet. Det er lett å glemme, fordi konfidensintervallet er det eneste tallet vi faktisk regner ut, men de andre kildene til usikkerhet er der likevel, og er ofte større.

- **Måleusikkerhet.** Carlstenprøven måler ikke lesehastighet helt presist. Dagsform, teksten som benyttes i prøven, og tilfeldigheter i selve gjennomføringen gir feil som konfidensintervallet ikke fanger.
- **Modellusikkerhet.** Hele regnestykket bygger på antakelser: at utvalget er et enkelt tilfeldig utvalg, målingen er god for alle elevene, og så videre. Hvis antakelsene er gale, for eksempel ved selektiv dropout (se [Seksjon 3.6.2](https://kvant.roarstovner.no/sec-design.html#sec-design-simple-random)), så kan konfidensintervallet være misvisende.
- **Ikke-tilfeldige utvalg.** Dette er kanskje den viktigste begrensningen i lærerstudenters egne masteroppgaver. Nesten ingen masteroppgaver bygger på et enkelt tilfeldig utvalg fra en veldefinert populasjon; de bruker de elevene og lærerne forskeren får tilgang til. Da hviler konfidensintervallet på en forutsetning som ikke er oppfylt, og det er strengt tatt meningsløst. Det betyr ikke at studien er verdiløs, men at usikkerheten må vurderes med faglig skjønn og teoretiske argumenter, ikke med et konfidensintervall regnet ut uten at forutsetningene er oppfylt.

## 7.12 Oppsummering

*Lenke: https://kvant.roarstovner.no/sec-inferential.html#oppsummering*

I dette kapittelet har jeg forklart hvordan man estimerer populasjonsparametre. Jeg har bare vist hvordan man estimerer populasjonsgjennomsnittet, men liknende tenkning fungerer for alle mulige populasjonsparametre. For eksempel, hvis man skulle estimert populasjons*medianen*, så måtte man funnet utvalgsfordelingen til medianen, som kanskje ikke er normalfordelt. Da hadde man trengt noe som likner på sentralgrenseteoremet, men som gjelder for medianer. Deretter kunne man regnet ut et konfidensintervall for medianen. Alle begrepene du har lært, utgjør altså et språk for estimering og måling av usikkerhet som kan brukes mer generelt. Du har lært:

- [Fire typer usikkerhet](https://kvant.roarstovner.no/sec-inferential.html#sec-inf-typer-usikkerhet): måle-, modell-, utvalgs- og tilordningsusikkerhet. Kapittelet handlet mest om de to siste.
- [Populasjon og utvalg](https://kvant.roarstovner.no/sec-inferential.html#sec-inf-populasjon): forskjellen på populasjonsparametre og utvalgsobservatorer.
- [Normalfordelingen](https://kvant.roarstovner.no/sec-inferential.html#sec-inf-normalfordeling): en bjelleformet fordeling definert av to tall, gjennomsnitt og standardavvik. Den følger 68–95–99,7-regelen.
- [Utvalgsfordelingen til gjennomsnittet](https://kvant.roarstovner.no/sec-inferential.html#sec-inf-utvalgsfordeling): Også gjennomsnittet har en fordeling.
- [Sentralgrenseteoremet og standardfeilen](https://kvant.roarstovner.no/sec-inferential.html#sec-inf-clt): Utvalgsfordelingen til gjennomsnittet blir tilnærmet normalfordelt for store nok utvalg uansett hvordan populasjonsfordelingen ser ut. Standardfeilen måler usikkerheten i gjennomsnittet.
- [Konfidensintervallet](https://kvant.roarstovner.no/sec-inferential.html#sec-inf-konfidensintervall): den vanligste måten å angi usikkerhet på. Vanligst med 95% konfidensintervall, regnet ut som ± 2 · SE. Vi lærte [hvordan det skal tolkes](https://kvant.roarstovner.no/sec-inferential.html#sec-inf-tolkning).
- At [samme matematikk](https://kvant.roarstovner.no/sec-inferential.html#sec-inf-rct) ligger bak konfidensintervaller i randomiserte kontrollstudier, men at usikkerheten der kommer fra tilordning, ikke utvalg.
- At [konfidensintervallet ikke fanger all usikkerhet](https://kvant.roarstovner.no/sec-inferential.html#sec-inf-grenser): Det fanger ikke måleusikkerhet, og det trenger tilfeldig utvalg eller tilordning for å fungere.

Arnesen, A., Braeken, J., Ogden, T., & Melby-Lervåg, M. (2019). Assessing Children’s Social Functioning and Reading Proficiency: A Systematic Review of the Quality of Educational Assessment Instruments Used in Norwegian Elementary Schools. *Scandinavian Journal of Educational Research*, *63*(3), 465–490. <https://doi.org/10.1080/00313831.2017.1420685>

Cassidy, S. A., Dimova, R., Giguère, B., Spence, J. R., & Stanley, D. J. (2019). Failing Grade: 89% of Introduction-to-Psychology Textbooks That Define or Explain Statistical Significance Do So Incorrectly. *Advances in Methods and Practices in Psychological Science*, 2515245919858072. <https://doi.org/10.1177/2515245919858072>

Gigerenzer, G. (2018). Statistical Rituals: The Replication Delusion and How We Got There. *Advances in Methods and Practices in Psychological Science*, *1*(2), 198–218. <https://doi.org/10.1177/2515245918771329>

Lytsy, P., Hartman, M., & Pingel, R. (2022). Misinterpretations of P-values and Statistical Tests Persists among Researchers and Professionals Working with Statistics and Epidemiology. *Upsala Journal of Medical Sciences*, *127*, 10.48101/ujms.v127.8760. <https://doi.org/10.48101/ujms.v127.8760>

Wasserstein, R. L., & Lazar, N. A. (2016). The ASA Statement on P-Values: Context, Process, and Purpose. *The American Statistician*, *70*(2), 129–133. <https://doi.org/10.1080/00031305.2016.1154108>

[^1]: Vel, matematikken, men siden matematikk har et image-problem velger jeg å benytte ordet *magi*.

[^2]: Merk at dette er en *forskningsbruk* av Carlstenprøven. I klasserommet bruker læreren prøven som en kartlegging av sine egne elever, ikke for å trekke slutninger om en populasjon.

[^3]: Et poeng som er verdt å huske fra [Kapittel 5](https://kvant.roarstovner.no/sec-descriptive.html): Siden fordelingen er skjev, er ikke populasjonsgjennomsnittet og medianen like. Gjennomsnittet er på 99 ord/min, og er lavere enn populasjonsmedianen, som er på 106 ord/min, som igjen er lavere enn den vanligste lesehastigheten, som er rundt 110 ord/min. Gjennomsnittet er altså noe vi *velger* å regne ut og estimere, ikke nødvendigvis et godt sammendrag av en typisk elev, jamfør den økologiske feilslutningen, [Seksjon 6.4.3](https://kvant.roarstovner.no/sec-associations.html#sec-associations-ecological).

[^4]: Det presise tallet er 1,96 standardavvik, ikke 2,0. Jeg regner med 2 fordi det er lett å gjøre overslag med i hodet, og fordi forskjellen er ubetydelig.

[^5]: Se bort fra små avrundingsfeil; de oppstår fordi jeg ikke viser alle desimaler.
