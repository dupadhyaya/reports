// Typst Report Functions

#import "@preview/fontawesome:0.6.2": fa-icon

// General-purpose report box
#let report-box(
  body,
  title: "Information",
  icon: "circle-info",
  color: blue,
  background: rgb("#EAF3FF"),
) = {
  block(
    width: 100%,
    breakable: true,
  )[
    #rect(
      width: 100%,
      fill: background,
      radius: 5pt,
      inset: 12pt,
      stroke: (left: 3pt + color),
    )[
      #fa-icon(icon, solid: true, fill: color)
      #h(5pt)
      #text(weight: "bold", fill: color)[#title]

      #v(5pt)

      #body
    ]
  ]
}

// Important findings
#let insight-box(body) = report-box(
  body,
  title: "Key Insight",
  icon: "lightbulb",
  color: rgb("#174EA6"),
  background: rgb("#EAF3FF"),
)

// Data-quality warnings
#let warning-box(body) = report-box(
  body,
  title: "Data Quality Warning",
  icon: "triangle-exclamation",
  color: rgb("#A65E00"),
  background: rgb("#FFF3DF"),
)

// Positive outcomes
#let success-box(body) = report-box(
  body,
  title: "Positive Outcome",
  icon: "circle-check",
  color: rgb("#16733D"),
  background: rgb("#E7F5EC"),
)

// Reusable KPI Card
#let kpi-card(  title: "",  value: "",  change: "",  icon: "chart-line",  color: rgb("#174EA6"),
  background: rgb("#F0F5FC"),  description: "",
) = {  block(    width: 100%,    breakable: false,  )[
    #rect(      width: 100%,      fill: background,      radius: 6pt,      inset: 12pt,      stroke: 0.5pt + color.transparentize(70%),    )[
      // Icon and title
      #grid( columns: (1fr, auto),  align: horizon,    [
          #text(  size: 10pt,  weight: "medium",
            fill: rgb("#555555"),  )[#title]
        ],
        [
          #fa-icon( icon,  solid: true,  fill: color,  size: 16pt,
          )
        ],
      )

      #v(5mm)

      // Main KPI value
      #text(        size: 25pt,        weight: "bold",
        fill: color,      )[#value]

      #v(3mm)

      // Change from previous period
      #if change != "" {    text(size: 10pt,    weight: "bold",
          fill: color,    )[#change]      }

      // Optional description
      #if description != "" {
        v(3mm)
        text(  size: 9pt,  fill: rgb("#666666"),     )[#description]
      }
    ]
  ]
}

#let kpi-row(..cards) = {
  let items = cards.pos()

  grid(
    columns: (1fr,) * items.len(),
    gutter: 5mm,
    ..items,
  )
}