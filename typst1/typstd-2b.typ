
Inline math $x^2$ 

Block-level math $ x^2 $ Math3.8

Bottom attachment $x_1$ attach3.8.10

Top attachment $x^2$ attach3.8.10

Fraction $1 + (a+b)/5$ frac3.8.16

Line break $x \ y$ linebreak3.7.2

Alignment point $x &= 2 \ &= 3$ Math3.8

//Variable access $#x$, $pi$ Math3.8

Field access $arrow.r.long$ Scripting3.3.6

Implied multiplication $x y$ Math3.8

Symbol shorthand $->$, $!=$ Symbols3.9.1

Text/string in math $a "is natural"$ Math3.8

Math function call $floor(x)$ Math3.8

Code expression $#rect(width: 1cm)$ Scripting3.3.1

Character escape $x\^2$ Below3.1.6

Comment $/* comment */$ Below3.1

None
{ let x = 1; x + 2, 1 + 2}
x

x.flatten()

(1 + 2)

[*Hello*]

#let values = (1, 7, 4, -3, 2)
#values.at(3) \

// Comments
We show with $p < 0.05$
that the difference is significant.

== Escape Sequence
I got an ice cream for \Rs1.50! \u{1f600} 

== Set Rules

//#set heading(numbering: "I.")
#set text( font: "New Computer Modern")

=== Introduction
With set rules, you can style your document.

== List

This list is affected: #[ #set list(marker: [--])
 - Dash]
This one is not:
- Bullet

== Conditional Rules

#let task(body, critical: false) = {
        set text(red) if critical
            [- #body]}

#task(critical: true)[Food today?]

#task(critical: false)[Work deadline]

#show heading: set text(navy)
= This is navy-blue
But this stays black.

== Headings

#set heading(numbering: "(I)")
#show heading: set align(center)
#show heading: set text(font: "Arial")
#show heading: it => block[ 
    \~
    #emph(it.body) 
    #counter(heading).display()
    \~
]

=== Dragon
With a base health of 15, the dragon is the most powerful creature.
== Manticore
While less powerful than the dragon, the manticore gets extra style points.
Like set rules, show rules are in effect until the end of the current block or file.

Instead of a function, the right-hand side of a show rule can also take a literal string or content block that should be directly substituted for the element. And apart from a function, the left-hand side of a show rule can also take a number of other selectors that define what to apply the transformation to:
- Everything: show: rest => ..
Transform everything after the show rule. This is useful to apply a more complex layout to your whole
document without wrapping everything in a giant function call.
- Text: show "Text": ..
Style, transform or replace text


#show "Project": smallcaps
#show "badly": "great"
We started Project in 2019 and are still working on it. Project is progressing badly.

#counter(heading).update(1)

#set heading(numbering: "1.1")
#show heading: set align(left)
#show heading: it => block[
    #emph(it.body)
    #h(1em)
    #counter(heading).display()
  ]



== Impressions

#emph[Hello] \
#emoji.face \
#"hello".len()


#let reset_headings() = counter(heading).update(6)
#reset_headings()

== Blocks

#{
 let a = [from]
 let b = [*world*]
 [hello ]
 a + [ the ] + b
}

== Binding

#let name = "Typst"
This is #name's documentation.
It explains #name.

#let my-add(x, y) = x + y
Sum is #my-add(2, 3).

=== Eg2

#let (x, y) = (1, 2)
The coordinates are #x, #y.

#let (a, c, d, b) = (1, 2, 3, 4)

The first element is #a. The last element is #b, and the c element is #c.

#let books = ( Shakespeare: "Hamlet", Homer: "The Odyssey", Austen: "Persuasion",)

#let (Austen,) = books
Austen wrote #Austen.

#let (Homer: h) = books
Homer wrote #h.

#let (Homer, ..other) = books

#for (author, title) in other [
 #author wrote #title.
]

You can use the underscore to discard elements in a destructuring pattern:
#let (_, y, _) = (1, 2, 3)
The y coordinate is #y.
