// Typst Functions

// Pag 180 , Linsk

#show link: underline

https://amity.edu

#link("https://amizone.net")[Amizone]

= Section

About Amity <intro>
Amity University, Noida, India is a leading educational institution that offers a wide range of undergraduate and postgraduate programs in various fields, including robotics, automation, and related disciplines. The university is known for its state-of-the-art laboratories, research centers, and collaborations with industry partners to provide students with hands-on experience and exposure to the latest advancements in technology.

== Sub Section

AUHR Campus <auhr-campus> is located in Gurugram, Haryana, India. It offers undergraduate and postgraduate programs in robotics, automation, and related fields. The university has state-of-the-art laboratories, research centers, and collaborations with industry partners to provide students with hands-on experience and exposure to the latest advancements in robotics technology.


=== Sub Sub Section

In Amity group, we have 7 universities in India, including Amity University, Noida, Amity University, Gurgaon, Amity University, Jaipur, Amity University, Lucknow, Amity University, Kolkata, Amity University, Mumbai, and Amity University, Raipur. Each university offers a wide range of undergraduate and postgraduate programs in various fields, including robotics, automation, and related disciplines. The universities are known for their state-of-the-art laboratories, research centers, and collaborations with industry partners to provide students with hands-on experience and exposure to the latest advancements in technology. 

See the #link(<intro>)[Introduction] for more information about Amity University, Noida, India.
You can mail to #link("mailto:eda@c6o.net")[EDA] for any queries related to the university or its programs.

you visit section #link(<auhr-campus>)[AUHR Campus] for more details about this campus.

#link((page: 1, x: 0pt, y: 0pt))[Goto for Page 1]


== Enumerate

=== Automatically Numbered List

+ AUCG
+ AUHR
+ AUKA
+ AUMH

=== Manuall Numbered
1. AUCG
2. AUHR
3. AUKA
4. AUMH

=== Multiple Lines
+ This enumeration item has multiple lines. The second line is indented to align with the first line.
+ This enumeration item also has multiple lines. The second line is indented to align with the first line.

=== Function Call
#enum([1, 2, 3, 4])

#enum[First][Second][Third][Fourth]

#enum[1st][2nd][3rd][4th]

#set enum(numbering: "a")
+ I. First
+ II. Second
+ III. Third

#set enum(tight: false, numbering: "i")
#enum(
    enum.item(1)[First],
    enum.item(2)[Second],
    enum.item(3)[Third],
)
#v(10pt)
#line(length: 100%)
#enum(
    enum.item(1)[First],
    enum.item(2)[Second],
    enum.item(3)[Third],
)
#line(length: 100%)

#enum( start: 3, [Skipping to 3 : One], [Second], [Third])
#line(length: 100%)
#v(10pt)

#set enum(tight: true, numbering: "1.a", full: true)
+ Cook
    + Heat water
    + Add pasta
+ Serve


#set enum(reversed: true)

+ First
+ Second
+ Third

#line(length: 100%)

#set enum(number-align: start + top)
Here are some powers of two:
1. One
2. Two
3. Four
4. Eight

#line(length: 100%)

#set enum(reversed: false)

#for phase in ("Low", "Medium", "High", "Dhiraj"
) { [+ #phase]}

#line(length: 90%)

#outline()

#line(length: 90%)

#outline(
    title: [List of Figures],
    target: figure.where(kind: image)
)

#outline(
    title: [List of Tables],
    target: figure.where(kind: table)
)


#outline(
    title: [List of Figures and Tables],
    target: figure.where(kind: figure)
)


// create table
#table(
  columns: (auto, auto, auto),
  inset: 5pt,
  stroke: 0.5pt,

  [*Campus*], [*Forms*], [*Fees*],
  [AUUP], [12,450], [3,820],
  [AUHR], [5,620], [1,740],
  [AURJ], [4,310], [1,290],
)




#figure(
  kind: table,
  caption: [Campus-wise Admissions],
  table(
    columns: (auto, auto, auto),
    inset: 5pt,

    [*Campus*], [*Forms*], [*Fees*],
    [AUUP], [12,450], [3,820],
    [AUHR], [5,620], [1,740],
  )
) <tbl-admissions>

#line(length: 100%)

= Outline

#show outline.entry.where(level: 1): set block(above: 1.5em)
#outline(depth: 4, title: [Outline of RBEF])
#line(length: 100%)

== RBEF

=== C6

==== AUHR

===== ASET

====== BTECH

======= CSE

=== C5

==== AUUP

==== ASET

====== BTECH

======= DS & AI

#line(length: 100%)

= Ouline- Tables

#outline(
    title: [List of Tables],
    target: figure.where(kind: table),)

#set outline.entry(fill: line(length: 40%))

#figure(table(
  columns: (auto, auto, auto),
  inset: 5pt,  stroke: 0.5pt,
  [*Campus*], [*UG*], [*PG*],
  [AUUP], [12,450], [3,820],
  [AUHR], [5,620], [1,740],
  [AURJ], [4,310], [1,290],
), caption: [Student Enrollment by Campus],
) <tbl-enrollment>

#pagebreak()

== Indentation

How to indent
#set par(first-line-indent: 1em, spacing: .65em, justify: true)

#lorem(100)

#set par(leading: 1em, spacing: 2cm, justify: true, linebreaks: "simple", hanging-indent: 1em, first-line-indent: 3pt)
#lorem(100)

#pagebreak()

#set page(width: 500pt, height: 297pt, margin: 1in)
#set par(leading: 1em, first-line-indent: 0em, hanging-indent: 0em)

Dhiraj Upadhyaya \
EDA, C6O, \ Amity University, \ Noida, India

#set par(first-line-indent: (amount: 1.5em, all: false))

Dhiraj Upadhyaya \
EDA, C6O, \ Amity University, \ Noida, India

Swati Bajaj \
LMS, C6O, \ Amity University, \ Noida, India

#set par.line(numbering: "1")
#lorem(10)
#lorem(20)
#lorem(15)

#set par.line(numbering: none)
#lorem(10)
#lorem(20)
#lorem(15)

#set par.line(numbering: "I", number-align: right, numbering-scope: "page")
#lorem(10)
#lorem(20)
#lorem(15)

#set par.line(numbering: "1", number-margin: right)
#lorem(10)
#lorem(20)
#parbreak()

#lorem(15)
#set par.line(numbering: none)

#set quote(block: true)
#show quote: set block(above: 105em, below: 150em,  stroke: 0.5pt)
#quote[This is quoted text #lorem(15)]


#line(length: 100%)

#set page(numbering: "1")
#set heading(numbering: "1")
#set math.equation(numbering: "(1)")


= Introduction2 <intro2>

This is short introduction 2 about AU
pl see the results of the qtr @results2
See the formula given at

= Results <results2>

This is short results 2 about AU. pl read the introduction at @intro2


== Performance <perf2>

This is performance of universities in Strategic Plan 2025

T(n) = O(2^n)

= Beginning <beginning>

In @beginning we prove @pythagoras theorem. The proof is given in @pythagoras
$ a^2 + b^2 = c^2 $ <pythagoras>

#line(length: 100%)

#set table.hline(stroke: .6pt)
#table(
    stroke: none,
    columns: (auto, 1fr),
    [09:00 AM], [#lorem(5)],
    [09:30 AM], [#lorem(5)],
    table.hline(start: 1),
    [10:00 AM], [#lorem(5)],
    [10:30 AM], [#lorem(5)],
    [11:00 AM], [#lorem(5)],
    table.hline(start: 1),
    [11:30 AM], [#lorem(5)],
    [12:00 PM], [#lorem(5)],
    [12:30 PM], [#lorem(5)],
    table.hline(),
)

This is #highlight[important]

This is #highlight(fill: red, stroke: fuchsia)[very important person : Dhiraj Upadhyaya]

A long #highlight(extent: 4pt, radius: 5pt)[ EDA, C6O]

#let jb = linebreak(justify: true)

I have manually tuned the #jb Line breaks in this paragraph #jb to make it look good. The line breaks are not automatic, but they are manually inserted using the #jb function. This is useful when you want to have more control over the layout of your text and ensure that it looks exactly how you want it to.

#lower("ABC")

#lower[*My Text*]

#upper[Dhiraj Upadhyaya] is a great person. He is a very talented and hardworking individual who has made significant contributions to the field of technology. His work has been recognized by many organizations and he has received numerous awards for his achievements.

#overline[This is overlined text]
#underline[This is underlined text]

#set underline(extent: 50pt)
#underline[This is underlined text with extent of 4pt]

#set overline(stroke: aqua + 5pt)
#overline[This is overlined text with stroke of aqua + 5pt]

#set overline(background: true, stroke: 10pt + aqua)
#overline[This is overlined text with stroke of aqua]


== Raw Text

Adding  rbx to rcx gives the result in rax. The instruction is used to perform multiplication of two registers and store the result in a third register. The syntax for the instruction is as follows:

```py
def python():
    return 5 + 6
```


#set raw(tab-size: 8)
```tsv
Year Month Day
2000 2 3
2010 1 5
```

#set overline(stroke: aqua + 5pt)

== set
- page size, margins, font, font size, paragraph spacing, numbering, alignment
- set Changes Properties
    - Use set to change default properties of an element.
- examples
    - \# set page(paper: "a4", margin: 1in)
    - \# set heading(numbering: "1.1")
    - \# set par(justify: true)
- understand as : From now on, use these settings for this kind of thing.

== show
- custom layouts, replacing text, restyling headings, changing how figures/tables/lists appear

- show Changes Rendering
    - Use show to change how something is displayed or transformed.
- \# show heading: it => [  \# text(fill: blue, weight: "bold")[\# it.body]]
- This replaces every occurrence of Typst with TYPST.
    - \# show "Typst": [TYPST]



#smallcaps(all: false)[DHIRAJ upadhYayA] is from office of #smallcaps(all: true)[EDA, C6O] at #smallcaps(all: true)[Amity University, Noida, India]

// page 240

"This is in quote"

#set text(fill: red, size: 14pt, weight: "bold")
Dhiraj Upadhyaya

EDA
#set smartquote(double: true, alternative: true, quotes: "()")
"DhirajUpadhyaya"; "AMity University, Noida, India"

EDA, C6O, Amity University, Noida, India

#set text(fill: black, size: 11pt, weight: "regular")
This is a 'smart quote' example. The double quotes are automatically converted to typographically correct quotation marks.


== Strike
This is #strike[Strikethrough] text. The strikethrough effect is applied to the text, indicating that it has been deleted or is no longer relevant. Strikethrough can be used for various purposes, such as indicating completed tasks, showing changes in a document, or emphasizing certain points.

this is #strike(stroke: 2pt + red)[Strikethrough] text. 

This is #strike(offset: -10.5pt, stroke: 2pt + red)[Strikethrough on top] text.

This #strike(extent: -10pt, stroke: 5pt + blue, background: true)[Strikethrough on bottom] text.

== sub element

Revenue#sub[yearly]

H#sub(baseline: 10pt, size: 1pt)[2]O

N#sub(typographic: false, size: 1pt)[2]O \

N#sub(typographic: true, baseline: auto, size: 10pt)[2]O \

N#sub(typographic: true, size: 1pt)[2]O \

x#super[2] + y#super[2] = z#super[2]


== text
#set text(size: 19pt)
Dhiraj Upadhyaya

#emph(text(blue)[ Education data analytics, C6O, Amity University, Noida, India])

#set text(size: 10pt, font: ("Arial", "Apple Color Emoji"))
The quick brown fox jumps over the lazy dog. I love Typst 🚀

#set text(weight: "bold")
The quick brown fox jumps over the lazy dog. I love Typst 🚀

#show text: set text(fill: blue, weight: "light", stretch: 10%)
Dhiraj Upadhyaya \

#show text: set text(fill: green, weight: "bold", stretch: 100%)

Dhiraj Upadhyaya \
#text(1.5em)[Dhiraj Upadhyaya]  \
#text(2em)[Dhiraj Upadhyaya]

#show text: set text(size: 10pt, fill: black, weight: "regular", stretch: 100%)

The quick brown fox jumps over the lazy dog. I love Typst 

#text(tracking: 2.5pt)[Dhiraj Upadhyaya]

#text(spacing: 1200%)[Dhiraj Upadhyaya]

Dhiraj#h(10pt)#text(baseline: 5pt, spacing: 100%, tracking: 3pt)[Upadhyaya]#h(15pt)#text(baseline: -5pt)[EDA, C6O, Amity University]

#rect(inset: 5pt)[
  #text(size: 20pt)[Dhiraj Upadhyaya]
]
#rect(inset: 10pt, fill: yellow)[
#text(size: 20pt)[EDA, C6O, Amity University, Noida, India]
]

//image

#image("iflag.webp", width: 100pt, height: 60pt)

#rect(inset: 20pt, fill: yellow)[
#image("iflag.webp", width: 100pt, height: 50%) 
#text(size: 20pt)[RBEF, Amity University, Noida, India]
]

#image("au.jpg", width: 100pt, height: 50pt) \


