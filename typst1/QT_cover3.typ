// Typst page 3
#block(width: 100%, height: 10cm, clip: true)[
  #image(
    "auupl.jpeg",
    width: 100%,
    height: 10cm,
    fit: "cover",
  )

  #place(bottom + left)[
    #rect(
      width: 100%,
      fill: rgb("#102A43").transparentize(15%),
      inset: 12mm,
    )[
      #text(
        size: 25pt,
        weight: "bold",
        fill: white,
      )[ADMISSIONS ANALYTICS]

      #v(3mm)

      #text(size: 13pt, fill: white)[
        Academic Year 2026–27
      ]
    ]
  ]
]
#pagebreak()