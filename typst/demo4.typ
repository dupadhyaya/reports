#set page(
  paper: "a4",
  margin: (top: 16mm,  bottom: 18mm,    left: 18mm, right: 18mm,  ),  numbering: "1",)

#set text(  size: 9pt,  font: "Arial",)

#set par(justify: true)

// Read the complete CSV file.
#let iris = csv("../data/iris.csv")

// Separate the header from the observations.
#let column-names = iris.first()
#let data-rows = iris.slice(1)

// Replace an empty first heading, produced by some R exports, with "Row".
#let column-names = column-names.map(
  heading => if heading == "" { "Row" } else { heading })

= Fisher's Iris Dataset

The table contains all #data-rows.len() observations and
#column-names.len() columns.

The header is repeated automatically when the table continues onto a new page.


#table(
  columns: (
    2.3cm,  // Sepal.Length //1.2fr
    2.3cm,  // Sepal.Width// 1.2fr
    2.3cm,  // Petal.Length
    2.3cm,  // Petal.Width
    2.5cm,  // Species
  ),

  align: (x, _) => {
    if x == 4 {
      left
    } else {
      center
    }
  },

  inset: ( x: 5pt,  y: 4pt, ),

  stroke: 0.35pt + luma(170),

  fill: (_, y) => {
    if y == 0 {
      rgb("#315f72")
    } else if calc.even(y) {
      rgb("#edf5f7")
    } else {
      white
    }
  },

  // Repeated on every page.
  table.header(
    repeat: true,
    ..column-names.map(
      heading => text(
        fill: white,
        weight: "bold",
        size: 8pt,
      )[#heading]
    ),
  ),

  // Insert every row and column.
  ..data-rows.flatten(),
)