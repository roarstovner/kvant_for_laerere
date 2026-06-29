# Innspill fra redaktør: fra .docx tilbake til .qmd

Redaktør Anne Kristine Øgreid leser kapitler som .docx (generert fra .qmd med
Quarto) og leverer dem tilbake med **kommentarer** og **sporendringer** ("spor
endringer"). Dette dokumentet beskriver hvordan de innspillene hentes inn i
.qmd-kildene.

## Mental modell: trekk ut, ikke sammenlikn

Vi **sammenlikner ikke** .docx og .qmd. Formatene er strukturelt forskjellige
(OOXML vs. markdown+R), og .docx-en er en enveis-generert artefakt. I stedet:

> .docx-en *bærer* innspillene som metadata. Vi trekker ut metadataen
> (kommentarer + sporendringer) og kobler hvert innspill til riktig sted i .qmd.
> .qmd er fasit for struktur; .docx leverer bare annotasjonene.

Den innebygde `docx`-skillen dekker *mekanikken* (lese OOXML, kommentarer,
sporendringer). Dette dokumentet dekker *prosjektpolicyen* skillen ikke vet om.

## Hvor filene ligger

- Reviderte filer fra Anne ligger i **`tmp/`** (f.eks. `tmp/2026-03-17 kapittel 1.docx`).
- **`docs/` er generert Quarto-output** og skal aldri brukes som kilde for innspill.

## Før filene gis til Claude: Roars triagering i Word

- **Avvis** sporendringene du ikke vil ha (de fjernes fra dokumentet).
- **La endringene du vil ha stå som åpne sporendringer — ikke aksepter dem.**
  En sporendring forsvinner fra "spor endringer"-loggen i det øyeblikket den
  aksepteres, og kan da ikke skilles fra resten av teksten. "Aksepter alle"
  skjer implisitt når Claude skriver de gjenstående endringene inn i .qmd.
- Kommentarer trenger du ikke røre; vi går gjennom dem sammen.

> Be Anne om **alltid å ha "spor endringer" på**. En fil uten sporendringer kan
> bare forenes med .qmd via skjør fuzzy tekst-diff. (Per 2026-06: `kapittel 4 og
> 5`-fila kom uten sporendringer og kommentarer — sjekk om den faktisk er lest.)

## Uttrekk (verifiserte kommandoer)

Filter alltid på forfatter `Anne Kristine Øgreid`. Dokumentet inneholder også
sporendringer fra Roar selv og fra innholdsfortegnelsen som er støy.

Ett markdown-dokument med Annes endringer (`.insertion`/`.deletion`) og
kommentarer (`comment-start`/`comment-end`) plassert inline i konteksten:

```bash
pandoc "tmp/<fil>.docx" --track-changes=all -t markdown -o inline.md
```

Ren, nummerert kommentarliste (id, forfatter, tekst):

```bash
unzip -p "tmp/<fil>.docx" word/comments.xml > comments.xml
python3 - comments.xml <<'PY'
import sys, xml.etree.ElementTree as ET
W='{http://schemas.openxmlformats.org/wordprocessingml/2006/main}'
for c in ET.parse(sys.argv[1]).getroot().findall(f'{W}comment'):
    cid=c.get(f'{W}id'); auth=c.get(f'{W}author')
    txt=''.join(e.text or '' for e in c.iter(f'{W}t'))
    print(f"[#{cid} {auth}] {txt}")
PY
```

(Mellomfiler skrives til scratchpad/`tmp/`, ikke inn i repoet.)

## Hvordan innspill brukes på .qmd

- **Rene språk-/formuleringsendringer:** skriv rett inn i .qmd.
- **Endringer som rører R-kode, siteringer, figurer eller struktur:** legg fram
  for Roar først.
- **Kommentarer som er ekte spørsmål** ("Er det riktig?", "Skal vi ha en
  referanse her?"): krever Roars fagkunnskap — han svarer, så brukes svaret.
- **Siteringer:** følg [Siteringer og referanser](CLAUDE.md) — legg aldri til i
  `refs.bib` selv; gi et BibTeX-utdrag som kan importeres til Zotero.

Arbeid kapittel for kapittel; gå gjennom kommentar for kommentar / endring for
endring sammen med Roar.
