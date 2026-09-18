#set page(  paper: "a4",  margin: 2cm,)

#set text(  size: 11pt,  font: "Libertinus Serif",)

#set heading(numbering: "1.")

#let task-box(title, body) = block(
  width: 100%,
  fill: rgb("#eaf3f8"),
  stroke: 0.8pt + rgb("#2878a5"),
  radius: 5pt,
  inset: 12pt,
  above: 8pt,
  below: 8pt,
  [
    #text(
      size: 13pt,
      weight: "bold",
      fill: rgb("#174a67"),
    )[#title]

    #v(6pt)
    #body
  ],
)

= University Intake Analysis

This document tests the *Tinymist Typst preview* inside Positron.

== Data-preparation task

#task-box([Task 1: Prepare the data])[
  - Import the university intake data.
  - Identify missing values.
  - Classify programmes as *UG* or *PG*.
  - Calculate totals for each campus.
]

== Sample intake table

#table(
  columns: (2fr, 1fr, 1fr),
  inset: 8pt,
  stroke: 0.5pt + gray,

  table.header([*Programme*], [*Level*], [*Intake*],),
  [BSc Computer Science], [UG], [120],
  [BA Economics],        [UG], [85],
  [MSc Data Science],    [PG], [45],
  [MBA],                 [PG], [60],
)

== A simple process

#align(center)[
  #box( fill: rgb("#d8ecff"), stroke: blue, radius: 4pt, inset: 8pt, )[Import data]

  #h(8pt) $arrow.r$ #h(8pt)

  #box( fill: rgb("#fff0cc"), stroke: orange, radius: 4pt, inset: 8pt,)[Classify UG/PG]

  #h(8pt) $arrow.r$ #h(8pt)

  #box(
    fill: rgb("#dcf5df"),  stroke: green,    radius: 4pt,    inset: 8pt,  )[Create report]
]

== Conclusion

If you can see this page in the preview, Tinymist is working correctly.