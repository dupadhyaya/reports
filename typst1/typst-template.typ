// Typst template
#let blueline() = { line(length: 100%, stroke: 2pt + rgb("#68ACE5")) }


#let report(
  title: none,
  date: none,
  body,
) = {
  set page(
    paper: "a4",
    margin: (top: 0.5cm, left: 1cm, right: .5cm, bottom: .5cm, x: 1cm),
    footer: [
      #rect(width: 100%, height: 0.15in, outset: (x: 15%), fill: rgb("#68ACE5")),
    ],
  )

  set text(
    lang: "en",
    region: "IN",
    font: "Arial",
    size: 11pt,
  )
image("aulogo.png",width: 1in)
  body
}