#!/usr/bin/env python3
"""Lager kildefilene til KI-assistenten i Sikt KI-chat (mappa ki-assistent/).

Kjør etter at boka er rendret, altså når docs/ er oppdatert:

    python3 ki-assistent/lag-kildefiler.py

Filene lastes opp under Advanced → Files i assistenten. Instruksjonsteksten
ligger i ki-assistent-prompt.md og limes inn i Instructions-feltet.

Kapittelfilene hentes fra den rendrede HTML-en i docs/, ikke fra .qmd, fordi
det er bare der inline R-beregninger, tabeller og figurtekster har ferdige
verdier. Alt-tekstene til figurene tas med, siden assistenten ikke ser bilder.
"""
import re, subprocess, html as ihtml, pathlib, tempfile, collections

BASE = "https://kvant.roarstovner.no/"
ROOT = pathlib.Path(__file__).resolve().parent.parent
SRC = ROOT / "docs"
OUT = ROOT / "ki-assistent"
TMP = pathlib.Path(tempfile.mkdtemp())

CHAPTERS = [
    ("01-hvorfor-kvantitativ-metode", "sec-why-statistics", "Kapittel 1. Hvorfor lære kvantitative metoder?"),
    ("02-maling", "sec-measurement", "Kapittel 2. Måling i utdanningsforskning"),
    ("03-forskningsdesign", "sec-design", "Kapittel 3. Forskningsdesign i kvantitativ metode"),
    ("04-jamovi", "sec-jamovi", "Kapittel 4. Komme i gang med jamovi"),
    ("05-beskrive-en-variabel", "sec-descriptive", "Kapittel 5. Å beskrive én variabel"),
    ("06-beskrive-sammenhenger", "sec-associations", "Kapittel 6. Å beskrive sammenhenger mellom variabler"),
    ("07-usikkerhet-konfidensintervall", "sec-inferential", "Kapittel 7. Usikkerhet og konfidensintervall"),
    ("08-etterord", "sec-epilogue", "Etterord"),
]

def strip_tags(s):
    s = re.sub(r"<[^>]+>", "", s)
    return ihtml.unescape(s).strip()

def preprocess(h):
    i = h.index('<main class="content"')
    j = h.index("</main>", i)
    h = h[i:j]
    h = re.sub(r"<style.*?</style>", "", h, flags=re.S)
    h = re.sub(r"<script.*?</script>", "", h, flags=re.S)
    h = re.sub(r"<nav.*?</nav>", "", h, flags=re.S)
    h = re.sub(r'<div id="title-block-header".*?</div>\s*<div id="title-block-header"[^>]*>\s*</div>', "", h, flags=re.S)
    h = re.sub(r'<ol class="breadcrumb[^"]*">.*?</ol>', "", h, flags=re.S)
    h = re.sub(r'<span class="screen-reader-only">([^<]*)</span>', r"\1 — ", h)
    h = re.sub(r'<div class="callout-title-container flex-fill">\s*(.*?)\s*</div>',
               lambda m: "<p>❖" + m.group(1) + "❖</p>", h, flags=re.S)
    return h

def anchors(h):
    """{normalisert overskriftstekst: id} fra <section id=..><hN>..</hN>"""
    out = {}
    for m in re.finditer(r'<section id="([^"]+)"[^>]*class="level(\d)[^"]*"[^>]*>\s*<h\2[^>]*>(.*?)</h\2>', h, flags=re.S):
        t = re.sub(r"\s+", " ", strip_tags(m.group(3))).strip()
        t = re.sub(r"^[\d.]+\s*", "", t).lower()
        out[t] = m.group(1)
    return out

def postprocess(md, slug, anch):
    page = BASE + slug + ".html"
    # figurer: [![alt](src)](src "tittel")  ->  bildebeskrivelse
    md = re.sub(r"\[!\[(.*?)\]\((?:[^()]|\([^()]*\))*\)\]\((?:[^()]|\([^()]*\))*\)",
                lambda m: "Bildebeskrivelse: " + m.group(1).replace("\\_", "_"), md, flags=re.S)
    md = re.sub(r"!\[(.*?)\]\((?:[^()]|\([^()]*\))*\)",
                lambda m: "Bildebeskrivelse: " + m.group(1).replace("\\_", "_"), md, flags=re.S)
    # lenker -> absolutte
    md = re.sub(r"\]\((sec-[a-z-]+\.html)", r"](" + BASE + r"\1", md)
    md = re.sub(r"\]\(#", "](" + page + "#", md)
    md = re.sub(r"\]\((images/|sec-[a-z-]+_files/|data_and_tables/)", r"](" + BASE + r"\1", md)
    md = md.replace("\\(", "(").replace("\\)", ")")
    md = re.sub(r"^Bildebeskrivelse: *$", "[Figur uten tekstbeskrivelse; se figuren i nettversjonen av boka.]", md, flags=re.M)
    # callout-titler
    md = re.sub(r"❖(.*?)❖", lambda m: "**" + re.sub(r"\s+", " ", m.group(1)).strip() + "**", md, flags=re.S)
    # overskrifter: legg på lenke med anker
    lines = md.split("\n")
    res = []
    for ln in lines:
        res.append(ln)
        m = re.match(r"^(#{1,6}) +(.*?)\s*$", ln)
        if m:
            txt = re.sub(r"^[\d.]+\s*", "", m.group(2)).strip()
            key = re.sub(r"\s+", " ", re.sub(r"[*_]", "", txt)).lower()
            aid = anch.get(key)
            if aid:
                res.append("")
                res.append(f"*Lenke: {page}#{aid}*")
    md = "\n".join(res)
    md = re.sub(r"\n{3,}", "\n\n", md)
    return md.strip()


def textify_math(md):
    """Boka er 'uten matematikk'; de fa formlene skrives om til lesbar tekst."""
    md = md.replace("\\begin{aligned}", "").replace("\\end{aligned}", "")
    md = re.sub(r"&(?=\\frac|=)", "", md)
    md = md.replace("\\\\ ", " ")
    md = re.sub(r"\\text\{([^{}]*)\}", r"\1", md)
    for _ in range(5):
        md = re.sub(r"\\sqrt\{([^{}]*)\}", "\u221a(" + r"\1" + ")", md)
        md = re.sub(r"\\frac\{([^{}]*)\}\{([^{}]*)\}", r"(\1) / (\2)", md)
    md = re.sub(r"\u221a\(([A-Za-z0-9,.]+)\)", "\u221a" + r"\1", md)
    md = md.replace("^{\\circ}", "\u00b0").replace("\\circ", "\u00b0")
    md = re.sub(r"\\chi\^\{?2\}?", "\u03c7\u00b2", md)
    md = md.replace("\\rightarrow", " \u2192 ").replace("\\cdot", "\u00b7")
    md = md.replace("\\pm", "\u00b1").replace("\\times", "\u00d7")
    md = re.sub(r"[ ]{2,}", " ", md)
    return md


def strip_ojs(md, page):
    note = ("*(Her ligger en interaktiv figur som bare virker i nettversjonen av boka: "
            + page + ")*")
    return re.sub(r"``` *(js|\{ojs\}|ojs)\n.*?\n```", note, md, flags=re.S)

manifest = []
for name, slug, title in CHAPTERS:
    h = (SRC / f"{slug}.html").read_text(encoding="utf-8")
    anch = anchors(h)
    pre = preprocess(h)
    tmp = TMP / "pre.html"
    tmp.write_text(pre, encoding="utf-8")
    md = subprocess.run(["pandoc", "-f", "html", "-t", "gfm-raw_html", "--wrap=none", str(tmp)],
                        capture_output=True, text=True, check=True).stdout
    md = postprocess(md, slug, anch)
    md = textify_math(md)
    md = strip_ojs(md, BASE + slug + '.html')
    header = (f"# {title}\n\n"
              f"Fra læreboka *Kvantitativ metode for lærere* av Roar Bakken Stovner (2026-utgaven).\n"
              f"Nettversjon av dette kapittelet: {BASE}{slug}.html\n"
              f"Hele boka: {BASE}\n\n---\n\n")
    md = re.sub(r"^# .*?\n", "", md, count=1)
    (OUT / f"{name}.md").write_text(header + md.strip() + "\n", encoding="utf-8")
    manifest.append((name, len((header + md))))

CHAPTERS_DONE = manifest


# ---------------------------------------------------------------- jamovi-boksene

JAMOVI_KAP = [("sec-jamovi", "Kapittel 4. Komme i gang med jamovi"),
              ("sec-descriptive", "Kapittel 5. Å beskrive én variabel"),
              ("sec-associations", "Kapittel 6. Å beskrive sammenhenger mellom variabler"),
              ("sec-inferential", "Kapittel 7. Usikkerhet og konfidensintervall")]

def lag_jamovi_fil():
    out = ["# Alle jamovi-oppskriftene i boka\n",
           "Fra læreboka *Kvantitativ metode for lærere* av Roar Bakken Stovner (2026-utgaven). Hele boka: " + BASE + "\n",
           "Dette er alle «I jamovi»-boksene i boka, samlet på ett sted. Hver oppskrift er skrevet slik at den kan leses for seg selv. Bruk dem ordrett når en student spør hvordan en analyse gjøres. Menynavnene er engelske, slik de står i programmet.\n"]
    n = 0
    for slug, title in JAMOVI_KAP:
        t = (ROOT / f"{slug}.qmd").read_text(encoding="utf-8")
        hits = list(re.finditer(r'::: \{\.callout-\w+[^}]*title="(I jamovi:[^"]+)"\}\n(.*?)\n:::', t, flags=re.S))
        if not hits:
            continue
        out.append(f"\n## Fra {title}\n\n*Kapittelet på nett: {BASE}{slug}.html*\n")
        for m in hits:
            n += 1
            body = re.sub(r"^## ", "", m.group(2).strip(), flags=re.M)
            body = re.sub(r":::\{[^}]*\}|:::", "", body)
            out.append(f"\n### {m.group(1)}\n\n" + re.sub(r"\n{3,}", "\n\n", body).strip() + "\n")
    (OUT / "10-jamovi-oppskrifter.md").write_text("\n".join(out), encoding="utf-8")
    return n


# ------------------------------------------------------------- begrepsregisteret

# Uthevet tekst som ikke er fagbegreper: jamovi-menyer, callout-etiketter og
# bøyde former av begreper som allerede står i registeret.
STOPPORD = {"advarsel", "tips", "merknad", "viktig", "obs", "analyses", "data", "edit",
            "variables", "browse", "open", "plots", "exploration", "frequencies",
            "descriptives", "regression", "split by", "correlation matrix", "scatterplot",
            "box plot", "effekten", "virkningen", "avviket", "verdien", "variabelen",
            "variablene", "årsaken", "virkning", "skjevt", "skjeve", "kvadrere",
            "tingliggjort", "representativt", "forårsaket", "medianen", "gjennomsnittet",
            "standardavviket", "variansen", "reliabiliteten", "validiteten",
            "sentraltendensen", "korrelasjonskoeffisienten", "kvartilbredden",
            "standardfeilen", "utfall", "eksperimenter", "variasjonsbredden",
            "randomiserte kontrollerte eksperimenter", "randomisert kontrollstudie"}

def lag_begrepsregister():
    idx = collections.OrderedDict()
    for i, (name, slug, title) in enumerate(CHAPTERS[:-1], start=1):
        kap = f"Kapittel {i}"
        cur_head = cur_link = None
        for ln in (OUT / f"{name}.md").read_text(encoding="utf-8").split("\n"):
            m = re.match(r"^#{2,6} +(.*)$", ln)
            if m:
                cur_head = re.sub(r"^[\d.]+\s*", "", m.group(1)).strip()
                cur_link = None
            m = re.match(r"^\*Lenke: (\S+)\*$", ln)
            if m:
                cur_link = m.group(1)
            if ln.startswith("**") and " — " in ln[:40]:
                continue
            for t in re.findall(r"\*\*([^*]{3,45})\*\*", ln):
                t = t.strip().strip(".,:;!?")
                if not t or len(t.split()) > 4:
                    continue
                if t[0].isupper() and len(t.split()) > 2:
                    continue
                if any(c in t for c in "«»():"):
                    continue
                key = t[0].lower() + t[1:]
                if key.lower() in STOPPORD or key.lower().startswith("for "):
                    continue
                idx.setdefault(key, (kap, cur_head, cur_link))
    out = ["# Begrepsregister: hvor i boka står begrepet?\n",
           "Fra læreboka *Kvantitativ metode for lærere* av Roar Bakken Stovner (2026-utgaven). Hele boka: " + BASE + "\n",
           "Registeret viser hvor hvert fagbegrep blir innført i boka. Bruk det til å henvise studenten til riktig sted, og til å sjekke om et begrep hører til pensum. Står ikke begrepet her, er det sannsynligvis ikke dekket i boka, og da skal du si det.\n"]
    for k in sorted(idx, key=str.lower):
        kap, head, link = idx[k]
        out.append(f"- **{k}** — {kap}" + (f", «{head}»" if head else "") + (f" — {link}" if link else ""))
    (OUT / "11-begrepsregister.md").write_text("\n".join(out) + "\n", encoding="utf-8")
    return len(idx)


# ----------------------------------------------------------------- ICCS-datasettet

R_KODE = r'''
options(OutDec = ",")
x <- readRDS("data_and_tables/ICCS.RDS")
f <- function(v) format(round(v, 1), nsmall = 1, decimal.mark = ",", trim = TRUE)
cat("# Datasettet ICCS, som brukes i analysene i boka\n\n")
cat("Fra læreboka *Kvantitativ metode for lærere* av Roar Bakken Stovner (2026-utgaven).\n")
cat("Last ned: https://kvant.roarstovner.no/data_and_tables/ICCS.omv (jamovi-format) eller https://kvant.roarstovner.no/data_and_tables/ICCS.csv\n")
cat("Beskrevet i kapittel 4: https://kvant.roarstovner.no/sec-jamovi.html#sec-jamovi-datafiler\n\n")
cat("Datasettet er et utdrag fra den internasjonale undersøkelsen ICCS (International Civic and Citizenship Education Study, Fraillon et al., 2024). Det har",
    format(nrow(x), big.mark = " "), "rader, én per elev, og", ncol(x), "variabler. Elevene går på 8. og 9. trinn i Norge, Spania, Polen og Brasil.\n\n")
cat("Bruk denne oversikten når en student spør hva en variabel heter, hvilket målenivå den har, eller hvilke verdier den kan ha.\n\n")
for (nm in names(x)) {
  v <- x[[nm]]
  cat("## ", nm, "\n\n", sep = "")
  if (is.ordered(v)) {
    cat("Målenivå: ordinal (Ordinal i jamovi).\n\n")
    cat("Verdier i stigende rekkefølge: ", paste(levels(v), collapse = " < "), "\n\n", sep = "")
    tb <- table(v, useNA = "no")
    cat("Antall per verdi: ", paste(sprintf("%s: %s", names(tb), format(as.integer(tb), big.mark = " ")), collapse = "; "), "\n\n", sep = "")
  } else if (is.factor(v)) {
    cat("Målenivå: nominell (Nominal i jamovi).\n\n")
    tb <- table(v, useNA = "no")
    cat("Verdier: ", paste(sprintf("%s (%s elever)", names(tb), format(as.integer(tb), big.mark = " ")), collapse = "; "), "\n\n", sep = "")
  } else if (is.numeric(v)) {
    cat("Målenivå: tallvariabel (Continuous i jamovi).\n\n")
    cat("Minste verdi ", f(min(v, na.rm = TRUE)), ", største verdi ", f(max(v, na.rm = TRUE)),
        ", gjennomsnitt ", f(mean(v, na.rm = TRUE)), ", median ", f(median(v, na.rm = TRUE)),
        ", standardavvik ", f(sd(v, na.rm = TRUE)), ".\n\n", sep = "")
  } else {
    cat("Identifikator (tekst), ", format(length(unique(v)), big.mark = " "), " ulike verdier.\n\n", sep = "")
  }
  na <- sum(is.na(v))
  if (na > 0) cat("Manglende verdier: ", format(na, big.mark = " "), ".\n\n", sep = "")
}
'''

def lag_datasettfil():
    r = subprocess.run(["Rscript", "--vanilla", "-"], input=R_KODE, capture_output=True,
                       text=True, cwd=ROOT)
    if r.returncode != 0:
        raise SystemExit("Rscript feilet:\n" + r.stderr)
    (OUT / "09-iccs-datasettet.md").write_text(r.stdout, encoding="utf-8")


lag_datasettfil()
n_jamovi = lag_jamovi_fil()
n_begrep = lag_begrepsregister()

for navn, tegn in CHAPTERS_DONE:
    print(f"{tegn:>7}  {navn}.md")
print(f"\n{n_jamovi} jamovi-oppskrifter og {n_begrep} begreper.")
print("00-oversikt.md vedlikeholdes for hånd.")
