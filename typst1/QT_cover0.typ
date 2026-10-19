
#let university-cover(
  title: "",
  subtitle: "",
  image-path: "",
  department: "",
  report-date: "",
) = {
  align(center)[
    #text(size: 20pt, weight: "bold")[
      AMITY UNIVERSITY
    ]
  ]

  v(12mm)

  block(width: 100%, height: 12cm, clip: true)[
    #image(image-path, width: 100%, height: 12cm, fit: "cover")

    #place(bottom + left)[
      #rect(
        width: 100%,
        fill: rgb("#102A43").transparentize(15%),
        inset: 10mm,
      )[
        #text(size: 24pt, weight: "bold", fill: white)[
          #title
        ]

        #v(3mm)

        #text(size: 14pt, fill: white)[
          #subtitle
        ]
      ]
    ]
  ]

  v(1fr)

  align(center)[
    #text(weight: "bold")[#department]

    #v(5mm)

    #report-date
  ]

  pagebreak()
}