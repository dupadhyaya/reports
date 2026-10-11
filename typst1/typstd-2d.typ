// Comment in typst2d.typst

#let au =[Amity University]

RBEF is non profit organization that provides education and training in the field of robotics and automation. It aims to promote research, development, and innovation in robotics technology. Its universities are name as #au

#let auhr = text(style: "italic", fill: red)[Amity University Haryana]

#auhr is located in Gurugram, Haryana, India. It offers undergraduate and postgraduate programs in robotics, automation, and related fields. The university has state-of-the-art laboratories, research centers, and collaborations with industry partners to provide students with hands-on experience and exposure to the latest advancements in robotics technology.

#let blind-text = text(weight: "bold", fill: blue)[_Lorem ipsum_]

#blind-text is a placeholder text commonly used in the publishing and graphic design industry. It is used to fill a space on a page and give an impression of how the final content will look. The text is derived from a Latin passage and has been used since the 1500s. It is often used in mockups, templates, and design drafts to demonstrate the visual layout of a document or webpage without distracting from the overall design with meaningful content. it is use by 

== : `#lorem(10)`
\#\lorem(10) 

#lorem(1)

#strong(lorem(10))  is a function that generates 10 paragraphs of Lorem Ipsum text. It is commonly used in design and publishing to create placeholder content for testing layouts and visual designs. The generated text can be used to fill spaces in documents, websites, or applications to give an impression of how the final content will look without using meaningful text.

#text(weight: "bold")[#lorem(10)]. 

#strong(emph(lorem(10)))

== Emoticons

checkmark #sym.checkmark 

crossmarks #sym.crossmark

Warning #sym.earth

Circle - #sym.circle

#sym

Paste the unicode for the above emoticons in your document to display them. For example, to display a checkmark, use `#sym.checkmark`. Similarly, use `#sym.crossmark` for a cross mark, `#sym.earth` for a warning symbol, and `#sym.circle` for a circle symbol.

✓ Completed
✗ Not Completed
★ Important
⚠ Warning
→ Next
● Active
○ Inactive
◆ Section

=== Library import


== Toy Template

#let amazed(term) = box(stroke: 1pt)[★#term★]

You are #amazed[beautiful] by the #amazed[awesome] work of #amazed[typst].


#let amazed2(term, color: blue, size: 14pt) = { text(fill: color, size: size, box[★#term★])}

#amazed2[dhiraj1]

#amazed2(color: red)[dhiraj2]

#amazed2(color: green, size: 50pt)[dhiraj3]


You are #amazed2[dhiraj] by the #amazed2[awesome] work of #amazed2[typst].

#amazed2(size: 5pt)[Upadhyaya]

#let amazed3(term) = box(stroke: 0.7pt + blue,  radius: 3pt,  inset: (x: 5pt, y: 2pt),)[★#term★]

You are #amazed3[Amazing]. 


#let amazed4(term, color: blue, size: 14pt) = box[
  #text(fill: color, size: size)[★#term★]
]

#amazed4[Dr Aseem Chauhan]

=== Everything

- \#\let creates/defines something—a variable or function

#let amazed5(body) = {  text(fill: blue, size: 14pt, body)}
`#let amazed5(body) = {  text(fill: blue, size: 14pt, body)}`

#amazed5[Hello Typst]

- \#\set, on the other hand, changes the default properties of an existing element:
#set text(  fill: blue,  size: 14pt,)
`#set text(  fill: blue,  size: 14pt,)`

Here you don't need amazed5 at all. All subsequent text in the current scope gets those text settings.

- \#\show, which displays the value of a variable or function in the output. transform content using a rule/function

//#show: amazed5
// #lorem(10) 

#[
    #show: amazed5] m
    This text uses Amazed5 template  
    ]

#set text(  fill: black,  size: 14pt,)
Back to normal

Notes

- set = configure → “Make text 14pt.”

- let = define → “Create something called amazed4.”

- show = transform/style → “Whenever this content appears, render it this way.”

- For your Quarto/Typst work, you'll use \#\set heavily for things like page, text, heading, par, and table defaults.
