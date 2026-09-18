# Mind Map: Typst & Quarto Document Configuration

This mind map outlines the comprehensive set of YAML options, document-level variables, and inline commands that control a **Typst** project inside a **Quarto (.qmd)** ecosystem.

```
Quarto Typst Document
├── YAML Front Matter Configuration (format: typst)
│   ├── Document Metadata
│   │   ├── title: "Document Title"
│   │   ├── subtitle: "Document Subtitle"
│   │   ├── author: "Author Name" (or structured list with affiliation, email, orcid)
│   │   ├── date: "YYYY-MM-DD" (or today, now)
│   │   ├── abstract: "Abstract text..."
│   │   ├── description: "SEO metadata summary"
│   │   └── keywords: ["list", "of", "keywords"]
│   │
│   ├── Core Page Geometry & Layout
│   │   ├── paper: "a4" | "us-letter" | "a5" | "legal"
│   │   ├── margin:
│   │   │   ├── top: 2.5cm
│   │   │   ├── bottom: 2.5cm
│   │   │   ├── left: 3cm
│   │   │   └── right: 3cm
│   │   ├── flipped: true | false (Landscape orientation toggle)
│   │   ├── columns: 1 | 2 | 3 (Multi-column page distribution layout)
│   │   └── section-numbering: "1.1.a" | "1.1" | none (Typst pattern string)
│   │
│   ├── Typography & Fonts
│   │   ├── mainfont: "Liberation Sans" (System font name for body text)
│   │   ├── sansfont: "Fira Sans" (System font name for sans text elements)
│   │   ├── monofont: "Fira Code" (System font name for code blocks)
│   │   └── fontsize: 11pt | 10pt | 12pt (Numeric text sizing)
│   │
│   ├── Structure & Navigation
│   │   ├── toc: true | false (Table of Contents toggle)
│   │   ├── toc-depth: 1 | 2 | 3 (Nesting limit for headings in TOC)
│   │   ├── toc-title: "Contents" (Custom header label for TOC)
│   │   └── number-sections: true | false (Boolean toggle for headers)
│   │
│   ├── Citations & Bibliographies
│   │   ├── bibliography: references.bib (Path to BibTeX or CSL-JSON file)
│   │   ├── csl: ieee.csl (Citation Style Language path selector)
│   │   └── citeproc: true | false (Choose between Quarto or Typst internal engine)
│   │
│   ├── Standards & Compilation Compliance
│   │   ├── pdf-standard: "pdf-a-2b" | "pdf-x-4" | ["pdf-a-3b", "pdf-ua-1"] (Targeting multiple standards simultaneously)
│   │   └── keep-typ: true | false (Retain intermediate .typ file for debugging)
│   │
│   └── Templates & Structural Injections
│       ├── template: custom.typ (Complete override of standard layout)
│       ├── include-in-header: file.typ | "literal string"
│       ├── include-before-body: file.typ | "literal string"
│       └── include-after-body: file.typ | "literal string"
│
├── Code Block Execution (`execute:`)
│   ├── echo: true | false (Show or hide source code chunks)
│   ├── warning: true | false (Show or hide package/execution warnings)
│   ├── error: true | false (Allow compilation to continue if execution fails)
│   ├── output: true | false | asis (Control how block output is parsed)
│   ├── cache: true | false (Enable computation caching to speed up subsequent renders)
│   └── freeze: true | false | auto (Prevent re-execution during global rendering pipeline)
│
├── Inline Typst Code Blocks (Direct Markup Injection in Markdown)
│   ├── Native Typst Blocks (```{=typst})
│   │   ├── #set page(header: [...]) (Inject dynamic headers)
│   │   ├── #set page(footer: [...]) (Inject dynamic footers)
│   │   ├── #set text(lang: "de", region: "CH") (Dynamic localization)
│   │   ├── #show heading: set text(fill: blue) (Aesthetic element overrides)
│   │   └── #grid(columns: (1fr, 1fr), [...]) (Custom structural positioning containers)
│   │
│   └── Direct Quarto Shortcodes
│       ├── {{< pagebreak >}} (Native page partition mapping)
│       └── {{< meta title >}} (Inject runtime YAML parameters inside text flow)
```

## How to Use this Map
1. **Global Styles:** Set parameters inside the `format: typst` tree of your YAML block to affect the entire document seamlessly.
2. **Dynamic Behavior:** Use the `execute` parameters to control whether your R, Python, or Julia code shows up alongside your notes.
3. **Hyper-Custom Overrides:** Drop down into ````{=typst}` blocks within your Quarto markdown body when you need to write native Typst scripting functions that Quarto's standard YAML syntax doesn't natively expose.
