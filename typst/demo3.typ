// Show MT Cars via Typs
#set page(  width: 297mm,  height: 210mm,
  margin: 8mm,)

#set text(  size: 6.5pt,  font: "Arial",)

#let mtcars = csv("../data/mtcars.csv")
#let column-names = mtcars.first()
#let data-rows = mtcars.slice(1)

= Motor Trend Car Road Tests

The table contains all #data-rows.len() observations and #column-names.len() columns from the `mtcars` dataset.

#table(
  columns: (
    3.2cm, // model
    0.8cm, // mpg
    0.7cm, // cyl
    0.9cm, // disp
    0.8cm, // hp
    0.8cm, // drat
    0.8cm, // wt
    0.9cm, // qsec
    0.6cm, // vs
    0.6cm, // am
    0.7cm, // gear
    0.7cm, // carb
  ),

  align: (x, _) => if x == 0 {
    left
  } else {
    right
  },

  inset: (x: 3pt, y: 2.5pt),

  stroke: 0.35pt + luma(170),

  fill: (_, y) => {
    if y == 0 {
      rgb("#24557a")
    } else if calc.even(y) {
      rgb("#eef4f8")
    } else {
      white
    }
  },

  table.header(
    repeat: true,
    ..column-names.map(
      heading => text(
        fill: white,
        weight: "bold",
      )[#heading]
    ),
  ),

  ..data-rows.flatten(),
)