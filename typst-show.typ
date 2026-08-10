// Kopi av template-partialen fra Quartos innebygde orange-book-format
// (quarto 1.10.18: share/extension-subtrees/orange-book/_extensions/orange-book/typst-show.typ).
//
// Grunnen til kopien: orange-book kaller selv `set page(margin: ...)` og
// `set text(size: ...)` inne i `book()`, og overstyrer dermed `margin:` og
// `fontsize:` fra _quarto.yml. Malen må sende verdiene inn som argumenter til
// `book()` for at de skal virke. Endringene fra Quartos original er merket
// «LOKAL ENDRING» nedenfor. Ved oppgradering av Quarto: sammenlikn med
// originalen på nytt.
#import "@preview/orange-book:0.7.1": book, part, chapter, appendices

#show: book.with(
$if(title)$
  title: [$title$],
$endif$
$if(subtitle)$
  subtitle: [$subtitle$],
$endif$
$if(by-author)$
  author: "$for(by-author)$$it.name.literal$$sep$, $endfor$",
$endif$
$if(date)$
  date: "$date$",
$endif$
$if(lang)$
  lang: "$lang$",
$endif$
  main-color: brand-color.at("primary", default: blue),
$if(margin)$
  // LOKAL ENDRING: send margin: fra _quarto.yml videre til book()
  margin: ($for(margin/pairs)$$margin.key$: $margin.value$,$endfor$),
$endif$
$if(fontsize)$
  // LOKAL ENDRING: send fontsize: fra _quarto.yml videre til book()
  font-size: $fontsize$,
$endif$
$if(part-font-size)$
  part-font-size: $part-font-size$,
$endif$
  logo: {
    let logo-info = brand-logo.at("medium", default: none)
    if logo-info != none { image(logo-info.path, alt: logo-info.at("alt", default: none)) }
  },
$if(toc-depth)$
  outline-depth: $toc-depth$,
$endif$
$if(lof)$
$if(crossref.lof-title)$
  list-of-figure-title: "$crossref.lof-title$",
$else$
$if(quarto.language.crossref-lof-title)$
  list-of-figure-title: "$quarto.language.crossref-lof-title$",
$endif$
$endif$
$endif$
$if(lot)$
$if(crossref.lot-title)$
  list-of-table-title: "$crossref.lot-title$",
$else$
$if(quarto.language.crossref-lot-title)$
  list-of-table-title: "$quarto.language.crossref-lot-title$",
$endif$
$endif$
$endif$
$if(quarto.language.crossref-ch-prefix)$
  supplement-chapter: "$quarto.language.crossref-ch-prefix$",
$endif$
$if(margin-geometry)$
  padded-heading-number: false,
$endif$
)

$if(margin-geometry)$
// Configure marginalia page geometry for book context
// Geometry computed by Quarto's meta.lua filter (typstGeometryFromPaperWidth)
// IMPORTANT: This must come AFTER book.with() to override the book format's margin settings
#import "@preview/marginalia:0.3.1" as marginalia

#show: marginalia.setup.with(
  inner: (
    far: $margin-geometry.inner.far$,
    width: $margin-geometry.inner.width$,
    sep: $margin-geometry.inner.separation$,
  ),
  outer: (
    far: $margin-geometry.outer.far$,
    width: $margin-geometry.outer.width$,
    sep: $margin-geometry.outer.separation$,
  ),
  top: $if(margin.top)$$margin.top$$else$1.25in$endif$,
  bottom: $if(margin.bottom)$$margin.bottom$$else$1.25in$endif$,
  // CRITICAL: Enable book mode for recto/verso awareness
  book: true,
  clearance: $margin-geometry.clearance$,
)
$endif$

// LOKAL ENDRING: orange-book setter par(leading: 0.5em), som er for tett.
// Settes etter show-regelen slik at det gjelder hele dokumentet.
#set par(leading: 0.62em)

// LOKAL ENDRING: kolumnetittel. orange-book bruker heading-telleren direkte, og
// unummererte kapitler (Etterord, Referanseliste, jamovi-kapittelet) arver
// dermed nummeret til forrige kapittel. Her skrives nummeret bare ut når
// kapittelet faktisk er nummerert.
#import "@preview/orange-book:0.7.1": part-change, part-state

#set page(header: context {
  set text(size: 11pt)
  let side = counter(page).at(here()).first()
  if part-change.at(here()) { return }
  if query(heading.where(level: 1)).any(it => it.location().page() == side) { return }

  let kapitler = query(selector(heading.where(level: 1)).before(here()))
  if kapitler == () { return }
  let kapittel = kapitler.last()
  let nummer = counter(heading).at(here())
  let nummerert = kapittel.numbering != none
  // Forstoff (før kapittel 1) skal ikke ha kolumnetittel, slik orange-book gjør.
  if nummer.first() == 0 { return }

  if calc.odd(side) {
    let seksjoner = query(
      selector(heading.where(level: 2)).after(kapittel.location()).before(here()),
    )
    if seksjoner == () { return }
    let seksjon = seksjoner.last()
    let merkelapp = if nummerert and seksjon.numbering != none and nummer.len() > 1 {
      numbering("1.1", ..nummer.slice(0, 2)) + " "
    } else { "" }
    box(width: 100%, inset: (bottom: 5pt), stroke: (bottom: 0.5pt))[
      #merkelapp#seksjon.body
      #h(1fr)
      #side
    ]
  } else {
    let merkelapp = if nummerert {
      kapittel.supplement + " " + str(nummer.first()) + ". "
    } else { "" }
    box(width: 100%, inset: (bottom: 5pt), stroke: (bottom: 0.5pt))[
      #set par(justify: false)
      #grid(
        columns: (auto, 1fr),
        align: (left + horizon, right + horizon),
        column-gutter: 0.3em,
        [#side],
        text(weight: "bold")[#merkelapp#kapittel.body],
      )
    ]
  }
})
