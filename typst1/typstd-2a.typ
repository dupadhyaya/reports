
// My practise on typst

#set page(paper: "a4", margin: 1cm)
#set text(font: "Times New Roman", size: 12pt)
#set par(justify: true, leading: .52em)

#place( top + center, float: true, scope: "parent", clearance: 2em,  rect(fill: yellow),) [#lorem(30)]

= Background
In the case of glaciers, fluid dynamics principles can be used to understand how the movement and behaviour of the ice is influenced by factors such as temperature, pressure, and the presence of other fluids (such aswater).

+ Factors
    - Climate
    - Topography
    - Geology

#align(center)[
  #image("du1.jpg", width: 10cm)

  #v(0.5em)

  [*Dhiraj Upadhyaya* is working in Amity University, Noida]
]

#set heading(numbering: "1.1")
#show heading: set text( size: 16pt, weight: "bold",)

= Introduction
He is a PhD student in the field of Data Science and Analytics. He has a keen interest in exploring the applications of data science in various domains, including healthcare, finance, and social sciences. His research focuses on developing innovative algorithms and models to extract meaningful insights from complex datasets.

#show heading: it => smallcaps(it)

== BACKGROUND
He has done B.Sc., B.Tech. , M.Tech. and currently pursuing PhD in Data Science and Analytics. He has published several research papers in reputed journals and conferences, and has also presented his work at various international forums. His expertise lies in machine learning, deep learning, and statistical analysis, and he is passionate about using these techniques to solve real-world problems.

== Tools
#lorem(5) - 5 words text\
He has working in various tools and technologies, including Python, R, SQL, and Tableau. He is also proficient in using cloud computing platforms such as AWS and Azure for data storage and processing. In addition to his technical skills, he has strong communication and collaboration abilities, which enable him to work effectively in interdisciplinary teams.

== Defence Life - (Placeholder text- 30 words)
#lorem(30) 

- lorem function to generate some placeholder text. This function takes a number as an argument and generates that many words of Lorem Ipsum text.


#show "AU": name => box[ #box(image( "aulogo.png",
 height: 0.7em, )) #name]

This report is embedded in the AU project. AU is a
project of the RBEF.

//#show title: set text(size: 20pt, weight: 10)
//#show title: set align(center)

#title[ Quarto Report Writing by Dhiraj Upadhyaya]

#grid(columns: (1fr, 1fr),
align(center)[ Dhiraj Upadhyaya \ Director LMS \  #link("mailto:cdc@akscds.amity.edu")],
align(center)[ Dhiraj Upadhyaya \ Director EDA \ #link("mailto:eda@c6o.net")]
)

#let filler="The quick brown fox jumps over the lazy dog. "

#align(center)[
    #set par(justify: false)
    *Abstract* \
    #lorem(50) - 50 words text
]

#set document(title: [Data Science Quarto Report Writing by Dhiraj Upadhyaya])

/*
#set document(title: "Data ScienceQuarto Report Writing by Dhiraj Upadhyaya", author: "Dhiraj Upadhyaya", date: datetime.today(),) : comment at present*/

#set page( header: align( right + horizon, context document.title,),)

== Place Holder
If we hadn’t used place here, the square would be in its own line, but here it overlaps the few lines of text
following it. Likewise, that text acts as if there was no square. To change this behavior, we can pass the
argument float: true to ensure that the space taken up by the placed item at the top or bottom of the
page is not occupied by any other content.


#show heading.where(level: 2): set text( size: 11pt,
 weight: "regular", style: "italic",)


= Heading 2.1
Heading 2
#filler

== Heading 2.1.1

=== Heading 2.1.1.1


== Canoncal Pronunciation of Typst

#let ipa = text( style: "italic",)[/taɪpst/]

The canonical way to pronounce Typst is #ipa.
#table( columns: (1fr, 1fr), 
[Name], [Typst], 
[Pronunciation], [#ipa], 
[Description], [A modern typesetting system])

== Toy Template
In Typst, templates are functions in which you can wrap your whole document. To learn how to do that, let’s first review how to write your very own functions. They can do anything you want them to, so why not go a
bit crazy?

#let amazed(term) = box[✨ #term ✨]
You are #amazed[Intelligent, Smart, and Beautiful]!

#let amazed(term, color: blue) = {
 text(color, box[✨ #term ✨])
}
You are #amazed[beautiful]!
I am #amazed(color: purple)[amazed]!

#show: amazed
I choose to focus on the good in my life and let go of any
negative thoughts or beliefs.In fact, I am amazing!

== Embedding Set and Show Rules

#let template(doc) = [ #set text(font: "Arial")
 #show "something cool": [Typst]
 #doc ]

#[  #show: template
  I am learning something cool today. Here something cool will be replaced with Typst word.   It's going great so far! \
]

\

Whenever Typst sees the exact text "something cool",
replace it with "Typst".
This paragraph is outside the show template.
I can write something cool here and it will not be replaced.

\

== Next topic

How to use Typst to create a report with a title, author, and date. We will also learn how to add sections, subsections, and paragraphs to our report. Finally, we will learn how to add images and tables to our report.
