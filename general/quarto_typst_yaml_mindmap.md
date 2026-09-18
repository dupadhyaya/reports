# Quarto YAML Configuration Mind Map: Typst Format Focus

A structured, comprehensive hierarchical tree of YAML configuration options available for Quarto documents targeting the Typst format engine.

---

## 📌 1. Document Metadata & Identification
* `title`: "Document Title"
* `subtitle`: "Document Subtitle"
* `description`: "Brief summary of the document"
* `author`:
  * `name`: "Author Name"
  * `affiliation`: "Organization/University"
  * `email`: "author@example.com"
  * `orcid`: "0000-0000-0000-0000"
* `date`: "YYYY-MM-DD" or `today`
* `abstract`: "A comprehensive summary of the project's background, methodology, and key results."
* `keywords`: [Keyword1, Keyword2, Keyword3]
* `lang`: "en" # ISO language code (e.g., "en", "fr", "de")

---

## 🛠️ 2. Core Execution Engine Options (`execute`)
* `execute`:
  * `echo`: true | false # Show/hide source code blocks globally
  * `warning`: true | false # Show/hide code warning outputs
  * `error`: true | false # Keep compiling even if an execution error occurs
  * `output`: true | false | asis # Control text output visualization
  * `cache`: true | false | refresh # Enable/disable calculation caching
  * `freeze`: true | false | auto # Freeze code execution during global site renders

---

## 🎨 3. Target Format & Typst Layout Parameters (`format: typst`)
* `format`:
  * `typst`:
    * **Page & Geometry Layout:**
      * `paper`: "a4" | "us-letter" | "legal" | "a5" # Physical paper layout size
      * `margin`: 2.5cm | 1in # Uniform margin string or complex object below
        * `top`: 2.5cm
        * `bottom`: 2.5cm
        * `left`: 3cm
        * `right`: 3cm
      * `columns`: 1 | 2 # Multiple column rendering layout
      * `flipped`: true | false # Landscape orientation switch

    * **Typography & Fonts:**
      * `mainfont`: "Linux Libertine" # Primary text font family
      * `sansfont`: "DejaVu Sans" # Sans-serif font alternate
      * `monofont`: "Fira Code" # Code blocks font family
      * `fontsize`: 11pt | 12pt # Main body font size

    * **Structural Navigation Elements:**
      * `toc`: true | false # Enable Table of Contents
      * `toc-title`: "Contents" # Custom string header for TOC
      * `toc-depth`: 3 # Maximum depth of headings indexed in TOC
      * `number-sections`: true | false # Automatically number headings (1., 1.1, etc.)
      * `number-depth`: 3 # Heading limit depth for numbering

    * **Document Components & Styling:**
      * `section-numbering`: "1.1.a" # Typst-specific nested numbering pattern
      * `title-page`: true | false # Generate a standalone cover/title page
      * `bibliography`: "references.bib" # Path to citation database file
      * `csl`: "apa.csl" # Citation Style Language template path

    * **Advanced PDF Engine Targeting (Typst 0.15+):**
      * `pdf-standard`: "pdf-a-2b" | "pdf-x-4" | ["pdf-a-3b", "pdf-ua-1"] # Target compliance profiles

---

## 🧱 4. Advanced Extensibility & Advanced Customization
* `format`:
  * `typst`:
    * `include-in-header`: "custom-header.typ" # Inject raw Typst markup at document start
    * `include-before-body`: "before.typ" # Inject markup right before core text content
    * `include-after-body`: "after.typ" # Inject markup at the absolute end of the file
    * `template`: "custom-template.typ" # Override default Quarto wrapper with a bespoke Typst template