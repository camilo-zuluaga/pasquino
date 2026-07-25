#let presets = (
  "blue": gradient.linear(rgb("#C9EBFF"), white, angle: 90deg),
  "green": gradient.linear(rgb("#A3D9A3"), white, angle: 90deg),
  "red": gradient.linear(rgb("#D9A3A3"), white, angle: 90deg),
)

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
  theme: "blue",
  body,
) = {
  let header-bg = if type(theme) == str {
    presets.at(theme, default: presets.at("blue"))
  } else {
    theme
  }

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
        fill: header-bg,
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
        Course: #course \
        Prof. #professor
      ]
    ],

    if logo != none {
      if type(logo) == str {
        image(logo, width: 18cm)
      } else {
        logo
      }
    },
  )

  v(0.2em)
  line(length: 100%, stroke: 2pt)
  v(.2em)

  columns(2, gutter: 50pt, body)
}
