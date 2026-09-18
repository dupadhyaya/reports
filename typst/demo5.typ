#set page(
  paper: "a4",
  margin: (top: 16mm,  bottom: 18mm,    left: 18mm, right: 18mm,  ),  numbering: "1",)

#set text(  size: 9pt,  font: "Arial",)

#set par(justify: true)

// Read the complete CSV file.
#let data = csv("../data/airquality.csv")

// Separate the header from the observations.
#let column-names = data.first()
#let data-rows = data.slice(1)

// Replace an empty first heading, produced by some R exports, with "Row".
#let column-names = column-names.map(
  heading => if heading == "" { "Row" } else { heading })

= Air Quality Dataset

The table contains all #data-rows.len() observations and
#column-names.len() columns.

The header is repeated automatically when the table continues onto a new page.


#table(
  columns: column-names.len(),
  inset: 5pt,
  fill: (_, y) => {
  if y == 0 { luma(220)  } else {
    white  }},
  // Repeated on every page.
  // Repeat the header on every page.
  table.header(
    repeat: true,
    ..column-names.map(  heading => strong(heading) ), ),

  // Insert every row and column.
  ..data-rows.flatten(),
)