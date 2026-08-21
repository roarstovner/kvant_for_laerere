# Utgivelse av en ny utgave

Hver årsutgave utgis som en GitHub-release, og Zenodo arkiverer den automatisk
og tildeler en DOI. Rekkefølgen under er den som gir samsvar mellom tagg, arkiv
og det som står i boka.

## DOI-ene

Boka har to slags DOI-er, og de brukes ulikt:

- **Hoved-DOI (concept)**, `10.5281/zenodo.17068063`, peker alltid til nyeste
  utgave. Den står i `_quarto.yml` (`citation.doi`), i footeren og i
  siteringslinja i `index.qmd`, og skal aldri endres.
- **Versjons-DOI**, én per utgave, opprettes av Zenodo ved hver publiserte
  release. 2025-utgaven har `10.5281/zenodo.17068064`, 2026-utgaven
  `10.5281/zenodo.22002981`.

Versjons-DOI-en finnes altså ikke før releasen er publisert, mens den skal stå i
siteringslista nederst i `index.qmd`. Derfor kommer den inn i to trinn.

## Framgangsmåte

1. Bygg boka og kontrollér at `docs/` har fersk PDF og EPUB.
2. Lag en annotert tagg: `git tag -a v2026 -m "2026-utgaven, undervist på
   MGVM4100 høsten 2026"` og push den.
3. Lag releasen med tittel «MGVM4100 2026» og legg ved PDF-en og EPUB-en,
   omdøpt til `Kvantitativ-metode-for-laerere-2026.pdf` og `.epub`.
4. Vent til Zenodo har arkivert releasen, og noter versjons-DOI-en.
5. Legg versjons-DOI-en inn i siteringslista nederst i `index.qmd`, bygg på
   nytt, og last opp PDF og EPUB på nytt med `gh release upload ... --clobber`.
6. Rett lisensen i Zenodo til CC BY-SA 4.0 (se under).

## Feller

- **Zenodo reagerer bare på «release published».** En flyttet tagg eller en
  redigert release utløser ingen ny arkivering. Flytter du taggen etterpå,
  peker DOI-en fortsatt på det gamle øyeblikksbildet av kildekoden.
- **Zenodo setter lisensen til CC-BY som standard** hvis GitHub ikke har
  oppdaget en lisens. `LICENSE` i rota (CC BY-SA 4.0) fikser dette for nye
  releaser, men eksisterende poster må rettes for hånd i Zenodo, og endringen
  må publiseres for å tre i kraft.
- **Vedlegg følger ikke taggen.** Flytter du taggen, oppdateres «Source
  code»-arkivene automatisk, mens PDF og EPUB må lastes opp på nytt.
- **Lisensen skrives «CC BY-SA 4.0»**, aldri «CC-BY». Den står i `LICENSE`,
  `README.md`, footeren i `_quarto.yml` og forordet i `index.qmd`.
