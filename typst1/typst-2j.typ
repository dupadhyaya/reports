// Align

#set page(height: 300pt)
#set align(center)
Centered Text \
#lorem(100)

#set align(horizon)
Vertically Centered \

#lorem(100)


== Combine Elements
#set page(height: 10in)

Though Left in the beginning.....

#align(right + bottom)[
#lorem(100)
]

== Nested Alignment

#align(center, block[
    #set align(left)
    #lorem(100)
])


== Algnment within the same line

Start #h(1fr) End 

== Parameters

align(alignment, content) -> content

#set page(height: 6cm)
#set text(lang: "en", font: ("Arial", "Apple Color Emoji"))

#align(end + horizon, rect(inset: 12pt)[Dhiraj Upadhyaya \
Director (EDA), \
Amity University, \
Noida, India])

#align(center)[Hi, EDA]

#set page(height: 10cm)
#align(center + bottom)[Dhiraj Upadhyaya ]

#(top + right).x (TR- Dhiraj Upadhyaya)\

#left.x (L- Dhiraj Upadhyaya)\

#left.x (none)\

#right.y (R - Dhiraj Upadhyaya) \

#(bottom + right).x (BR - Dhiraj Upadhyaya)\

#(bottom + center).x (BC - Dhiraj Upadhyaya)\

== Axis

#left.axis() \
#bottom.axis()


== Inv

#top.inv() 

#right.inv() 

#bottom.inv() 

#left.inv() 

#(left + bottom)

#(left + bottom).inv()


#pagebreak()

== Angle

#rotate(170deg)[10 degrees #lorem(10)]

#rotate(8rad)[8 radian #lorem(10)]

== Colors, Customise
#let light-blue = rgb("#E8F4FF")
#let light-green = rgb("#EAF7EA")
#let light-yellow = rgb("#FFF7D6")
#let light-red = rgb("#FDECEC")
#let light-gray = luma(240)

== Block

Block level container. Such a container can be used to group elements together and apply styles to them. Blocks are also the primary building blocks for creating layouts in Typst. Blocks can be nested within each other to create complex structures.

#set page(height: 10in)
#block(fill: luma(231), stroke: 2pt, radius: 5pt, inset: (x: 10pt, y: 10pt))[
    #lorem(100)
]
#block(fill: light-red, stroke: 2pt, radius: 5pt, inset: (x: 10pt, y: 10pt))[
    #lorem(100)
]

#block(fill: blue, stroke: 2pt, radius: 5pt, inset: (x: 10pt, y: 10pt))[
    #lorem(100)
]

block(body: content | none, above: auto | fraction | relative, below: auto | fraction | relative, breakable: bool, clip: bool, fill: color, height: auto | fraction | relative, inset: inset, outset: outset, radius: radius, spacing: auto | fraction | relative, sticky: bool, stroke: stroke, width: auto | relative) -> block

#pagebreak()
#set align(center)
#block( width: 60%, height: 100%, stroke: 3pt,  inset: 8pt, fill: silver)[
     #set text(fill: red, size: 25pt)
       RBEF \ Amity University, \ Noida, India]

#block( fill: rgb("#FDECEC"),  stroke: rgb("#C62828") + 1pt,
  radius: 5pt,   inset: (x: 10pt, y: 10pt),
)[
  Normal text.

  #text(fill: red, size: 14pt)[This text is red.]

  #text(fill: blue, size: 20pt)[This text is blue.]
]

#set page(height: 3in)
the following block will not jump to its own page
#block(breakable: true, fill: light-blue, stroke: 2pt, radius: 5pt, inset: (x: 10pt, y: 10pt))[
    #lorem(1000)
]

#set page(height: 3in)
the following block will jump to its own page
#block(breakable: false, fill: light-blue, stroke: 2pt, radius: 5pt, inset: (x: 10pt, y: 10pt))[
    #lorem(1000)
]


