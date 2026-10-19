// Typst Cover Page 4

#set page(  paper: "a4",  margin: 15mm,)

#set text(font: "Arial")

#align(center)[ 
  #image("aulogo.png", height: 22mm)
  #v(8mm)
  #text(    size: 20pt,  weight: "bold",  fill: rgb("#153A63"),  )[AMITY UNIVERSITY]]

#v(15mm)

// Campus photograph with title overlay
#block(width: 100%, height: 12cm, clip: true)[
  #image(   "auupl.jpeg",   width: 100%,    height: 12cm,
    fit: "cover",  )

  #place(bottom + left)[
    #rect(
      width: 100%,
      fill: rgb("#102A43").transparentize(15%),
      inset: 10mm,
    )[
      #text(
        size: 25pt,
        weight: "bold",
        fill: white,
      )[ADMISSIONS ANALYTICS]
      #v(3mm)
      #text(size: 14pt, fill: white)[
        Academic Year 2026–27
      ]
    ]
  ]
]

#v(12mm)

#align(center)[
  #text(size: 13pt)[
    University Admissions Performance\
    Trends, Conversion and Institutional Insights
  ]
]

#v(1fr)
#align(center)[
  #text(weight: "bold")[    Education Data Analytics  ]
  #v(3mm)
  C6O — Amity University
  #v(5mm)
  October 2026
]