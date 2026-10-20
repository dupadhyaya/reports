// Typst page

#text(size: 20pt, weight: "bold")[Using Typst for Report Generation : Topic : xxxxx]

#set document(  title: "Admissions Analysis Report 2026",  author: "Education Data Analytics",)

#align(center)[  #text(size: 24pt, weight: "bold")[    Admissions Analysis Report 2026  ]
#v(1cm)
#text(size: 14pt)[
  Prepared by

  Education Data Analytics

  Amity University
  ]
  #v(1cm)

  #datetime.today().display("[day] [month repr:long] [year]")
]


= Heading 1

== Heading 1.1


=== Heading 1.1.1

= Heading 2

== Heading 2.1

#pagebreak()

Start Writing here




// Header and Footer
#set page(  header: [ 
    [AU - EDA]
    #h(1fr)
    [Analytics]}
  ])
#set page(
  footer: context [ 
  [Report Admissions]
  #h(1fr)
  Page #counter(page).display()
  ],
)
