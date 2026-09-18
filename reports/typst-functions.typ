#let task-box(title, body) = block(
  width: 100%,
  fill: rgb("#eaf3f8"),
  stroke: 0.8pt + rgb("#2878a5"),
  radius: 5pt,
  inset: 10pt,
  above: 8pt,
  below: 8pt,
  [
    #text(
      weight: "bold",
      size: 12pt,
      fill: rgb("#174a67"),
    )[#title]

    #v(5pt)
    #body
  ],
)