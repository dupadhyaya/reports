// Typst page

#text(size: 20pt, weight: "bold")[Using Typst for Report Generation : Topic : Grid Layout]

// Document variables
#let doc-title = "Typst Report Generation - Grid Layout"
#let doc-subtitle = "Learning Typst with EDA"
#let doc-author = "Education Data Analytics"
#let doc-dept = "EDA"
#let doc-university = "Amity University"
#let doc-date = datetime.today()




= Grid 1

Grid Element allows you to create a grid layout for your content. You can define the number of columns and rows, and place elements within the grid cells.

There are multiple sizing options available for the grid cells, including fixed sizes, flexible sizes, and auto-sizing based on content. You can also control the alignment and spacing of elements within the grid.

== Sizing the track 1.1

Sizing parameters are : columns, rows, gutter
Values they allow are : fixed, flexible, auto, fr, minmax, fit-content, max-content, min-content
auto : Automatically size the track based on its content
Fixed or relative length : 10 pt or 20% - 1 cm
Fraction Length : 1 fr


=== Examples 1.1.1


// Rectangle with 3 columns and 2 rows, with a gutter of 10pt
#set rect(
  inset: 8pt,
  fill: rgb("#e4e5ea"),
  width: 100%,
)

#grid(
  columns: (1fr, 1fr, 1fr),
  rows: (auto, 60pt),
  gutter: 3pt,
  rect[Fixed with, auto height],
  rect[1/3 of the remains],
  rect[2/3 of the remains],
  rect(height: 100%)[Fixed height, auto width #lorem(10)], 

  grid.cell(colspan: 2)[Spanning 2 columns: #lorem(30)],
)

=== Example 2

#grid(columns: 5, gutter: 5pt, 
  ..range(25).map(str))


=== Example 3

#let days-in-month(year, month) = {
  let leap = calc.rem(year, 4) == 0 and (
    calc.rem(year, 100) != 0 or calc.rem(year, 400) == 0
  )

  if month == 2 {
    if leap { 29 } else { 28 }
  } else if month in (4, 6, 9, 11) {
    30
  } else {
    31
  }
}


#let year = 2026
#let month = 10

#let first-day = datetime(   year: year,  month: month,  day: 1,)

#let days = days-in-month(year, month)
#let offset = first-day.weekday() - 1

#let weekdays = (
  "Mon", "Tue", "Wed", "Thu",
  "Fri", "Sat", "Sun",
)

#grid(
  columns: 7,
  gutter: 4pt,

  // Weekday headings
  ..weekdays.map(day => [
    #align(center)[*#day*]
  ]),

  // Blank cells before first day
  ..range(offset).map(_ => []),

  // Calendar dates
  ..range(1, days + 1).map(day => [
    #align(center)[#day]
  ]),
)

#days-in-month(2026, 4) // 28

= Styling in the Grid

Grid and Table elements work similarly, but grid is more flexible and allows for more complex layouts. You can style the grid and its cells using various properties such as background color, border, padding, and more.

Grid Appearance can be customized using the following properties:
- Background color : fill 
- Border color and width : border, stroke
- Padding and margin : inset
- Cell alignment and spacing : align, justify, and gutter


== Examples 2.1


#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 4pt,

  ..range(9).map(i => {
    let is-header = i < 3

    rect(
      width: 100%,
      height: 40pt,
      inset: 8pt,
      radius: 4pt,
      fill: if is-header {
        rgb("#24456B")
      } else {
        rgb("#E8EFF8")
      },
      stroke: 0.5pt + rgb("#CCD5E0"),
      align(center + horizon,
        text(
          fill: if is-header { white } else { black },
          weight: if is-header { "bold" } else { "regular" },
          [Cell #i],
        ),
      ),
    )
  }),
)

== Parameters

- fill	Cell background
- stroke	Border colour and thickness
- inset	Internal padding
- radius	Rounded corners, through rect()
- gutter	Space between cells
- align	Horizontal and vertical alignment
- colspan	Merge columns using grid.cell()

=== Example 2.3

#let kpi-card(label, value, change, color: blue) = {
  rect(    width: 100%,    inset: 12pt,
    radius: 5pt,    fill: rgb("#F1F5F9"),
    stroke: 0.5pt + rgb("#D8E0E8"),
  )[    #text(size: 9pt, fill: gray)[#label]

    #v(5pt)

    #text(size: 21pt, weight: "bold", fill: color)[
      #value
    ]

    #v(3pt)

    #text(size: 9pt)[#change]
  ]
}

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 8pt,

  kpi-card("Applications", "42,850", "+12.4%"),
  kpi-card("Offers", "24,560", "+8.6%"),
  kpi-card("Fee Paid", "15,320", "+6.2%"),
  kpi-card("Conversion", "35.8%", "-1.9 pp"),
)


Rules

- Normal document content	\# kpi-card(...)
- Inside \# grid( ... ) arguments	kpi-card(...)
- Inside a code block { ... }	kpi-card(...)
- Inside content brackets [...]	\# kpi-card(...)

Remember: Use \# to enter code mode from content mode. Once you are already in code mode, don't repeat it.
For your university reports, this approach also works with ..range().map() to generate KPI cards dynamically from a dictionary or array of values.


== Rectangles

#rect(width: 20pt)

#rect(width: 100pt, height: 50pt, fill: rgb("#f8e8ee"), stroke: 0.5pt + rgb("#dee0cc"))[This is inside the rectangle]

Rectangles can be used to create visually distinct sections within a grid layout. You can customize the size, color, border, and content of rectangles to suit your design needs.
Units : pt, mm, cm, in, em(relative to font size), ex(relative to x-height), px, % (relative to parent container)

#rect(width: auto, height: auto, fill: rgb("#e8f0f8"))[This rectangle uses relative units based on font size and x-height]

#rect(width: 120pt, height: 5.5em, fill: rgb("#e8f0f8"))[This rectangle uses relative units based on font size and x-height]

#(105em).abs

#pagebreak()

== Measure

it helps determin the layouted size of the content.

#let content1 =[Hello Dhiraj Upadhyaya, How are you !]
#content1 \
#set text(14pt)
#content1


=== Move

Moves content without affecting layout.

#rect(inset: 0pt, height: 15pt,fill: gray)[ This content to be moved 10pt right and 10pt down] 

#rect(inset: 0pt, height: 15pt,fill: green, move(dx: 6pt, dy: 8pt)[ This content which is moved 10pt right and 15pt down - xxx])


== Padding

Adds spacing around the content

#set align(left)
#pad(x: 20pt, y: 0pt, image("aulogo.png", height: 22mm))- Typing speed can be measured in words per minute

#pad(left: 20pt, top: 40pt, bottom: 100pt,right: 10pt, image("auupl.jpeg", height: 22mm))- Typing speed can be measured in words per minute



=== Venn Diagram

Venn2A

#import "@preview/cetz:0.4.2": canvas, draw

#canvas({
  import draw: *

  circle(    (0, 0),    radius: 4,    fill: rgb("#4D8BC9").transparentize(55%),
    stroke: rgb("#3776B7"),  )

  circle(    (2, 0),    radius: 4,    fill: rgb("#E5A455").transparentize(55%),
    stroke: rgb("#CE8731"),
  )

  content((-3, -1), [Academics])
  content((1, 0), [*Student \ Success*])
  content((3, 3), [Analytics])
})

Venn2B

#box(width: 220pt, height: 140pt)[
  #place(dx: 15pt, dy: 10pt)[
    #circle(
      radius: 55pt,
      fill: blue.transparentize(60%),
      stroke: blue,
    )
  ]

  #place(dx: 85pt, dy: 10pt)[
    #circle(
      radius: 55pt,
      fill: orange.transparentize(60%),
      stroke: orange,
    )
  ]
]


Venn3

#import "@preview/cetz:0.4.2": canvas, draw

#canvas({
  import draw: *

  circle(    (-3, 0.7),    radius: 5,    fill: blue.transparentize(65%),    stroke: blue,
  )

  circle(    (5, 0.7),    radius: 5,    fill: orange.transparentize(65%),    stroke: orange,
  )

  circle(    (0, -0.9),    radius: 5,    fill: green.transparentize(65%),    stroke: green,
  )

  content((-5, 2), [Digital \ Learning])
  content((5, 2), [LMS])
  content((0, -5), [Data Analytics])
  content((1, 0.4), [*Student \ Success*])
})

#text(size: 8pt)[This last method is useful for simple diagrams, but CeTZ gives you better control over coordinates, labels, and more complex layouts.
Recommendation: Use CeTZ for your reusable university-report diagrams. You can eventually create a venn-diagram() function that accepts circle labels, colours, and overlap text, then use it in Admissions, LMS, and Institutional Analytics reports.]



== Hide Content

#hide[Dhiraj Kumar, 2026-10-15, "This content is hidden and will not appear in the final output."]

Start Writing here


== Other Exenstions

1. Most useful Typst packages for university reporting
2. How to use these packages in your reports
3. Best practices for integrating these packages into your reports
4. Case studies of successful implementation
Package	Purpose	Application in your reports
CeTZ	Vector diagrams and illustrations	Venn diagrams, process flows, institutional frameworks
Fletcher	Flowcharts and connected diagrams	Admissions funnel, student lifecycle, LMS workflows
Pinit	Positioning annotations and arrows	Annotating charts and highlighting findings
Tablem	Markdown-like table authoring	Simple summary and comparison tables
Tablex	Advanced table layouts	Campus-wise comparisons and complex tables
Showybox	Styled information boxes	Executive insights, recommendations, warnings
Codly	Code block styling	R, Python, SQL training materials
Codelst	Code listing presentation	Technical reports and training handouts
Fontawesome	Icons	KPI cards, section headings, dashboards
Touying	Presentation slides	Academic presentations and management briefings
For your reporting requirements, I would prioritise CeTZ, Fletcher, Showybox, Tablex, and Fontawesome.


=== Importing packages

\# import  @ preview/ cetz:0.5.2 


=== Timeline

#import "@preview/timeliney:0.4.0"

#timeliney.timeline(
  show-grid: true,
  {
    import timeliney: *
      
    headerline(group(([*2023*], 4)), group(([*2024*], 4)))
    headerline(
      group(..range(4).map(n => strong("Q" + str(n + 1)))),
      group(..range(4).map(n => strong("Q" + str(n + 1)))),
    )
  
    taskgroup(
      title: [*Research*],
      content: text(10pt, white)[*John + Julia*],
      style: (stroke: 14pt + black),
      {
        task(
          "Research the market",
          (from: 0, to: 2, content: text(9pt)[John (70% done)]),
          style: (stroke: 13pt + gray),
        )
        task(
          "Conduct user surveys",
          (from: 1, to: 3, content: text(9pt)[Julia (50% done)]),
          style: (stroke: 13pt + gray),
        )
      },
    )

    taskgroup(title: [*Development*], {
      task("Create mock-ups", (2, 3), style: (stroke: 2pt + gray))
      task("Develop application", (3, 5), style: (stroke: 2pt + gray))
      task("QA", (3.5, 6), style: (stroke: 2pt + gray))
    })

    taskgroup(title: [*Marketing*], {
      task("Press demos", (3.5, 7), style: (stroke: 2pt + gray))
      task("Social media advertising", (6, 7.5), style: (stroke: 2pt + gray))
    })

    milestone(
      at: 3.75,
      style: (stroke: (dash: "dashed")),
      align(center, [
        *Conference demo*\
        Dec 2023
      ])
    )

    milestone(
      at: 6.5,
      style: (stroke: (dash: "dashed")),
      align(center, [
        *App store launch*\
        Aug 2024
      ])
    )
  }
)

=== Charts


#import "@preview/lilaq:0.6.0" as lq

#lq.diagram(
  lq.bar(
    (1, 2, 3, 4, 5),
    (10, 20, 15, 30, 25),
  ),
)

#import "@preview/lilaq:0.6.0" as lq

#let campuses = (
  "AUUP", "AUMH", "AUHR",
  "AURJ", "AUMP", "AUCG",
)

#let applications = (
  12500, 9200, 8100,
  6500, 4200, 2350,
)

#lq.diagram(
  width: 14cm,
  height: 7cm,
  title: [Campus-wise Applications],
  ylabel: [Applications],

  xaxis: (
    ticks: campuses.enumerate(),
    subticks: none,
  ),

  lq.bar(
    range(campuses.len()),
    applications,
    fill: rgb("#2878B5"),
  ),
)


=== Fletcher


#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#diagram(cell-size: 15mm, $
	G edge(f, ->) edge("d", pi, ->>) & im(f) \
	G slash ker(f) edge("ur", tilde(f), "hook-->")
$)


=== Glossary

#import "@preview/glossarium:0.5.10": make-glossary, register-glossary, print-glossary, gls, glspl
#show: make-glossary
#let terms1 = ( 
  (
    key: "kuleuven",    short: "KU Leuven",
    long: "Katholieke Universiteit Leuven",
    description: "A university in Belgium.",
  ),
  (
    key: "nirf",    short: "NIRF",
    long: "National Institutional Ranking Framework",
    description: "Indian institutional ranking framework.",
  ),
  (
    key: "au",    short: "AU",
    long: "Amity University",
    description: "A university in India.",
  ),
  (
    key: "lms",    short: "LMS",
    long: "Learning Management System",
    description: "Platform for managing digital learning.",
  ),
  (
    key: "fsr",    short: "FSR",
    long: "Faculty Student Ratio",
    description: "Indicator of faculty availability relative to students.",
  ),
  (
    key: "eda",    short: "EDA",
    long: "Education Data Analytics",
    description: "Institutional data analytics and reporting.",
  ),
  (
    key: "typst",    short: "Typst",
    long: "Typst",
    description: "A modern typesetting system for creating reports.",
  ),
  (
    key: "naac",    short: "NAAC",
    long: "National Assessment and Accreditation Council",
    description: "Indian accreditation body for higher education.",
  ),
  (
    key: "qs",    short: "QS",
    long: "Quacquarelli Symonds",
    description: "Global higher education ranking organization.",
  ),
  (
    key: "hr",    short: "HR",
    long: "Human Resources",
    description: "Department managing personnel and staffing.",
  ),
)


=== Glossary Test


#let terms2= ( 
  (
    key: "du",    short: "Dhiraj Upadhyaya",
    long: "Dhiraj Upadhyaya",
    description: "A person in Belgium.",
  ),
)

#let all-terms = terms1 + terms2

#register-glossary(all-terms)


#print-glossary(  all-terms,  show-all: true,  disable-back-references: false,)


gls("du") 


Our  team uses #gls("lms") platforms to analyze student engagement and performance. The #gls("nirf") rankings consider factors like #gls("fsr") to assess institutional quality.

- \gls("lms")	References the glossary term
- \@lms	Alternative reference syntax
- \@lms:long	Displays the full term
- \@lms:short	Displays the abbreviation
- show-all: true	Prints all registered terms
- show-all: false	Prints only referenced terms
- disable-back-references: true	Hides references back to usage locations

Recommendation: For your university reports, keep the glossary definitions in a separate glossary.typ file. This will allow you to maintain one standard glossary for Admissions, LMS, NIRF, NAAC, QS, and HR reports.
If the corrected example still produces a compilation error rather than an empty glossary, share the exact error message; that would indicate a different issue.

@eda \
@au \
@naac \
@du \
@nirf \
@lms \
@fsr \
@typst \
@du:long \
@du:short \
#gls("du") \


Faculty performance includes #gls("fsr").

Digital learning is monitored through the #gls("lms").

== Abbreviations

#link("https://typst.app/universe/package/abbr")

#import "@preview/abbr:0.3.1"

#show: abbr.show-rule

#abbr.list()
//#abbr.load("example.csv")
//#abbr.load-alt("example_alt.csv", supplement: "from French")
// alternative:
#abbr.make(
  ("AU", "Amity University"),
  ("EDA", "Education Data Analytics"),
  ("LMS", "Learning Management System"),
  ("NIRF", "National Institutional Ranking Framework"),
  ("NAAC", "National Assessment and Accreditation Council"),
  ("QS", "Quacquarelli Symonds"),
  ("HR", "Human Resources"), )

// #abbr.add-alt("TGV","Train à haute vitesse", supplement: "from French")

=== Constrained Equations

The @AU is a university in India. The @EDA team analyzes educational data. The @LMS platform tracks student engagement. The @NIRF rankings assess institutional quality. The @NAAC accredits higher education institutions. The @QS rankings evaluate global universities. The @HR department manages personnel.

#abbr.add("AUUP", "Amity University Uttar Pradesh, India")

@AUUP is a campus of @AU. 

//#abbr.add-alt("AUUP","Amity University Uttar Pradesh, Noida, India", supplement: "from French")

#abbr.config(style: it => text(red, it), space-char: sym.arrow.l.r)

@AUUP 

The @AUUP:pla campus(plural) is located in Noida and has 2 more campus in Greater Noida and Lucknow also.


== Flash Cards

#link("https://typst.app/universe/package/ankify")

#import "@preview/ankify:0.1.0": note, configure

#configure(defaults: (deck: "My Course"))

#note(
  "pythagoras",
  data: (Front: "What is the Pythagorean theorem?", Back: [$a^2 + b^2 = c^2$]),
)

#let definition(label, term, body) = {
  note(label, data: (Front: [Define: #term], Back: body))
  block(inset: 8pt, stroke: 0.5pt)[*Definition (#term).* #body]
}

#definition("def-continuity", "continuity")[
  A function $f$ is continuous at $a$ if $lim_(x -> a) f(x) = f(a)$.
]


=== Tree

#link("https://typst.app/universe/package/arborly")

#import "@preview/arborly:0.3.3": tree


#tree[RBEF
  [C5
    [C5 Campues [Noida HQ]]
  ]
  [C6
    [C6Sir [Chancellor]]
    [Campuses
      [AUCG [AUC]]
      [AUHR [Haryana Campus]]
    ]
  ]
]


== Fit Table

#link("https://typst.app/universe/package/fittable")

#import "@preview/fittable:0.0.1": fit

#let data = (
  [Notebook], [A notebook with a long description], [12.00], [5], [.6],
  [Pen], [A pen with a long description], [1.50], [10],[0.1],
  [Pencil], [A pencil with a long description], [0.75], [20],[0.05],
)

#fit(
  columns: (auto, 5cm, 5em, 5em, 5em),
  table.header([*Item*], [*Description*], [*Price*], [*Quantity*], [*Discount*]),
  ..data,
)

Lays out a table or grid while distributing the available horizontal space among its auto columns. If the content does not fit, the original column specification is used instead.


== Fontawesome

#link("https://typst.app/universe/package/fontawesome")

#import "@preview/fontawesome:0.6.2": *
//#import "lib.typ": *

//#fa-user-alt-6() // Get the v6 unicode and render the icon
//#fa-user-alt-7() // Get the v7 unicode and render the icon
//#fa-user-alt()   // The same as #fa-user-alt-7()

//- text without icon
//- text with icon #fa-icon("chess-queen")
//- text with icon #fa-icon("chess-queen", top-edge: "baseline")



== Calendar

#import "@preview/monthweave:0.1.0": month-calendar

#month-calendar(2028, 2, week-start: 1, week-numbers: true)

#month-calendar(2026, 10, week-start: 1) // Monday first

#month-calendar(2026, 1, week-start: 0) // Sunday first


#let releases = (
  (year: 2026, month: 10, day: 28, label: "Sangathan", marker: "◆"),
  (year: 2026, month: 10, day: 14, label: "Event1", marker: "•"),
  (year: 2026, month: 10, day: 14, label: "Event2", marker: "•"),
  
)

#month-calendar(2026, 10, week-start: 1, events: releases)

#import "@preview/monthweave:0.1.0": year-calendar

#set page(width: 300mm, height: 300mm, margin: 5mm)

#year-calendar(2026, week-start: 1)

#import "@preview/monthweave:0.1.0": blank-calendar

#blank-calendar(2026, 10, week-start: 1)

#import "@preview/monthweave:0.1.0": calendar-theme, month-calendar

#let planning-theme = calendar-theme(
  heading-fill: rgb("DDEAF7"),
  weekend-fill: rgb("F4F7FA"),
  event-color: rgb("8A2635"),
  cell-padding: 12pt,
)

#month-calendar(2026, 10, week-start: 1, theme: planning-theme)

#year-calendar(2026, week-start: 1, theme: planning-theme)


#import "@preview/monthweave:0.1.0": printable-calendar

#printable-calendar(2026, 10, format: "a4-landscape", week-start: 1)

#pagebreak()

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,

  month-calendar(2026, 1, week-start: 1),
  month-calendar(2026, 10, week-start: 1),
)

#import "@preview/monthweave:0.1.0": month-calendar, year-calendar


#let selected-months = (1, 12)

#grid(  columns: 2,  gutter: 12pt,
  ..selected-months.map(
    m => month-calendar(2026, m, week-start: 1)
  ),
)

#pagebreak()

#import "@preview/monthweave:0.1.0": month-calendar

#let academic-months = (
  ..range(7, 13).map(m => (2026, m)),
  ..range(1, 7).map(m => (2027, m)),
)

#align(center)[
  #text(size: 20pt, weight: "bold")[ Amity University (C6) :  Academic Calendar 2026–27  ]
]

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 10pt,

  ..academic-months.map(
    ((year, month)) => month-calendar(      year,      month,      week-start: 1,    )
  ),
)



#let events = (
  (
    date: datetime(year: 2026, month: 7, day: 15),
    title: "Admissions Open",
    color: blue,
  ),
  (
    date: datetime(year: 2026, month: 10, day: 20),
    title: "Faculty Training",
    color: green,
  ),
  (
    date: datetime(year: 2027, month: 1, day: 10),
    title: "Semester Begins",
    color: orange,
  ),
)

#pagebreak()

#import "@preview/monthweave:0.1.0": month-calendar

#let events = (
  (year: 2026, month: 7, day: 15,
   label: "", marker: "🔵"),

  (year: 2026, month: 10, day: 20,
   label: "", marker: "🟢"),

  (year: 2026, month: 12, day: 10,
   label: "", marker: "🔴"),

  (year: 2027, month: 1, day: 10,
   label: "", marker: "🟠"),
)

#let academic-months = (
  ..range(7, 13).map(m => (2026, m)),
  ..range(1, 7).map(m => (2027, m)),
)

#grid(
  columns: 3,
  gutter: 10pt,

  ..academic-months.map(((y, m)) =>
    month-calendar(
      y, m,
      week-start: 1,
      events: events,
    )
  ),
)

== Tables  - Tabut
#link("https://typst.app/universe/package/tabut")


#let supplies = (
  (name: "Notebook", price: 3.49, quantity: 5),
  (name: "Ballpoint Pens", price: 5.99, quantity: 2),
  (name: "Printer Paper", price: 6.99, quantity: 3),
)
#supplies.map(s => s.price * s.quantity).sum()

#import "@preview/tabut:1.0.2": tabut

#tabut(
  supplies, // the source of the data used to generate the table
  ( // column definitions
    (
      header: [Name], // label, takes content.
      func: r => r.name // generates the cell content.
    ), 
    (header: [Price], func: r => r.price), 
    (header: [Quantity], func: r => r.quantity), 
  )
)

funct takes a function which generates content for a given cell corrosponding to the defined column for each record. r is the record, so r => r.name returns the name property of each record in the input data if it has one.

The philosphy of tabut is that the display of data should be simple and clearly defined, therefore each column and it’s content and formatting should be defined within a single clear column defintion. One consequence is you can comment out, remove or move, any column easily, for example:

#tabut(
  supplies,
  (
    (header: [Price], func: r => r.price), // This column is moved to the front
    (header: [Name], func: r => r.name), 
    (header: [Name 2], func: r => r.name), // copied
    // (header: [Quantity], func: r => r.quantity), // removed via comment
  )
)


=== Mind Map

#link("https://typst.app/universe/package/tidymind")

#import "@preview/tidymind:0.3.0": mindmap, node

#set text(font: "Arial")

#mindmap(node([Root],
  node([Branch A], node([A1]), node([A2])),
  node([Branch B]),
))

brew install --cask font-inter


#let switching = node([Network switching],
  node([Circuit switching],
    node([Dedicated channel],
      node([`FDM` splits the frequency band]),
      node([`TDM` splits time into slots]),
    ),
    node([Setup, transfer and teardown]),
    node([Idle time wastes reserved bandwidth], emphasis: "warning"),
  ),
  node([Message switching],
    node([Whole-message store-and-forward], emphasis: "definition"),
    node([No fragmentation]),
  ),
  node([Packet switching],
    node([Statistical multiplexing]),
    node([Modes],
      node([Datagram (connectionless)]),
      node([Virtual circuit], node([`MPLS`, Frame Relay], emphasis: "example")),
    ),
  ),
)

#mindmap(switching, style: "technical", markers: "role", align-levels: true)



=== Acronyms

#link("https://typst.app/universe/package/acrostiche")

#import "@preview/acrostiche:0.7.0": *

#init-acronyms((
  "WTP": ("Wonderful Typst Package","Wonderful Typst Packages"),
))

Acrostiche is a #acr("WTP")! This #acr("WTP") enables easy acronyms manipulation.

Its main features are auto-expansion of the first occurence, global or selective expansion reset #reset-all-acronyms(), implicit or manual plural form support (there may be multiple #acrpl("WTP")), and customizable index printing. Have Fun!


== Icons

#link("https://typst.app/universe/package/adequate-iso-7000")

#import "@preview/adequate-iso-7000:0.1.1": iso-7000

// Basic usage
#iso-7000("0222")

// With size options
#iso-7000("0222", width: 2cm)
#iso-7000("3884", height: 1em)

// Inline in a sentence
Click #iso-7000("0222", height: 1em) to continue.


=== Acronyms

#link("https://typst.app/universe/package/abbrev")

#import "@preview/abbrev:0.2.0": *

#abbrev-def("GPU", "Graphics Processing Unit")

#abbrev("GPU")

#abbrev("GPU", form: "short")

#abbrev("GPU", form: "long")

#abbrev("GPU", form: "full")

#abbrev("GPU", suffix: "s")

#abbrev("GPU", form: "full", suffix: "s")


== Word Count

#import "@preview/wordometer:0.1.6": word-count, total-words
#set text(font: "Arial")

#show: word-count

In this document, there are #total-words words all up.

#word-count(total => [
  The number of words in this block is #total.words
  and there are #total.characters letters.
])

#show: word-count.with(exclude: (heading.where(level: 1), strike))

= This Heading Doesn't Count
== But I do!

In this document #strike[(excluding me)], there are #total-words words all up.

#word-count(total => [
  You can exclude elements by label, too.
  #[That was #total.words, excluding this sentence!] <no-wc>
], exclude: <no-wc>)




=== Code Blocks


#import "@preview/codly:2.0.0" as codly
#show raw.where(block: true): codly.new

```rs
pub fn greeting(name: &str) -> String {
    format!("Hello, {name}!")
}
```

#import "@preview/codly:2.0.0" as codly
#[
  #show: codly.theme("dark")
  #show: codly.set_(padding: 4pt, radius: 5pt)
  #show: codly.number-set_(numbering: "1.")
  #show raw.where(block: true): codly.new
  ```py
  print("styled")
  ```
]
// Outside that scope, code blocks retain native Typst formatting.


=== Glossary

#import "@preview/glossarium:0.5.10": make-glossary, register-glossary, print-glossary, gls, glspl
#show: make-glossary
#let entry-list = (
  (
    key: "kuleuven",
    short: "KU Leuven",
    long: "Katholieke Universiteit Leuven",
    description: "A university in Belgium.",
  ),
  // Add more terms
)
#register-glossary(entry-list)
// Your document body
#print-glossary(
 entry-list
)


== Slides Presentation
#link("https://typst.app/universe/package/touying")

#import "@preview/touying:0.8.0": *
#set text(font: "Arial")

#import themes.simple: *

#show: simple-theme.with(aspect-ratio: "16-9")

= Title

== First Slide

Hello, Touying!

#pause

Hello, Typst!