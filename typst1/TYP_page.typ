// Typst page

//#text(size: 20pt, weight: "bold")[Using Typst for Report Generation : Topic : Grid Layout]

// Document variables
#let report = (
  title: "Typst Report Generation - Page Layout",
  subtitle: "Learning Typst with EDA",
  author: "Education Data Analytics",
  department: "EDA",
  university: "Amity University",
  date: datetime.today(),
  header: [AU Report : Admissions - EDA],
  footer: [Page #context counter(page).display() of #context counter(page).final().first()],
)

#set document(  title: report.title,  author: report.author,)

// Cover page
#align(center)[  #text(size: 24pt, weight: "bold")[    #report.title  ]
  #v(0.5cm)
  #text(size: 16pt)[    #report.subtitle  ]
  #v(1cm)
  Prepared by \
  *#report.author* \
  #report.department \
  #report.university \
  #v(1cm)
  #report.date.display("[day] [month repr:long] [year]")
]


/#set page(
  paper: "a4",
  margin: 20mm,

  header: report.header,
  footer: report.footer,
)



= Heading 1

== Heading 1.1


=== Heading 1.1.1

= Heading 2

== Heading 2.1

#pagebreak()

Start Writing here


#lorem(100)