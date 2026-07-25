#let pas-colbreak() = colbreak()

#let section(title: "", body) = [
  = #title
  #body
]

#let poster(
  title: "",
  authors: (),
  course: "",
  professor: "",
  logo: none,
  body,
) = {
  // page config
  set page(
    width: 75cm,
    height: 100cm,
    margin: (top: 2cm, rest: 1.5cm),
    background: place(
      top + left,
      rect(
        width: 100%,
        height: 17%,
        fill: gradient.linear(rgb("#C9EBFF"), white, angle: 90deg),
      ),
    ),
  )

  // content style
  set text(font: "TeX Gyre Heros", size: 29pt)

  show heading.where(level: 1): it => block(
    width: 100%,
    below: .6em,
    [
      #text(font: "Libre Baskerville", weight: 500, size: 50pt, it.body)
      #v(-0.6em)
      #line(length: 100%, stroke: 2pt)
    ],
  )

  show figure.caption: set text(size: 20pt)

  // header Block
  grid(
    columns: (1fr, auto),
    gutter: 2cm,
    align: (left + horizon, right + bottom),

    [
      #text(font: "Libre Baskerville", size: 64pt, weight: 500, title)
      #v(-0.5em)
      #text(font: "TeX Gyre Heros", size: 30pt)[
        #authors.join(", ") \
        course: #course \
        Prof. #professor
      ]
    ],

    if logo != none {
      image(logo, width: 18cm)
    },
  )

  v(0.2em)
  line(length: 100%, stroke: 2pt)
  v(.2em)

  columns(2, gutter: 50pt, body)
}
